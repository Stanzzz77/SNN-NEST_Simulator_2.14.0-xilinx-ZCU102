#include "neuron.hpp"

/* ��ҵ�õĵĵ�һ�棬iaf��Ԫ��4����float���������Ӷ����ܣ�����Ҳ����*/
//�ĳɵ��̲߳���4���Ż�factorҲҪ�ģ�outputҪ����,��Ҫ�ĵĶ������?,bundleҲҪ��
void update_indata(int i,
		ap_uint<SIZE> input00[N],
		ap_uint<SIZE> input01[N],

		float weighted_spikes_ex_[P2],
		float weighted_spikes_in_[P2],
		float I_e_[P2],

		float i_syn_ex_[P2],
		float i_syn_in_[P2],
		float r_ref_[P2],
		float V_m_[P2]
)
{
#pragma HLS INLINE off
	for(int j = 0; j < P2; j++)
	{
		ap_uint<SIZE> tmp_input00 = input00[(i*P2)+j];
		ap_uint<SIZE> tmp_input01 = input01[(i*P2)+j];
		weighted_spikes_ex_[j] = uint32_to_float(tmp_input00.range(31,0));
		weighted_spikes_in_[j] = uint32_to_float(tmp_input00.range(63,32));
		I_e_[j] = uint32_to_float(tmp_input00.range(95,64));

		i_syn_ex_[j] = uint32_to_float(tmp_input01.range(31,0));
		i_syn_in_[j] = uint32_to_float(tmp_input01.range(63,32));
		r_ref_[j] = uint32_to_float(tmp_input01.range(95,64));
		V_m_[j] = uint32_to_float(tmp_input01.range(127,96));
	}
}

void execute(int i, float P20_, float P22_, float P11ex_, float P11in_, float P21ex_, float P21in_, float Theta_, float RefractoryCounts_, float V_reset_,

		float weighted_spikes_ex_[P2], float weighted_spikes_in_[P2], float I_e_[P2],

		float i_syn_ex_[P2], float i_syn_in_[P2], float r_ref_[P2], float V_m_[P2],

		float V_m_rr[P2], float i_syn_ex_rr[P2], float i_syn_in_rr[P2],
		float r_ref_rr[P2], int signal_[P2], int signal_1[P2])
{
#pragma HLS INLINE off
	float i_syn_ex_r[P2];
	float i_syn_in_r[P2];

	float temp0[P2], temp1[P2], temp2[P2], temp3[P2], r_ref_r[P2], V_m_r[P2];
	float add0[P2], add1[P2], contrast[P2];

	for(int j = 0 ; j < P2; j++)
	{
		if ( r_ref_[j] == 0 ) // neuron not refractory, so evolve V
		{
			temp0[j] = V_m_[j] * P22_;                              //9.702
			temp1[j] = i_syn_ex_[j] * P21ex_;                       //13.3138558
			temp2[j] = i_syn_in_[j] * P21in_;                       //17.5037242
			temp3[j] = I_e_[j] * P20_;                              //8.1648
			add0[j] = temp0[j] + temp1[j];
			add1[j] = temp2[j] + temp3[j];
			contrast[j] = add0[j] + add1[j];
			V_m_r[j] = add0[j] + add1[j];                           //48.68438
			r_ref_r[j] = r_ref_[j];
		}
		else
		{
			// constrast
			V_m_r[j] = V_m_[j];
			r_ref_r[j] = r_ref_[j] - 1;
		}
		i_syn_ex_r[j] = i_syn_ex_[j] * P11ex_;                   //8.099897
		i_syn_in_r[j] = i_syn_in_[j] * P11in_;                   //6.56521

		i_syn_ex_rr[j] = i_syn_ex_r[j] + weighted_spikes_ex_[j]; //9.509897
		i_syn_in_rr[j] = i_syn_in_r[j] + weighted_spikes_in_[j]; //8.66521

		// if(r_ref_[j] == 0)
		// {
		if ( contrast[j] >= Theta_ ) // threshold crossing
		{
			r_ref_rr[j] = RefractoryCounts_;
			V_m_rr[j] = V_reset_;
			signal_[j] = i*P2+j;
			signal_1[j] = i*P2+j;
		}
		else
		{
			r_ref_rr[j] = r_ref_r[j];
			V_m_rr[j] = V_m_r[j];
			signal_[j] = -1;
			signal_1[j] = -1;
		}
		//}
	}
}

void update_outdata(int num, float V_m_r[P2], float i_syn_ex_rr[P2], float i_syn_in_rr[P2],
		float r_ref_r[P2], ap_uint<SIZE> input01[N])
{
#pragma HLS INLINE off
	for(int j = 0 ; j < P2; j++)
	{
		ap_uint<SIZE> tmp_input01;
		tmp_input01.range(31,0) = float_to_uint32(i_syn_ex_rr[j]);    //-4
		tmp_input01.range(63,32) = float_to_uint32(i_syn_in_rr[j]);   //8
		tmp_input01.range(95,64) = float_to_uint32(r_ref_r[j]);       //0
		tmp_input01.range(127,96) = float_to_uint32(V_m_r[j]);    //42
		input01[(num*P2)+j] = tmp_input01;
	}
}

void update_n(int num, float stable_para[16],
		ap_uint<SIZE> input00[N],
		ap_uint<SIZE> input01[N],
		int output0_[O_num], int output1_[O_num], int output2_[O_num], int output3_[O_num])
{
#pragma HLS INTERFACE m_axi depth=900000 port=output0_ offset=slave bundle=output0_
#pragma HLS INTERFACE m_axi depth=900000 port=output1_ offset=slave bundle=output0_
#pragma HLS INTERFACE m_axi depth=900000 port=output2_ offset=slave bundle=output1_
#pragma HLS INTERFACE m_axi depth=900000 port=output3_ offset=slave bundle=output1_
#pragma HLS INTERFACE s_axilite register port=output0_ bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=output1_ bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=output2_ bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=output3_ bundle=ctrl_bus

#pragma HLS ARRAY_RESHAPE variable=input01 cyclic factor=UNROLL dim=1
#pragma HLS INTERFACE m_axi depth=900000 port=input01 offset=slave bundle=input00
#pragma HLS ARRAY_RESHAPE variable=input00 cyclic factor=UNROLL dim=1
#pragma HLS INTERFACE m_axi depth=900000 port=input00 offset=slave bundle=input01
#pragma HLS INTERFACE m_axi depth=16 port=stable_para offset=slave bundle=stable_para
#pragma HLS ARRAY_RESHAPE variable=stable_para object complete dim=1

#pragma HLS INTERFACE s_axilite register port=input01 bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=input00 bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=stable_para bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=num bundle=ctrl_bus
#pragma HLS INTERFACE s_axilite register port=return bundle=ctrl_bus

	float P20_, P22_, P11ex_, P11in_, P21ex_, P21in_;
	float Theta_, RefractoryCounts_, V_reset_;
	P20_ = stable_para[0];
	P22_ = stable_para[1];
	P21ex_ = stable_para[2];
	P21in_ = stable_para[3];
	P11ex_ = stable_para[4];
	P11in_ = stable_para[5];
	Theta_ = stable_para[6];
	RefractoryCounts_ = stable_para[7];
	V_reset_ = stable_para[8];


	float weighted_spikes_ex_[P2], weighted_spikes_in_[P2], I_e_[P2], i_syn_ex_[P2], i_syn_in_[P2], r_ref_[P2],
	V_m_[P2];
#pragma HLS ARRAY_RESHAPE variable=weighted_spikes_ex_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=weighted_spikes_in_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=I_e_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=i_syn_ex_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=i_syn_in_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=r_ref_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=V_m_ complete dim=1

	float V_m_r[P2], i_syn_ex_rr[P2], i_syn_in_rr[P2], r_ref_r[P2];
#pragma HLS ARRAY_RESHAPE variable=V_m_r complete dim=1
#pragma HLS ARRAY_RESHAPE variable=i_syn_ex_rr complete dim=1
#pragma HLS ARRAY_RESHAPE variable=i_syn_in_rr complete dim=1
#pragma HLS ARRAY_RESHAPE variable=r_ref_r complete dim=1

	int signal_[P2], signal_1[P2];
#pragma HLS ARRAY_RESHAPE variable=signal_ complete dim=1
#pragma HLS ARRAY_RESHAPE variable=signal_1 complete dim=1

	int num_o[P2] = {1,1,1,1};
#pragma HLS ARRAY_RESHAPE variable=num_o complete dim=1

	float weighted_spikes_ex_2[P2], weighted_spikes_in_2[P2], I_e_2[P2], i_syn_ex_2[P2], i_syn_in_2[P2], r_ref_2[P2],
	V_m_2[P2];
#pragma HLS ARRAY_RESHAPE variable=weighted_spikes_ex_2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=weighted_spikes_in_2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=I_e_2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=i_syn_ex_2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=i_syn_in_2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=r_ref_2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=V_m_2 complete dim=1


	update_indata(0, input00, input01,
				weighted_spikes_ex_, weighted_spikes_in_, I_e_,
				i_syn_ex_, i_syn_in_, r_ref_, V_m_);
	int time_ = num / P2;
	int rmd = num % P2;
	if(rmd != 0)
	{
		time_++;
	}
	for(int i = 0; i < time_; i++)
	{
#pragma HLS LOOP_TRIPCOUNT min=0 max=MAX_LOOP
#pragma HLS PIPELINE
		if(i % 2==1)
		{

				update_indata(i, input00, input01,
				weighted_spikes_ex_, weighted_spikes_in_, I_e_,
				i_syn_ex_, i_syn_in_, r_ref_, V_m_);

			execute(i, P20_, P22_, P11ex_, P11in_, P21ex_, P21in_, Theta_, RefractoryCounts_, V_reset_,
					weighted_spikes_ex_2, weighted_spikes_in_2, I_e_2,
					i_syn_ex_2, i_syn_in_2, r_ref_2, V_m_2,
					V_m_r, i_syn_ex_rr, i_syn_in_rr, r_ref_r, signal_, signal_1);
		} else {

				update_indata(i, input00, input01,
				weighted_spikes_ex_2, weighted_spikes_in_2, I_e_2,
				i_syn_ex_2, i_syn_in_2, r_ref_2, V_m_2);

			execute(i, P20_, P22_, P11ex_, P11in_, P21ex_, P21in_, Theta_, RefractoryCounts_, V_reset_,
					weighted_spikes_ex_, weighted_spikes_in_, I_e_,
					i_syn_ex_, i_syn_in_, r_ref_, V_m_,
					V_m_r, i_syn_ex_rr, i_syn_in_rr, r_ref_r, signal_, signal_1);
		}
		update_outdata(i, V_m_r, i_syn_ex_rr, i_syn_in_rr, r_ref_r, input01);
		if(signal_[0] != -1)
		{
			output0_[num_o[0]] = signal_1[0];
			num_o[0]++;
		}

		if(i == time_ - 1 && (rmd == 2 || rmd == 3) && signal_[1] != -1 ) //rmd != 0  (rmd == 2 || rmd == 3)
		{
			output1_[num_o[1]] = signal_1[1];
			num_o[1]++;
		}
		else if(signal_[1] != -1)
		{
			output1_[num_o[1]] = signal_1[1];
			num_o[1]++;
		}

		if(i == time_ - 1 && signal_[2] != -1 && rmd == 3)
		{
			output2_[num_o[2]] = signal_1[2];
			num_o[2]++;
		}
		else if(signal_[2] != -1)
		{
			output2_[num_o[2]] = signal_1[2];
			num_o[2]++;
		}

		if(i == time_ - 1 && signal_[3] != -1 && rmd != 0)
		{
			output3_[0] = num_o[3];
		}
		else if(signal_[3] != -1)
		{
			output3_[num_o[3]] = signal_1[3];
			num_o[3]++;
		}
	}

	output0_[0] = num_o[0];
	output1_[0] = num_o[1];
	output2_[0] = num_o[2];
	output3_[0] = num_o[3];
}


