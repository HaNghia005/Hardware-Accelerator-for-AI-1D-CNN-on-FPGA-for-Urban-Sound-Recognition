#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
void Max_Pool1D_0(fxp input_MaxPooling[5536], fxp output_MaxPooling[2752]){
	int PoolSize = 2;
	int stride= 2;
	int index = 0;
	loop_for_channel_pool_0:
	for (int z = 0; z < 32; z++){
		index = 0;
		loop_for_weight_pool_0:
		for (int y = 0; y < 86; y++){
			fxp max = -10;
			for (int j = 0; j < PoolSize; j++)
			{
				int pool_index = 173 * z + j + y * stride;
				fxp pool_value = input_MaxPooling[pool_index];
				if (pool_value > max) max=pool_value;
			}
			int out_index = 86 * z + index;
			output_MaxPooling[out_index]=max;
			index++;
		}
	}
}
void Max_Pool1D_1(fxp input_MaxPooling[5504], fxp output_MaxPooling[2752]){
	int PoolSize = 2;
	int stride= 2;
	int index = 0;
	loop_for_channel_pool_1:
	for (int z = 0; z < 64; z++){
		index = 0;
		loop_for_weight_pool_1:
		for (int y = 0; y < 43; y++){
			fxp max = -10;
			for (int j = 0; j < PoolSize; j++)
			{
				int pool_index = 86 * z + j + y * stride;
				fxp pool_value = input_MaxPooling[pool_index];
				if (pool_value > max) max=pool_value;
			}
			int out_index = 43 * z + index;
			output_MaxPooling[out_index]=max;
			index++;
		}
	}
}
void Max_Pool1D_2(fxp input_MaxPooling[5504], fxp output_MaxPooling[2688]){
	int PoolSize = 2;
	int stride= 2;
	int index = 0;
	loop_for_channel_pool_2:
	for (int z = 0; z < 128; z++){
		index = 0;
		loop_for_weight_pool_2:
		for (int y = 0; y < 21; y++){
			fxp max = -10;
			for (int j = 0; j < PoolSize; j++)
			{
				int pool_index = 43 * z + j + y * stride;
				fxp pool_value = input_MaxPooling[pool_index];
				if (pool_value > max) max=pool_value;
			}
			int out_index = 21 * z + index;
			output_MaxPooling[out_index]=max;
			index++;
		}
	}
}
void GlobalAveragePool1D_0(fxp input_GlobalAveragePool1D[231],fxp output_GlobalAveragePool1D[11]){
	int hs = 0;
	for (int i = 0; i < 11; i++){
		fxp avg = 0;
		for (int j = 0; j < 21; j++){
			avg += input_GlobalAveragePool1D[21 * i + j] / 21;
		}
		output_GlobalAveragePool1D[hs] = avg;
		hs++;
	}
}
