#include "main.h"

#define Node 10000
#define SIZE_XNEAR 1000


static int32_t Cal_Disthw( Node_RRT_Poshw &x_A, Node_Randhw &x_B )
{
	int32_t D = 0;
	Point_2hw A( x_A.Position.x, x_A.Position.y );
	Point_2hw B( x_B.Position.x, x_B.Position.y );
	D=fp_sqrtt(A.squared_distance( B ));
	return D;
}



static int32_t Cal_Squared_Disthw( Node_Randhw &A_A, Node_RRT_Poshw &B_B )
{
	int32_t D = 0;
	Point_2hw A( A_A.Position.x, A_A.Position.y );
	Point_2hw B( B_B.Position.x, B_B.Position.y );
	D = A.squared_distance( B );

	return D;
}

static int32_t Cal_Squared_Disthw( Node_RRT_Poshw &A_A, Node_RRT_Poshw &B_B )
{
	int32_t D = 0;
	Point_2hw A( A_A.Position.x, A_A.Position.y );
	Point_2hw B( B_B.Position.x, B_B.Position.y );
	D = A.squared_distance( B );
	return D;
}
static Node_RRT_Poshw A_StreamReaderhw( Node_RRT_Poshw &x_nearest, Node_Randhw &x_rand ,int i)
{
	Node_RRT_Poshw tem;
	int32_t aux = Cal_Disthw( x_nearest, x_rand );
	int32_t rad = FloatToFixed<16>(1);
	int32_t t =fp_div(rad,aux);

	bool aux_rad;

	aux_rad=1 + ((aux-rad) >> 31);

	tem.Position.x = ((!aux_rad)*x_rand.Position.x)+ (aux_rad*((fp_mult(( x_rand.Position.x - x_nearest.Position.x ),t)) +
			x_nearest.Position.x));
	tem.Position.y = ((!aux_rad)*x_rand.Position.y)+ (aux_rad*((fp_mult(( x_rand.Position.y - x_nearest.Position.y),t))+
			x_nearest.Position.y));

	return tem;
}

static bool Collision_detectedhw( int32_t &x, int32_t &y, int32_t Squared_R_Robot, Segment_3hw Edges[MAX_EDGES],int nn)
{
	int32_t ff;
	//bool Bool = false;
	bool Bool[MAX_EDGES];
	for (int i=0;i<MAX_EDGES;i++)
	{
		int32_t cc=Edges[i].squared_distance( x,y,nn,i) ;

		ff=cc -Squared_R_Robot;
		Bool[i]=1 + (ff >> 31);

	}
	return !(Bool[0]&Bool[1]&Bool[2]&Bool[3]);
}

static bool Obstacle_Freehw( Position_Holonomic_hw &A, Position_Holonomic_hw &B, int32_t Squared_R_Robot,
		Segment_3hw Edges[MAX_EDGES], int w )
{
	int N = 5;
	bool Bool[6];

	Position_Holonomic_hw Tem_Positon;
	int32_t dy,dx;

	int32_t Delta_x = fp_div((A.x - B.x),FloatToFixed<16>(N));
	int32_t Delta_y = fp_div((A.y - B.y),FloatToFixed<16>(N));

	for( int i = 0; i <= N; i++)
	{
		dx=fp_mult(Delta_x,FloatToFixed<16>(i));
		dy=fp_mult(Delta_y,FloatToFixed<16>(i));

		Tem_Positon.x = dx+ B.x;
		Tem_Positon.y = dy+ B.y;

		Bool[i]=!(Collision_detectedhw( Tem_Positon.x, Tem_Positon.y, Squared_R_Robot, Edges ,w));

	}
	return  (Bool[0]&Bool[1]&Bool[2]&Bool[3]&Bool[4]&Bool[5]);
}

static void Nearhw(    int X_near[SIZE_XNEAR], Node_RRT_Poshw RRT_Star_Pos[Node], Node_RRT_Poshw &x_new,
		int32_t Squared_r_n,  int N ,  int &X_near_count)
{
	X_near_count=0;
	int32_t csd;
	bool b;

	for( int i=0; i<N; i++ )
	{

		if( Cal_Squared_Disthw( x_new, RRT_Star_Pos[i] ) < Squared_r_n )
		{
			X_near[X_near_count]= RRT_Star_Pos[i ].Location_List;
			X_near_count++;
		}
	}
}
static int32_t Costhw( Position_Holonomic_hw &A, Position_Holonomic_hw &B )
{
	//Fucion de costo dependiente de la distancia
	int32_t Dist;

	int32_t Dist_sqr=fp_mult((A.x - B.x),(A.x - B.x))+ fp_mult((A.y - B.y),(A.y - B.y));

	Dist=fp_sqrtt(Dist_sqr);
	return Dist;

}


bool rrt(hls::stream<axis_data> &dataInStream,
		float xrandx,
		float xrandy,
		int N,
		//short int choose,
		float oup[5],
		float Squared_r_n,
		float Squared_R_Robot,
		hls::stream<axiso_data> &XNearStream
)


{


#pragma HLS INTERFACE axis register both port=dataInStream
#pragma HLS INTERFACE s_axilite port=xrandx bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=xrandy bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=N bundle=CTRL_BUS
	//#pragma HLS INTERFACE s_axilite port=choose bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=oup bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=Squared_r_n bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=Squared_R_Robot bundle=CTRL_BUS

#pragma HLS INTERFACE axis register both port=XNearStream
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS



	//#pragma HLS INLINE off
	int32_t A;
	int32_t B;

	axis_data input_stream;
	axiso_data output_stream;
	int x_near[SIZE_XNEAR];

	Node_Pt node_pt; //union of point struct and int64_t register

	Segment_3hw Edges[MAX_EDGES];
	Edges[0].Source=Point_2hw(FloatToFixed<16>(-10),FloatToFixed<16>(10));
	Edges[0].Target=Point_2hw(FloatToFixed<16>(10),FloatToFixed<16>(10));

	Edges[1].Source=Point_2hw(FloatToFixed<16>(10),FloatToFixed<16>(10));
	Edges[1].Target=Point_2hw(FloatToFixed<16>(10),FloatToFixed<16>(-10));

	Edges[2].Source=Point_2hw(FloatToFixed<16>(10),FloatToFixed<16>(-10));
	Edges[2].Target=Point_2hw(FloatToFixed<16>(-10),FloatToFixed<16>(-10));

	Edges[3].Source=Point_2hw(FloatToFixed<16>(-10),FloatToFixed<16>(-10));
	Edges[3].Target=Point_2hw(FloatToFixed<16>(-10),FloatToFixed<16>(10));

	for(int i=0;i<4;i++)
	{
		A = ( Edges[i].Target.y() - Edges[i].Source.y() );
		B = ( Edges[i].Target.x() - Edges[i].Source.x() );
		Edges[i].AABB = fp_mult(A,A) + fp_mult(B,B);
	}


	//environment 3
	/*
	Segment_3hw Edges[MAX_EDGES];
	Edges[0].Source=Point_2hw(-1310720,1310720);
	Edges[0].Target=Point_2hw(1310720,1310720);
	Edges[0].AABB=104857600;
	Edges[1].Source=Point_2hw(1310720,1310720);
	Edges[1].Target=Point_2hw(1310720,-1310720);
	Edges[1].AABB=104857600;
	Edges[2].Source=Point_2hw(1310720,-1310720);
	Edges[2].Target=Point_2hw(-1310720,-1310720);
	Edges[2].AABB=104857600;
	Edges[3].Source=Point_2hw(-1310720,-1310720);
	Edges[3].Target=Point_2hw(-1310720,1310720);
	Edges[3].AABB=104857600;
	Edges[4].Source=Point_2hw(-262144,262144);
	Edges[4].Target=Point_2hw(0,65536);
	Edges[4].AABB=1638400;
	Edges[5].Source=Point_2hw(0,65536);
	Edges[5].Target=Point_2hw(262144,262144);
	Edges[5].AABB=1638400;
	Edges[6].Source=Point_2hw(262144,262144);
	Edges[6].Target=Point_2hw(65536,0);
	Edges[6].AABB=1638400;
	Edges[7].Source=Point_2hw(65536,0);
	Edges[7].Target=Point_2hw(262144,-262144);
	Edges[7].AABB=1638400;
	Edges[8].Source=Point_2hw(262144,-262144);
	Edges[8].Target=Point_2hw(0,-65536);
	Edges[8].AABB=1638400;
	Edges[9].Source=Point_2hw(0,-65536);
	Edges[9].Target=Point_2hw(-262144,-262144);
	Edges[9].AABB=1638400;
	Edges[10].Source=Point_2hw(-262144,-262144);
	Edges[10].Target=Point_2hw(-65536,0);
	Edges[10].AABB=1638400;
	Edges[11].Source=Point_2hw(-65536,0);
	Edges[11].Target=Point_2hw(-262144,262144);
	Edges[11].AABB=1638400;
	Edges[12].Source=Point_2hw(-1245184,0);
	Edges[12].Target=Point_2hw(-851968,196608);
	Edges[12].AABB=2949120;
	Edges[13].Source=Point_2hw(-851968,196608);
	Edges[13].Target=Point_2hw(-458752,0);
	Edges[13].AABB=2949120;
	Edges[14].Source=Point_2hw(-458752,0);
	Edges[14].Target=Point_2hw(-851968,-196608);
	Edges[14].AABB=2949120;
	Edges[15].Source=Point_2hw(-851968,-196608);
	Edges[15].Target=Point_2hw(-1245184,0);
	Edges[15].AABB=2949120;
	Edges[16].Source=Point_2hw(458752,0);
	Edges[16].Target=Point_2hw(851968,196608);
	Edges[16].AABB=2949120;
	Edges[17].Source=Point_2hw(851968,196608);
	Edges[17].Target=Point_2hw(1245184,0);
	Edges[17].AABB=2949120;
	Edges[18].Source=Point_2hw(1245184,0);
	Edges[18].Target=Point_2hw(851968,-196608);
	Edges[18].AABB=2949120;
	Edges[19].Source=Point_2hw(851968,-196608);
	Edges[19].Target=Point_2hw(458752,0);
	Edges[19].AABB=2949120;
	Edges[20].Source=Point_2hw(0,1245184);
	Edges[20].Target=Point_2hw(196608,851968);
	Edges[20].AABB=2949120;
	Edges[21].Source=Point_2hw(196608,851968);
	Edges[21].Target=Point_2hw(0,458752);
	Edges[21].AABB=2949120;
	Edges[22].Source=Point_2hw(0,458752);
	Edges[22].Target=Point_2hw(-196608,851968);
	Edges[22].AABB=2949120;
	Edges[23].Source=Point_2hw(-196608,851968);
	Edges[23].Target=Point_2hw(0,1245184);
	Edges[23].AABB=2949120;
	Edges[24].Source=Point_2hw(0,-458752);
	Edges[24].Target=Point_2hw(196608,-851968);
	Edges[24].AABB=2949120;
	Edges[25].Source=Point_2hw(196608,-851968);
	Edges[25].Target=Point_2hw(0,-1245184);
	Edges[25].AABB=2949120;
	Edges[26].Source=Point_2hw(0,-1245184);
	Edges[26].Target=Point_2hw(-196608,-851968);
	Edges[26].AABB=2949120;
	Edges[27].Source=Point_2hw(-196608,-851968);
	Edges[27].Target=Point_2hw(0,-458752);
	Edges[27].AABB=2949120;*/




	Node_RRT_Poshw x_new_pos;

	Node_Randhw x_rand;
	x_rand.Position.x=FloatToFixed<16>(xrandx);
	x_rand.Position.y=FloatToFixed<16>(xrandy);

	int32_t sqrn=FloatToFixed<16>(Squared_r_n);
	int32_t sqrb=FloatToFixed<16>(Squared_R_Robot-0.005);

	int Pos_Nearest_Node=0;
	int xmin=0;
	int32_t Dist;
	Dist= 0;
	int32_t Tem_Dist;
	Tem_Dist= 0;
	//int j=1;

	Node_RRT_Poshw RRT_Star[Node];

	int XNearCnt=0;
	int rtndval=0;
	float c_min_local=0;


	for(int i=0;i<N;i++)
	{
#pragma HLS PIPELINE
		input_stream=dataInStream.read();
		node_pt.reg=input_stream.data;

		RRT_Star[i].Position.x= FloatToFixed<16>(node_pt.struct_RRT_Star.Position_x) ;
		RRT_Star[i].Position.y=FloatToFixed<16>(node_pt.struct_RRT_Star.Position_y);
		RRT_Star[i].Location_List=node_pt.struct_RRT_Star.Location_List;
		RRT_Star[i].Cost=FloatToFixed<16>(node_pt.struct_RRT_Star.Cost);


		Tem_Dist = Cal_Squared_Disthw( x_rand, RRT_Star[i]);
		if( i == 0)
		{
			Dist = Tem_Dist;
			Pos_Nearest_Node = i;
		}
		else{
			if( Tem_Dist < Dist )
			{
				Dist = Tem_Dist;
				Pos_Nearest_Node = i;
			}
		}
	}

	oup[0]=Pos_Nearest_Node;
	x_new_pos = A_StreamReaderhw( RRT_Star[Pos_Nearest_Node], x_rand,N);
	//if(N==1085)
	//	std::cout<<"xpos "<<FixedToFloat<16>(x_new_pos.Position.x)<<std::endl;


	oup[2]=FixedToFloat<16>(x_new_pos.Position.x);
	oup[3]=FixedToFloat<16>(x_new_pos.Position.y);

	//oup[5]=FixedToFloat<16>(RRT_Star[Pos_Nearest_Node].Position.x);

	bool is_obstacle_free = Obstacle_Freehw( RRT_Star[Pos_Nearest_Node].Position, x_new_pos.Position,
			sqrb, Edges ,N);

	if(is_obstacle_free)
	{

		Nearhw( x_near, RRT_Star, x_new_pos, sqrn, N,XNearCnt );


		c_min_local = FixedToFloat<16>(Costhw( RRT_Star[Pos_Nearest_Node ].Position, x_new_pos.Position ));
		//c_min = RRT_Star[Pos_Nearest_Node ].Cost + c_min_local;


		oup[1]=c_min_local;

		oup[4]=XNearCnt;
		for(int j=0;j<XNearCnt+1;j++)
		{
			output_stream.data=x_near[j];

			output_stream.keep=input_stream.keep;

			output_stream.strb=input_stream.strb;

			output_stream.user=input_stream.user;

			output_stream.id=input_stream.id;

			output_stream.dest=input_stream.dest;

			if(j==XNearCnt)
				output_stream.last=1;
			else
				output_stream.last=0;
			XNearStream.write(output_stream);
		}
	}

	else
		{
			for(int j=0;j<10;j++)
			{

				output_stream.data=0;

				output_stream.keep=input_stream.keep;

				output_stream.strb=input_stream.strb;

				output_stream.user=input_stream.user;

				output_stream.id=input_stream.id;

				output_stream.dest=input_stream.dest;

				if(j==10-1)
					output_stream.last=1;
				else
					output_stream.last=0;
				XNearStream.write(output_stream);


			}
		}


	return is_obstacle_free;
}
