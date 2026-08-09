#include <cmath>
#include "Aux_Lib_hw.hpp"

//typedef float __fp16;

class Position_Holonomic_hw
{

public:
	int32_t x;
	int32_t y;
	Position_Holonomic_hw()//builder
	{
		x = (FloatToFixed<16>(0));
		y = (FloatToFixed<16>(0));
	}
	Position_Holonomic_hw(int32_t _x, int32_t _y)//builder
	{
		x = _x;
		y = _y;
	}
	~Position_Holonomic_hw()//destroyer
	{
		//cout<< "Destructor Position_Holonomic_hw"<<endl;
	}
	void Insert_Position(int32_t _x, int32_t _y)
	{
		x = _x;
		y = _y;
	}
	void Copy(Position_Holonomic_hw &A)
	{
		x = A.x;
		y = A.y;
	}
};

class Position_Holonomic_hwfp
{
public:
	float x;
	float y;
	Position_Holonomic_hwfp()//builder
	{
		x = (FloatToFixed<16>(0));
		y = (FloatToFixed<16>(0));
	}
	Position_Holonomic_hwfp(float _x, float _y)//builder
	{
		x = _x;
		y = _y;
	}
	~Position_Holonomic_hwfp()//destroyer
	{
		//cout<< "Destructor Position_Holonomic_hw"<<endl;
	}

};

class Node_Randhw
{
public:
	Position_Holonomic_hw Position;

	Node_Randhw()
	{
	}
	~Node_Randhw()//destroyer
	{
		//cout<<"Destructor Node_RRT"<<endl;
	}

};

class Node_RRT_Poshw
{
public:
	Position_Holonomic_hw Position;//Position of the Node

	short int Location_List;//Location of the Node in the Graph
	int32_t Cost;


	Node_RRT_Poshw()//builder
	{

		Location_List = 0;
		Cost=(FloatToFixed<16>(0));

	}
	~Node_RRT_Poshw()//destroyer
	{
		//cout<<"Destructor Node_RRT"<<endl;
	}

};
