
#include <cmath>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>


#include "RRT_Star_hw.hpp"
using namespace std;

typedef short int int16;



typedef ap_axis<64,2,5,6> axis_data;
typedef ap_axis<32,2,5,6> axiso_data;

typedef struct{
	__fp16 Position_x;
	__fp16 Position_y;
	 short int Location_List;
	__fp16 Cost;
}Struct_RRT_Star;


typedef union{
	Struct_RRT_Star struct_RRT_Star; //pt struct alias
	long long int reg;   //integer alias
}Node_Pt;


bool rrt(hls::stream<axis_data> &dataInStream,
		float xrandx,
		float xrandy,
		 int N,
		float oup[5],
		float Squared_r_n,
		float Squared_R_Robot,
		hls::stream<axiso_data> &XNearStream
);
