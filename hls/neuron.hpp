#include "ap_int.h"
#include "stdint.h"
#include <cstring>
#include "hls_half.h"
/*�ڶ������ӣ����̣߳����Ըĳɵ��߳�8����
#define N     900000
#define SIZE  128
#define P     2
#define P2    P*2
#define P4    P*4
#define NUM   10000
#define O_num N/P
*/

#define N     900000
#define SIZE  128
//#define P     4
#define P2    8
#define P4    P*4
#define NUM   10000
#define O_num N/P2
const int UNROLL=8;
const int BR_UNROLL=16;
const int MAX_LOOP = 28125*2;
union int_uint32
{
	uint32_t  u32data;
	int f32data;
};

union float_uint32
{
	uint32_t  u32data;
	float f32data;
};

INLINE uint32_t float_to_uint32(float value)
{
	float_uint32 c;
	c.f32data = value;
	return c.u32data;
}

INLINE float uint32_to_float(uint32_t value)
{
	float_uint32 c;
	c.u32data = value;
	return c.f32data;
}

INLINE ap_uint<SIZE> float_to_uint64(float value1, float value2)
{
	union float_uint64
	{
		uint64_t u64data;
		struct
		{
			float f32data1;
			float f32data2;
		};
	} c;
	c.f32data1 = value1;
	c.f32data2 = value2;
	return c.u64data;
}

//void update_n(int num, float stable_para[16],
//		ap_uint<SIZE> input00[N],
//		ap_uint<SIZE> input01[N],
//		int output0_[O_num], int output1_[O_num], int output2_[O_num], int output3_[O_num]);

/*�ڶ������ӣ����̣߳����Ըĳɵ��߳�8����
void update_n(int num, float stable_para[16], ap_uint<SIZE> input00[N],
		ap_uint<SIZE> input01[N], ap_uint<SIZE/2> output0_[O_num]);
*/

void update_n(int num, float stable_para[16], ap_uint<SIZE> input00[N], ap_uint<SIZE> input01[N],
		int output0_[O_num], int output1_[O_num], int output2_[O_num], int output3_[O_num]);
