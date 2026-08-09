
#include <iostream>

template<size_t dp>
static constexpr int32_t FloatToFixed(float d)
{
	return int32_t(d*float(1 << dp)+(d>=0?0.5:-0.5));
}


template<size_t dp>
static constexpr float FixedToFloat(int32_t d)
{
	return float(d)/float(1<<dp);
}


template<size_t dp>

static constexpr int16_t FloatToFixed16(float d)
{
	return int16_t(d*float(1 << dp)+(d>=0?0.5:-0.5));
}


template<size_t dp>
static constexpr float Fixed16ToFloat(int16_t d)
{
	return float(d)/float(1<<dp);
}

static constexpr int32_t fp_mult(int32_t a, int32_t b)
{
	  return ((int64_t(a) *int64_t(b))>>16);
}

static constexpr int32_t fp_div(int32_t a, int32_t b)
{
	  return (int64_t(a)<<16)/int64_t(b);
}

static int32_t fp_sqrtt(int32_t v) {
    uint32_t t, q, b, r;
    r = v;
    b = 0x40000000;
    q = 0;
    while( b > 0x40 )
    {
        t = q + b;
        if( r >= t )
        {
            r -= t;
            q = t + b; // equivalent to q += 2*b
        }
        r <<= 1;
        b >>= 1;
    }
    q >>= 8;
    return q;
}


