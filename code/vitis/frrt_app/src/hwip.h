#include "RRT_Star_hw.hpp"
#include "RRT_Star.hpp"


#define Node 10000
#define SIZE_XNEAR 1000


static int32_t Cal_Disthw( Node_RRT_Poshw &x_A, Node_Randhw &x_B )
{
	int32_t D = 0;
	Point_2hw A( x_A.Position.x, x_A.Position.y );
	Point_2hw B( x_B.Position.x, x_B.Position.y );
	D=fp_sqrtt(A.squared_distance( B ));
	//int32_t sqr=A.squared_distance( B ) ;
	//D = sqrt(FixedTofloat<16>(sqr) );
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
	//if(i==1085)
	//std::cout<<FixedToFloat<16>(aux)<<std::endl;

	//int auxi=FloatToFixed<16>(aux);
	int32_t rad = FloatToFixed<16>(1);
	//int32_t t = rad/aux;
	int32_t t =fp_div(rad,aux);

	bool aux_rad;

	/*aux_rad=1 + ((aux-rad) >> 31) - (-(aux-rad) >> 31);

	tem.Position.x = ((!aux_rad)*x_rand.Position.x)+ (aux_rad*((fp_mult(( x_rand.Position.x - x_nearest.Position.x ),t)) +
			x_nearest.Position.x));
	tem.Position.y = ((!aux_rad)*x_rand.Position.y)+ (aux_rad*((fp_mult(( x_rand.Position.y - x_nearest.Position.y),t))+
			x_nearest.Position.y));*/

	if( aux <= rad )
	{
		tem.Position.Insert_Position( x_rand.Position.x, x_rand.Position.y );
	}
	else
	{
		tem.Position.x =  fp_mult(( x_rand.Position.x - x_nearest.Position.x ),t) +
				x_nearest.Position.x;
		tem.Position.y = fp_mult(( x_rand.Position.y - x_nearest.Position.y),t)+
				x_nearest.Position.y;
	}

	//tem.Point = Point_2( tem.Position.x, tem.Position.y );
	//if(i==1085)
	//std::cout<<"aux "<<FixedToFloat<16>(tem.Position.x)<<std::endl;
	return tem;
}

static bool Collision_detectedhw( int32_t &x, int32_t &y, int32_t Squared_R_Robot, Segment_3hw Edges[MAX_EDGES],int nn)
{
	int32_t ff;
	bool Bool = false;
	//bool Bool[4];
	for (int i=0;i<MAX_EDGES;i++)
	{
		int32_t cc=Edges[i].squared_distance( x,y,nn,i) ;

		if( cc < (Squared_R_Robot-FloatToFixed<16>(0.005)))
			return true;

		//ff=cc - (Squared_R_Robot-FloatToFixed<16>(0.005));
		//Bool[i]=1 + (ff >> 31) - (-ff >> 31);

	}
	return Bool; // !(Bool[0]&Bool[1]&Bool[2]&Bool[3]);
}

static bool Obstacle_Freehw( Position_Holonomic_hw &A, Position_Holonomic_hw &B, int32_t Squared_R_Robot,
		Segment_3hw Edges[MAX_EDGES], int w )
{

	int N = 5;
	/*bool Bool[6];
	Bool[0]=true;*/

	bool Bool=true;

	Position_Holonomic_hw Tem_Positon;
	int32_t dy,dx;

	/*if (w==1085)
	{
		std::cout<<"here"<<std::endl;
	 std::cout<<FixedToFloat<16>(A.x)<<",ff "<<FixedToFloat<16>(A.y)
	 <<FixedToFloat<16>(B.x)<<",ff "<<FixedToFloat<16>(B.y)<<std::endl;
	}*/

	//int32_t Delta_x = (A.x - B.x)/(N*1.0);
	int32_t Delta_x = fp_div((A.x - B.x),FloatToFixed<16>(N));
	int32_t Delta_y = fp_div((A.y - B.y),FloatToFixed<16>(N));


	for( int i = 0; i <= N; i++)
	{

		dx=fp_mult(Delta_x,FloatToFixed<16>(i)) ;
		dy=fp_mult(Delta_y,FloatToFixed<16>(i)) ;


		//std::cout<<w<<" ,n "<<FixedToFloat<16>(dx)<<" , "<<FixedToFloat<16>(dy)<<","<<FixedToFloat<16>(Delta_x)<<std::endl;
		Tem_Positon.x = dx+ B.x;
		Tem_Positon.y = dy+ B.y;
		Point_2hw t( Tem_Positon.x, Tem_Positon.y );

		//Bool[i]=!(Collision_detectedhw( Tem_Positon.x, Tem_Positon.y, Squared_R_Robot, Edges ,w));
		/*if (w==1085)
		{
				std::cout<<"here1"<<std::endl;
		std::cout<<w<<" , "<<FixedToFloat<16>(t.x())<<" , "<<FixedToFloat<16>(t.y())<<
		" , "<<FixedToFloat<16>(Delta_x)<<" , "<<FixedToFloat<16>(Delta_y)<<
		" , "<<FixedToFloat<16>(B.x)<<std::endl;
		std::cout<<"there1"<<std::endl;
		}*/
		if( Collision_detectedhw( Tem_Positon.x ,Tem_Positon.y, Squared_R_Robot, Edges ,w) )
		{
			Bool = false;
			return Bool;
		}
	}
	//(Bool[0]&Bool[1]&Bool[2]&Bool[3]&Bool[4]);
	return Bool; // (Bool[0]&Bool[1]&Bool[2]&Bool[3]&Bool[4]&Bool[5]);
}

static void Nearhw(    int X_near[SIZE_XNEAR], Node_RRT_Poshw RRT_Star_Pos[Node], Node_RRT_Poshw &x_new,
		int32_t Squared_r_n,  int N ,  int &X_near_count)
{
	X_near_count=0;
	int32_t csd;
	bool b;

	for( int i=0; i<N; i++ )
	{
		/*csd=(Squared_r_n- Cal_Squared_Disthw( x_new, RRT_Star_Pos[i] ) );
		b=1 + (csd >> 31) - (-csd >> 31);
		X_near[X_near_count]= RRT_Star_Pos[i ].Location_List;
		X_near_count=X_near_count+b;*/


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
	//Dist = hls::sqrt(( (A.x - B.x)*(A.x - B.x) ) + ( (A.y - B.y)*(A.y - B.y) ) );
	return Dist;

}


static bool rrt_hw(Node_RRT_hp RRT_Starnb[Node],
		float xrandx,
		float xrandy,
		int N,
		//short int choose,

		float Squared_r_n,
		float Squared_R_Robot,
		int x_near[SIZE_XNEAR],
		int &x_minn,
		float &c_min_localn,
		All_Node_RRT &x_new_posn,
		int &X_near_countn
)


{

	//#pragma HLS INLINE off
	float oup[5];

	int32_t A;
	int32_t B;

	/*Segment_3hw Edges[MAX_EDGES];
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
	}*/

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
	Edges[27].AABB=2949120;





	Node_RRT_Poshw x_new_pos;

	Node_Randhw x_rand;
	x_rand.Position.x=FloatToFixed<16>(xrandx);
	x_rand.Position.y=FloatToFixed<16>(xrandy);

	int32_t sqrn=FloatToFixed<16>(Squared_r_n);
	int32_t sqrb=FloatToFixed<16>(Squared_R_Robot);

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



	//short int List_pos_near[40];


	float c_min_local=0;


	//write the input to the RRT_Star
	//int i=0;


	for(int i=0;i<N;i++)
	{
		RRT_Star[i].Position.x= FloatToFixed<16>(float(RRT_Starnb[i].Position.x)) ;
		RRT_Star[i].Position.y=FloatToFixed<16>(float(RRT_Starnb[i].Position.y));
		RRT_Star[i].Location_List=RRT_Starnb[i].Location_List;
		RRT_Star[i].Cost=FloatToFixed<16>(float(RRT_Starnb[i].Cost));


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
	x_minn=Pos_Nearest_Node;

	x_new_pos = A_StreamReaderhw( RRT_Star[Pos_Nearest_Node], x_rand,N);
	//if(N==1085)
	//	std::cout<<"xpos "<<FixedToFloat<16>(x_new_pos.Position.x)<<std::endl;


	oup[2]=FixedToFloat<16>(x_new_pos.Position.x);
	oup[3]=FixedToFloat<16>(x_new_pos.Position.y);
	x_new_posn.Position.x=oup[2];
	x_new_posn.Position.y=oup[3];

	//oup[5]=FixedToFloat<16>(RRT_Star[Pos_Nearest_Node].Position.x);

	bool is_obstacle_free = Obstacle_Freehw( RRT_Star[Pos_Nearest_Node].Position, x_new_pos.Position,
			sqrb, Edges ,N);

	if(is_obstacle_free)
	{

		Nearhw( x_near, RRT_Star, x_new_pos, sqrn, N,XNearCnt );


		c_min_local = FixedToFloat<16>(Costhw( RRT_Star[Pos_Nearest_Node ].Position, x_new_pos.Position ));
		//c_min = RRT_Star[Pos_Nearest_Node ].Cost + c_min_local;


		oup[1]=c_min_local;
		c_min_localn=c_min_local;

		oup[4]=XNearCnt;
		X_near_countn=XNearCnt;
	}


	return is_obstacle_free;
}
