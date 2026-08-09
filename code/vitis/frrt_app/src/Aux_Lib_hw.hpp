
#include <cmath>
#include "fixedpt.h"

#define MAX_EDGES 4
#define VERTICES 4

class Point_2hw
    {
	private:
		int32_t _x;
		int32_t _y;
	public:
	    Point_2hw()
	    {
		_x = 0;
		_y = 0;
	    }
	    ~Point_2hw(){}
	    Point_2hw( const int32_t _x, const int32_t _y )
	    {
		this->_x = _x;
		this->_y = _y;
	    }
	    float x() const
	    {
		return _x;
	    }
	    float y() const
	    {
		return _y;
	    }
	    float squared_distance( Point_2hw &p )
	    {
	    	return (fp_mult((_x-p.x()),(_x-p.x())) + fp_mult((_y-p.y()),(_y-p.y())));
		   //return pow( _x - p.x(), 2 ) + pow( _y - p.y(), 2 );
	    }
    };
class Segment_3hw
{
	//Note Ax + By + C = 0
	//A = ( y_2 - y_1 )
	//B = -( x_2 - x_1 )
	//C = ( x_2 - x_1 )y_1 - ( y_2 - y_1 )x_1
public:
	Point_2hw Source;
	Point_2hw Target;
	int32_t AABB;

public:

	~Segment_3hw(){}

	Point_2hw source() const
	{
		return Source;
	}
	Point_2hw target() const
	{
		return Target;
	}
	int32_t squared_distance( Point_2hw &p )
	{

		int32_t Uu=fp_mult(( p.x() - Source.x() ) ,( Target.x() - Source.x() ))+
				fp_mult(( p.y() - Source.y() ) , ( Target.y() - Source.y() ));

		int32_t U=fp_div(Uu,AABB);

		//std::cout<<FixedToFloat<16>(p.x())<<", "<<FixedToFloat<16>(Source.x())<<" , "<<FixedToFloat<16>(Source.y())<<" , "<<
			//	FixedToFloat<16>(Target.x())<<" , "<<FixedToFloat<16>(Target.y())<<" , "<<FixedToFloat<16>(AABB)<<", "<<FixedToFloat<16>(U)<<std::endl;

		if( U >= (FloatToFixed<16>(0)) && U <= (FloatToFixed<16>(1)) )
		{

			int32_t m=fp_mult(( Target.x() - Source.x() ),( p.y() - Source.y() ))-
			 fp_mult(( Target.y() -Source.y() ) ,( p.x() - Source.x() ));

			int32_t div=fp_div(m,AABB);

			int32_t fm=fp_mult(m,div);

			//std::cout<<FixedToFloat<16>(fm)<<", here "<<FixedToFloat<16>(AABB)<<", "<<FixedToFloat<16>(m)<<std::endl;
			return (fm);
		}
		else
			if( U > (FloatToFixed<16>(1)) )
				return Target.squared_distance( p );
			else
				return Source.squared_distance( p );
	}
};
