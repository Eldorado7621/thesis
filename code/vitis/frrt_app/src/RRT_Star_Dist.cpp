#include <xtime_l.h>
#include <time.h>
#include "RRT_Star.hpp"
#include "xaxidma.h"
#include "xparameters.h"
#include "xrrt.h"
#include <cstring>


#define Node 10000
#define SIZE_XNEAR 1000

using namespace std;
class RRT_Star_Dist
{
public:
	~RRT_Star_Dist()
	{
		std::cout<<"destructor RRT_Star"<<std::endl;
	}

	static int initDma(XAxiDma &axiDma)
	{

		//printf("Initializing DMA ... \n");
		XAxiDma_Config *DmaCfgPtr;
		DmaCfgPtr=XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);

		if(!DmaCfgPtr)
		{
			xil_printf("no config found for %d\r\n",XPAR_AXI_DMA_0_DEVICE_ID);
			return XST_FAILURE;
		}
		int status=XAxiDma_CfgInitialize(&axiDma,DmaCfgPtr);

		if(status!=XST_SUCCESS)
		{
			printf("Error INITIALIAZING DMA \n");
			return XST_FAILURE;
		}
		return XST_SUCCESS;

	}

	static int initNearest(XRrt &rrt)
	{
		////printf("Initializing neareas ... \n");
		XRrt_Config *rrtPtr;
		rrtPtr=XRrt_LookupConfig(XPAR_RRT_0_DEVICE_ID);

		if(!rrtPtr)
		{
			xil_printf("no config found for %d\r\n",XPAR_RRT_0_DEVICE_ID);
			return XST_FAILURE;
		}
		int status=XRrt_CfgInitialize(&rrt,rrtPtr);

		if(status!=XST_SUCCESS)
		{
			printf("Error INITIALIAZING nearestPtr \n");
			return XST_FAILURE;
		}
		//XAxiDma_IntrDisable(&axiDma,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
		return XST_SUCCESS;

	}

	static bool RRT_IP(XRrt &rrt,
			XAxiDma &axiDma,
			int &x_min,
			float &c_min_local,
			All_Node_RRT &x_new_pos,
			int &X_near_count,
			Node_RRT_hp RRT_Starnb[Node],
			int X_nearn[SIZE_XNEAR],
			int i,
			float x_randnx,
			float x_randny,
			float &Squared_r_n,
			float Squared_R_Robot)
	{
		//cout<<"hw"<<endl;
		initDma(axiDma);
		float xpos_hw[5];
		Xil_DCacheFlushRange((UINTPTR)RRT_Starnb,(sizeof(Node_RRT_hp  )*i));
		Xil_DCacheFlushRange((UINTPTR)X_nearn,(sizeof(  int )*SIZE_XNEAR));

		XRrt_Set_N(&rrt,i);

		XRrt_Set_xrandx(&rrt,*(u32*)(&x_randnx));
		XRrt_Set_xrandy(&rrt,*(u32*)(&x_randny));

		XRrt_Set_Squared_r_n(&rrt,*(u32*)(&Squared_r_n));
		XRrt_Set_Squared_R_Robot(&rrt,*(u32*)(&Squared_R_Robot));
		XRrt_Start(&rrt);
		int status_tf=XAxiDma_SimpleTransfer(&axiDma,(UINTPTR)RRT_Starnb,
				(sizeof(Node_RRT_hp )*i),XAXIDMA_DMA_TO_DEVICE);
		if(status_tf!=XST_SUCCESS)
		{
			printf("WRITING DATA FROM DDR TO FIFO VIA DMA FAILED  \n");
		}

		status_tf=XAxiDma_SimpleTransfer(&axiDma,(UINTPTR)X_nearn,
				(sizeof( int)*SIZE_XNEAR),XAXIDMA_DEVICE_TO_DMA);
		while(!XRrt_IsDone(&rrt));
		if(status_tf!=XST_SUCCESS)
		{
			printf("WRITING DATA FROM IP VIA DMA FAILED  \n");
		}
		Xil_DCacheInvalidateRange((u32)X_nearn,(sizeof( int)*SIZE_XNEAR));
		bool obs_free=XRrt_Get_return(&rrt);
		XRrt_Read_oup_Words(&rrt,0,(long unsigned int *)(xpos_hw),5);
		x_min = xpos_hw[0];
		if(obs_free)
		{
			c_min_local = xpos_hw[1];
			x_new_pos.Position.x=xpos_hw[2];
			x_new_pos.Position.y=xpos_hw[3];
			X_near_count=xpos_hw[4];
		}
		//cout<<obs_free<<"obs"<<endl;
		return obs_free;

	}


	static bool SW(
			int &x_min,
			float &c_min_local,
			All_Node_RRT &x_new_pos,
			int &X_near_count,
			Node_RRT_hp RRT_Starnb[Node],
			int X_nearn[SIZE_XNEAR],
			int i,
			Node_Rand x_randnn,
			float Squared_r_n,
			__fp16 Squared_R_Robot,
			Polygon_3 &Environment
	)
	{
		int x_nearest = Nearest( x_randnn, RRT_Starnb, i );
		x_min = x_nearest;

		x_new_pos = StreamReader( RRT_Starnb[ x_nearest ], x_randnn);
		bool obs_free=Obstacle_Free( RRT_Starnb[x_nearest ].Position, x_new_pos.Position,
				Squared_R_Robot, Environment,i );

		if( obs_free )
		{
			Near( X_nearn, RRT_Starnb, x_new_pos, Squared_r_n, i ,X_near_count);


			c_min_local = Cost( RRT_Starnb[x_nearest].Position, x_new_pos.Position );
		}
		return obs_free;

	}

	static void Build_RRT_Star( Node_RRT RRT_Star[Node],Node_RRT_hp RRT_Starnb[Node], Position_Holonomic &Pos_Init,
			int Total_Num_Node, float R_Robot, float Gamma_rrt, Region &RRT_Star_Region,
			float d, float mu, Polygon_3 &Environment,Node_RRT_Pos x_rand[Node], bool Verbose)
	{
		int X_nearn[SIZE_XNEAR]={0};

		int List_pos_near[40];
		list<int> List_Path;

		Node_RRT_Pos x_randn;
		Node_Rand x_randnn;
		//All_Node_RRT All_RRT[Node];
		int x_nearest;

		Node_RRT_hp xnb;

		XAxiDma axiDma;
		XRrt rrt;

		int status_tf;
		XTime sw_processor_start, sw_processor_end;

		Node_RRT x_new;
		All_Node_RRT x_new_pos;
		int x_min;
		float c_min = 0;
		float c_min_local = 0;
		float cost_tem_local = 0;
		float cost_tem = 0;
		float r_n = 0;
		__fp16 Squared_R_Robot = R_Robot*R_Robot;
		float Squared_r_n = 0;

		Point_2 Point_init( Pos_Init.x, Pos_Init.y );


		RRT_Star[0].Point = Point_2( Pos_Init.x, Pos_Init.y );
		RRT_Star[0].Location_Parent = 0;

		RRT_Starnb[0].Position.x=Pos_Init.x;
		RRT_Starnb[0].Position.y=Pos_Init.y;


		XTime hw_processor_start, hw_processor_stop;
		float time_diff=0;
		float total_time=0;


		int X_near_count;
		bool obs_free=false;

		initNearest(rrt);
		//for(int i=1;i<Node;i++)
		int i=1;
		int xrnd_ind=1;
		while(i<Node)
		{
			r_n = fmin( Gamma_rrt*pow( log( i ) / i, 1.0 / d ), mu );

			Squared_r_n = r_n*r_n;



			//All_Node_RRT xx_rand = Rand_Conf( RRT_Star_Region );
			x_randnn.Position.x=x_rand[xrnd_ind].Position.x;
			x_randnn.Position.y=x_rand[xrnd_ind].Position.y;

			XTime_GetTime(&hw_processor_start);
			//hardware IP
			obs_free=RRT_IP(rrt,
					  axiDma,
					  x_min,
					  c_min_local,
					  x_new_pos,
					  X_near_count,
					  RRT_Starnb,
					  X_nearn,
					  i,
					  float(x_randnn.Position.x),
					  float(x_randnn.Position.y),
					  Squared_r_n,
					  float(Squared_R_Robot));

			// end hardware driver


			//-----------------------software computation begin------------------------------------------------------//
			/*obs_free=SW(
					x_min,
					c_min_local,
					x_new_pos,
					X_near_count,
					RRT_Starnb,
					X_nearn,
					i,
					x_randnn,
					Squared_r_n,
					Squared_R_Robot,
					Environment
			);*/
			XTime_GetTime(&hw_processor_stop);
			float sw_processing_time=1000000.0*(hw_processor_stop-hw_processor_start)/(COUNTS_PER_SECOND);
			total_time=total_time+sw_processing_time;
			float xx=x_rand[xrnd_ind].Position.x;
			float yy=x_rand[xrnd_ind].Position.y;


			if(obs_free)
			{
				c_min=c_min_local+RRT_Starnb[x_min].Cost;

				memset(List_pos_near, 0, sizeof List_pos_near);
				//List_pos_near.clear();
				int pos_x_near=0;
				int List_pos_near_index=0;
				//X_near_count=xpos_hw[0];
				for(int xnear_index=0;xnear_index<X_near_count;xnear_index++)
				{
					pos_x_near=X_nearn[xnear_index];

					cost_tem_local = Cost( RRT_Starnb[pos_x_near ].Position, x_new_pos.Position );
					cost_tem = RRT_Starnb[pos_x_near ].Cost + cost_tem_local;

					if( Obstacle_Free( RRT_Starnb[pos_x_near ].Position, x_new_pos.Position,
							Squared_R_Robot, Environment,i))
					{
						List_pos_near[List_pos_near_index]=pos_x_near;
						List_pos_near_index++;

						if(cost_tem < c_min)
						{
							x_min = pos_x_near;
							c_min = cost_tem;
							c_min_local = cost_tem_local;
						}


					}
				}

				//remove x_min from the list_pos_near
				int ctt=0;
				while(ctt < List_pos_near_index)
				{
					if(List_pos_near[ctt]==x_min)
					{
						//replace the value with the value of next index
						int cttt=ctt;
						while(cttt<List_pos_near_index)
						{
							List_pos_near[cttt]=List_pos_near[cttt+1];
							cttt++;
						}
						List_pos_near_index--;
					}
					ctt++;
				}
				x_new.Location_Parent = x_min;
				x_new.Local_Cost = c_min_local;


				short int index=RRT_Star[ x_min].Children_Count;

				RRT_Star[ x_min].Llist_Children[index]=i;
				RRT_Star[ x_min].Children_Count++;

				RRT_Star[i].Copy( x_new );


				x_new_pos.Location_List = i;

				//All_RRT[i].Copy(x_new_pos);

				RRT_Starnb[i].Position.x=x_new_pos.Position.x;
				RRT_Starnb[i].Position.y=x_new_pos.Position.y;
				RRT_Starnb[i].Location_List=i;
				RRT_Starnb[i].Cost=c_min;

				int tem_pos_x_near=0;
				for (int list_pos_ele_ind=0;list_pos_ele_ind<List_pos_near_index;list_pos_ele_ind++)
				{
					tem_pos_x_near=List_pos_near[list_pos_ele_ind];
					cost_tem_local = Cost( RRT_Starnb[i].Position,
							RRT_Starnb[tem_pos_x_near ].Position );
					cost_tem = RRT_Starnb[i].Cost + cost_tem_local;

					if( cost_tem < RRT_Starnb[tem_pos_x_near ].Cost )
					{
						int ctt=0;
						while(ctt < RRT_Star[ RRT_Star[tem_pos_x_near ].Location_Parent].Children_Count)
						{
							if(RRT_Star[RRT_Star[ tem_pos_x_near ].Location_Parent ].Llist_Children[ctt]==tem_pos_x_near)
							{
								//replace the value with the value of next index
								int cttt=ctt;
								while(cttt<RRT_Star[ RRT_Star[tem_pos_x_near ].Location_Parent].Children_Count)
								{
									RRT_Star[RRT_Star[ tem_pos_x_near ].Location_Parent ].Llist_Children[cttt]=
											RRT_Star[RRT_Star[ tem_pos_x_near ].Location_Parent ].Llist_Children[cttt+1];
									cttt++;
								}
								RRT_Star[ RRT_Star[tem_pos_x_near ].Location_Parent].Children_Count--;
							}
							ctt++;
						}


						RRT_Star[tem_pos_x_near ].Location_Parent = i;

						RRT_Star[i].Llist_Children[RRT_Star[ i].Children_Count]= tem_pos_x_near;
						RRT_Star[ i].Children_Count++;
						ARewire_the_tree( tem_pos_x_near, RRT_Star ,RRT_Starnb);
					}

				}

				i++;
				//if( i%Node == 0 && Verbose ) cout<< "Nodo: " + to_string( i ) + ", r_n: " + to_string( r_n )<<endl;
			}
			else
			{
				//cout<<"dr"<<i<<endl;
			}

			xrnd_ind++;
		}
		cout<<"total_time for neighbourhood computation"<<total_time<<endl;


	}

	static Node_RRT_Pos A_Rand_Conf( Region &Range )
	{
		Node_RRT_Pos Tem_Node;
		float x = ( ( ( float ) rand() / ( RAND_MAX ) ) )*( Range.x_max - Range.x_min ) + Range.x_min;
		float y = ( ( ( float ) rand() / ( RAND_MAX ) ) )*( Range.y_max - Range.y_min ) + Range.y_min;
		Tem_Node.Position.Insert_Position( x, y );
		//cout<<"x:"<<x<<"y:"<<y<<endl;
		return Tem_Node;
	}


	/*static Node_RRT Rand_Conf( Region &Range )
	{
		Node_RRT Tem_Node;
		float x = ( ( ( float ) rand() / ( RAND_MAX ) ) )*( Range.x_max - Range.x_min ) + Range.x_min;
		float y = ( ( ( float ) rand() / ( RAND_MAX ) ) )*( Range.y_max - Range.y_min ) + Range.y_min;
		Tem_Node.Position.Insert_Position( x, y );
		//cout<<"x:"<<x<<"y:"<<y<<endl;
		return Tem_Node;
	}*/
	static int Nearest( Node_RRT_Pos &x_rand, All_Node_RRT RRT_Star_pos[Node], int N )
	{
		int Pos_Nearest_Node = 0;
		int i = 0;
		float Dist = 0;
		float Tem_Dist = 0;
		for( auto j = 0; j < N; j++)
		{
			Tem_Dist = Cal_Squared_Dist( x_rand, RRT_Star_pos[j] );
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
			i++;
		}
		return Pos_Nearest_Node;
	}
	static int Nearest( Node_Rand &x_rand, Node_RRT_hp RRT_Star_pos[Node], int N )
	{
		int Pos_Nearest_Node = 0;

		float Dist = 0;
		float Tem_Dist = 0;
		for( auto j = 0; j < N; j++)
		{
			Tem_Dist = Cal_Squared_Dist( RRT_Star_pos[j] ,x_rand);
			if( j == 0)
			{
				Dist = Tem_Dist;
				Pos_Nearest_Node = j;
			}
			else{
				if( Tem_Dist < Dist )
				{
					Dist = Tem_Dist;
					Pos_Nearest_Node = j;
				}
			}

		}
		return Pos_Nearest_Node;
	}

	static float Cal_Dist( Node_RRT_hp  &x_A,Node_Rand   &x_B  )
	{
		float D = 0;
		Point_2 A( x_A.Position.x, x_A.Position.y );
		Point_2 B( x_B.Position.x, x_B.Position.y );
		D = sqrt( A.squared_distance( B ) );
		return D;
	}
	static float Cal_Dist( All_Node_RRT &x_A, Node_RRT_Pos &x_B )
	{
		float D = 0;
		Point_2 A( x_A.Position.x, x_A.Position.y );
		Point_2 B( x_B.Position.x, x_B.Position.y );
		D = sqrt( A.squared_distance( B ) );
		return D;
	}

	static float Cal_Squared_Dist( Node_RRT_Pos &x_A, All_Node_RRT &x_B )
	{
		float D = 0;
		Point_2 A( x_A.Position.x, x_A.Position.y );
		Point_2 B( x_B.Position.x, x_B.Position.y );
		D = A.squared_distance( B );
		return D;
	}
	static float Cal_Squared_Dist( All_Node_RRT &x_A, All_Node_RRT &x_B )
	{
		float D = 0;
		Point_2 A( x_A.Position.x, x_A.Position.y );
		Point_2 B( x_B.Position.x, x_B.Position.y );
		D = A.squared_distance( B );
		return D;
	}

	static float Cal_Squared_Dist( All_Node_RRT &x_A,Node_RRT_hp x_B )
	{
		float D = 0;
		Point_2 A( x_A.Position.x, x_A.Position.y );
		Point_2 B( x_B.Position.x, x_B.Position.y );
		D = A.squared_distance( B );
		return D;
	}
	static float Cal_Squared_Dist( Node_RRT_hp x_A, Node_Rand x_B)
	{
		float D = 0;
		Point_2 A( x_A.Position.x, x_A.Position.y );
		Point_2 B( x_B.Position.x, x_B.Position.y );
		D = A.squared_distance( B );
		return D;
	}


	static All_Node_RRT A_StreamReader( All_Node_RRT &x_nearest, Node_RRT_Pos &x_rand )
	{
		All_Node_RRT tem;
		float aux = Cal_Dist( x_nearest, x_rand );
		float rad = 1;
		float t = rad/aux;

		if( aux <= rad ) tem.Position.Insert_Position( x_rand.Position.x, x_rand.Position.y );
		else
		{
			tem.Position.x = ( x_rand.Position.x - x_nearest.Position.x )*t +
					x_nearest.Position.x;
			tem.Position.y = ( x_rand.Position.y - x_nearest.Position.y )*t +
					x_nearest.Position.y;
		}

		//tem.Point = Point_2( tem.Position.x, tem.Position.y );
		return tem;
	}


	static All_Node_RRT StreamReader( Node_RRT_hp &x_nearest, Node_Rand &x_rand )
	{
		All_Node_RRT tem;
		float aux = Cal_Dist( x_nearest, x_rand );
		float rad = 1;
		float t = rad/aux;

		if( aux <= rad ) tem.Position.Insert_Position( x_rand.Position.x, x_rand.Position.y );
		else
		{
			tem.Position.x = ( x_rand.Position.x - x_nearest.Position.x )*t +
					x_nearest.Position.x;
			tem.Position.y = ( x_rand.Position.y - x_nearest.Position.y )*t +
					x_nearest.Position.y;
		}

		tem.Point = Point_2( tem.Position.x, tem.Position.y );
		return tem;
	}
	static bool Obstacle_Free( Position_Holonomichp &A, Position_Holonomichp &B, float Squared_R_Robot,
			Polygon_3 &Geo)
	{
		bool Bool = true;
		int N = 5;
		Position_Holonomichp Tem_Positon;
		float Delta_x = (A.x - B.x)/(N*1.0);
		float Delta_y = (A.y - B.y)/(N*1.0);

		for( int i = 0; i <= N; i++)
		{
			Tem_Positon.x = Delta_x*i + B.x;
			Tem_Positon.y = Delta_y*i + B.y;
			Point_2 t( Tem_Positon.x, Tem_Positon.y );
			if( Collision_free( t, Squared_R_Robot, Geo,3 ) )
			{
				Bool = false;
				return Bool;
			}
		}
		return Bool;
	}
	static bool Obstacle_Free( Position_Holonomichp &A, Position_Holonomic &B, float Squared_R_Robot,
			Polygon_3 &Geo,int nn)
	{
		bool Bool = true;
		int N = 5;
		Position_Holonomichp Tem_Positon;
		float Delta_x = (A.x - B.x)/(N*1.0);
		float Delta_y = (A.y - B.y)/(N*1.0);

		//cout<<"jj"<<Squared_R_Robot<<endl;
		//if(nn<100)
		//cout<<nn<<","<<A.x<<","<<B.x<<","<<Squared_R_Robot<<endl;

		for( int i = 0; i <= N; i++)
		{
			Tem_Positon.x = Delta_x*i + B.x;
			Tem_Positon.y = Delta_y*i + B.y;
			Point_2 t( Tem_Positon.x, Tem_Positon.y );
			//if (nn==1)
			//			cout<<t.x()<<","<<t.y()<<endl;
			bool collision_free=Collision_free( t, Squared_R_Robot, Geo ,nn);
			//if(nn==83)
			//cout<<"coll"<<collision<<endl;
			if( collision_free )
			{
				Bool = false;
				return Bool;
			}
		}
		return Bool;
	}
	static bool Collision_free( Point_2 &A, float Squared_R_Robot, Polygon_3 &Geo,int nn )
	{
		bool Bool = false;
		for ( auto ei :  Geo.edges )
		{
			float cc=ei.squared_distance( A,nn );
			//if (nn==1)
			//cout<<cc<<endl;
			if( cc < Squared_R_Robot) return true;
		}
		return Bool;
	}
	static void Near(  unsigned short int X_near[SIZE_XNEAR], All_Node_RRT RRT_Star_Pos[Node], All_Node_RRT &x_new, float Squared_r_n, int N , int &X_near_count)
	{
		X_near_count=0;
		for( int i=0; i<N; i++ )
		{
			if( Cal_Squared_Dist( x_new, RRT_Star_Pos[i] ) < Squared_r_n )
			{
				X_near[X_near_count]= RRT_Star_Pos[i ].Location_List;
				X_near_count++;
			}
		}
	}


	static void Near(  int X_near[SIZE_XNEAR], Node_RRT_hp RRT_Star_Pos[Node], All_Node_RRT &x_new, float Squared_r_n, int N , int &X_near_count)
	{
		X_near_count=0;
		for( int i=0; i<N; i++ )
		{
			if( Cal_Squared_Dist( x_new, RRT_Star_Pos[i] ) < Squared_r_n )
			{
				X_near[X_near_count]= RRT_Star_Pos[i ].Location_List;
				X_near_count++;
			}
		}
	}



	static float Cost( Position_Holonomic &A, Position_Holonomic &B )
	{
		//Fucion de costo dependiente de la distancia
		float Dist = sqrt( pow( A.x - B.x, 2 ) + pow( A.y - B.y, 2 ) );
		return Dist;
	}
	static float Cost( Position_Holonomichp &A, Position_Holonomic &B )
	{
		//Fucion de costo dependiente de la distancia
		float Dist = sqrt( pow( A.x - B.x, 2 ) + pow( A.y - B.y, 2 ) );
		return Dist;
	}
	static float Cost( Position_Holonomichp &A, Position_Holonomichp &B )
	{
		//Fucion de costo dependiente de la distancia
		float Dist = sqrt( pow( A.x - B.x, 2 ) + pow( A.y - B.y, 2 ) );
		return Dist;
	}
	static float Cal_Angle( float Theta_A, float Theta_B )
	{
		if( Theta_A < 0 ) Theta_A = 2*M_PI + Theta_A;
		if( Theta_B < 0 ) Theta_B = 2*M_PI + Theta_B;
		float Theta_min = min( Theta_A, Theta_B );
		float Theta_max = max( Theta_A, Theta_B );

		float Theta_1 = Theta_max - Theta_min;
		float Theta_2 = 2.0*M_PI + Theta_min - Theta_max;
		float Angle = min( Theta_1, Theta_2 );

		return Angle;
	}

	static void ARewire_the_tree( int Pos_x, Node_RRT RRT_Star[Node] , Node_RRT_hp RRT_Star_Pos[Node] )
	{
		int list_n[30];
		short count_list=0;
		list_n[0]=Pos_x;
		count_list++;
		int n;
		float local_cost;
		while( count_list!=0 )
		{
			n = list_n[count_list-1];
			list_n[count_list-1]=0;
			count_list--;
			local_cost = Cost( RRT_Star_Pos[RRT_Star[n ].Location_Parent ].Position,
					RRT_Star_Pos[n].Position );
			//cout<<RRT_Star_Pos[RRT_Star[n].Location_Parent ].Cost<<endl;
			RRT_Star_Pos[n].Cost = RRT_Star_Pos[RRT_Star[n].Location_Parent ].Cost + local_cost;
			RRT_Star[n ].Local_Cost = local_cost;

			for(int i=0;i<RRT_Star[n ].Children_Count;i++)
			{
				list_n[count_list]=RRT_Star[n ].Llist_Children[i];
				count_list++;
			}
		}

	}
	static All_Node_RRT Rand_Conf( Region &Range )
	{
		All_Node_RRT Tem_Node;
		float x = ( ( ( float ) rand() / ( RAND_MAX ) ) )*( Range.x_max - Range.x_min ) + Range.x_min;
		float y = ( ( ( float ) rand() / ( RAND_MAX ) ) )*( Range.y_max - Range.y_min ) + Range.y_min;
		Tem_Node.Position.Insert_Position( x, y );
		//cout<<"x:"<<( float ) rand() / ( RAND_MAX )<<"y:"<<Range.y_min<<endl;
		//cout<<"x:"<<Range.x_max - Range.x_min<<"y:"<<Range.y_max - Range.y_min<<endl;
		return Tem_Node;
	}
	/*static void Rewire_the_tree( int Pos_x, Node_RRT RRT_Star[Node] )
	{
		list<int> list_n;
		list_n.push_back( Pos_x );
		int n;
		float local_cost;
		while( !list_n.empty() )
		{
			n = list_n.back();
			list_n.pop_back();
			local_cost = Cost( RRT_Star[RRT_Star[n ].Location_Parent ].Position,
					RRT_Star[n].Position );
			RRT_Star[n].Cost = RRT_Star[RRT_Star[n].Location_Parent ].Cost + local_cost;
			RRT_Star[n ].Local_Cost = local_cost;

			// for( auto Pos_Son_int_List : RRT_Star[n ].List_Children )
				//list_n.push_back( Pos_Son_int_List );
		}
	}*/
	/*static void Save_Graph( vector<Node_RRT> &RRT_Star, string Name )
	{
		ofstream fileName1;
		ofstream fileName2;
		ofstream fileName3;
		ofstream fileName4;
		ofstream fileName5;

		fileName1.open( "Save/Solx_" + Name + ".txt" );
		fileName2.open( "Save/Soly_" + Name + ".txt" );
		fileName3.open( "Save/Nodo_" + Name + ".txt" );
		fileName4.open( "Save/Padre_" + Name + ".txt" );
		fileName5.open( "Save/Costo_" + Name + ".txt" );
		for( const auto N:RRT_Star)
		{
			fileName1 << N.Position.x <<endl;
			fileName2 << N.Position.y <<endl;
			fileName3 << N.Location_List <<endl;
			fileName4 << N.Location_Parent <<endl;
			fileName5 << N.Cost <<endl;
		}

		fileName1.close();
		fileName2.close();
		fileName3.close();
		fileName4.close();
		fileName5.close();
	}*/
	/*static void OldRange_search( vector<Node_RRT> &Graph, Region &Region, list<int> &List_Point )
	{
		for( int i = 0; i < Graph.size(); i++ )
		{
			if( Region.in_region( Graph.at( i ).Position ) ) List_Point.push_back( i );
		}
	}
	static int Old_Best_Trajectory( vector<Node_RRT> &RRT_Star, Position_Holonomic &Goal, float Radio_Goal )
	{
		list<int> X_near;
		int best = -1;
		float Tem_Cost = Constant_Max;
		float Squared_Radio_Goal = Radio_Goal*Radio_Goal;
		Region region( Goal, Radio_Goal, Squared_Radio_Goal);
		Range_search( RRT_Star, region, X_near);
		for(int i: X_near)
		{
			if( RRT_Star.at( i ).Cost < Tem_Cost)
			{
				Tem_Cost = RRT_Star.at( i ).Cost;
				best = i;
			}
		}
		if( best == -1 ) cout<<"Error best"<<endl;
		return best;
	}*/
	static void Range_search( Node_RRT_hp RRT_Star[Node], Region &Region, list<int> &List_Point )
	{
		for( int i = 0; i < Node; i++ )
		{
			if( Region.in_region( RRT_Star[ i].Position ) ) List_Point.push_back( i );
		}
	}
	static int Best_Trajectory( Node_RRT_hp RRT_Star[Node], Position_Holonomichp &Goal, float Radio_Goal )
	{
		list<int> X_near;
		int best = -1;
		float Tem_Cost = Constant_Max;
		float Squared_Radio_Goal = Radio_Goal*Radio_Goal;
		Region region( Goal, Radio_Goal, Squared_Radio_Goal);
		Range_search( RRT_Star, region, X_near);
		for(int i: X_near)
		{
			if( RRT_Star[i].Cost < Tem_Cost)
			{
				Tem_Cost = RRT_Star[i].Cost;
				best = i;
			}
		}
		if( best == -1 ) cout<<"Error best"<<endl;
		return best;
	}
};
