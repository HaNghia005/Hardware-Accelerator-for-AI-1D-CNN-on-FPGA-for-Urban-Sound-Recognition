#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
void Padding_Conv1D_0(fxp input_Pad_Conv[6920], fxp output_Pad_Conv[7080]){
	loop_for_3_channel_pad_0:
	for (int c = 0; c < 40; c++){
		loop_for_channel_pad_0:
		for (int n = 0; n < 177; n++){
			if (n < 2 || n >= 175) output_Pad_Conv[177 * c + n]=0; else output_Pad_Conv[177 * c + n] = input_Pad_Conv[173 * c + n - 2];
		}
	}
}
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
void Conv1D_0(fxp Input_Conv[7080],fxp Output_Conv[5536], fxp bias[32], fxp kernel[6400]){
	loop_for_channel_0:
	int stride = 1;
	for (int n = 0; n < 32; n++){
		loop_for_ap_0:
		for (int y = 0; y < 173; y++){
			fxp s = 0;
			loop_for_fc_0:
			for (int k = 0; k < 40; k++){
				loop_for_fa_0:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[40*5*n+5*k+j])*(Input_Conv[177*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[173*n+y]=0; else Output_Conv[173*n+y]=s+bias[n];
		}
	}
}
#include <hls_math.h>
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
 void BatchNorm1D_0(fxp Input_BatchNorm[5536], fxp Output_BatchNorm[5536], fxp gamma[32],fxp beta[32], fxp MovMean[32], fxp MovVar[32]) {
	fxp eps = 0.001;
	 for(int i = 0; i < 32; i++){
		for(int j = 0; j < 173; j++){
			Output_BatchNorm[173 * i + j] = ((Input_BatchNorm[173 * i + j] - MovMean[i]) / (hls::sqrt(MovVar[i] + eps)))* gamma[i] + beta[i];
		}
	}
}
void Padding_Conv1D_1(fxp input_Pad_Conv[2752], fxp output_Pad_Conv[2880]){
	loop_for_3_channel_pad_1:
	for (int c = 0; c < 32; c++){
		loop_for_channel_pad_1:
		for (int n = 0; n < 90; n++){
			if (n < 2 || n >= 88) output_Pad_Conv[90 * c + n]=0; else output_Pad_Conv[90 * c + n] = input_Pad_Conv[86 * c + n - 2];
		}
	}
}
void Conv1D_1(fxp Input_Conv[2880],fxp Output_Conv[5504], fxp bias[64], fxp kernel[10240]){
	loop_for_channel_1:
	int stride = 1;
	for (int n = 0; n < 64; n++){
		loop_for_ap_1:
		for (int y = 0; y < 86; y++){
			fxp s = 0;
			loop_for_fc_1:
			for (int k = 0; k < 32; k++){
				loop_for_fa_1:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[32*5*n+5*k+j])*(Input_Conv[90*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[86*n+y]=0; else Output_Conv[86*n+y]=s+bias[n];
		}
	}
}
#include <hls_math.h>
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
 void BatchNorm1D_1(fxp Input_BatchNorm[5504], fxp Output_BatchNorm[5504], fxp gamma[64],fxp beta[64], fxp MovMean[64], fxp MovVar[64]) {
	fxp eps = 0.001;
	 for(int i = 0; i < 64; i++){
		for(int j = 0; j < 86; j++){
			Output_BatchNorm[86 * i + j] = ((Input_BatchNorm[86 * i + j] - MovMean[i]) / (hls::sqrt(MovVar[i] + eps)))* gamma[i] + beta[i];
		}
	}
}
void Padding_Conv1D_2(fxp input_Pad_Conv[2752], fxp output_Pad_Conv[3008]){
	loop_for_3_channel_pad_2:
	for (int c = 0; c < 64; c++){
		loop_for_channel_pad_2:
		for (int n = 0; n < 47; n++){
			if (n < 2 || n >= 45) output_Pad_Conv[47 * c + n]=0; else output_Pad_Conv[47 * c + n] = input_Pad_Conv[43 * c + n - 2];
		}
	}
}
void Conv1D_2(fxp Input_Conv[3008],fxp Output_Conv[5504], fxp bias[128], fxp kernel[40960]){
	loop_for_channel_2:
	int stride = 1;
	for (int n = 0; n < 128; n++){
		loop_for_ap_2:
		for (int y = 0; y < 43; y++){
			fxp s = 0;
			loop_for_fc_2:
			for (int k = 0; k < 64; k++){
				loop_for_fa_2:
				for (int j = 0; j < 5; j++){
					s=s+(kernel[64*5*n+5*k+j])*(Input_Conv[47*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[43*n+y]=0; else Output_Conv[43*n+y]=s+bias[n];
		}
	}
}
#include <hls_math.h>
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
 void BatchNorm1D_2(fxp Input_BatchNorm[5504], fxp Output_BatchNorm[5504], fxp gamma[128],fxp beta[128], fxp MovMean[128], fxp MovVar[128]) {
	fxp eps = 0.001;
	 for(int i = 0; i < 128; i++){
		for(int j = 0; j < 43; j++){
			Output_BatchNorm[43 * i + j] = ((Input_BatchNorm[43 * i + j] - MovMean[i]) / (hls::sqrt(MovVar[i] + eps)))* gamma[i] + beta[i];
		}
	}
}
void Padding_Conv1D_3(fxp input_Pad_Conv[2688], fxp output_Pad_Conv[2944]){
	loop_for_3_channel_pad_3:
	for (int c = 0; c < 128; c++){
		loop_for_channel_pad_3:
		for (int n = 0; n < 23; n++){
			if (n < 1 || n >= 22) output_Pad_Conv[23 * c + n]=0; else output_Pad_Conv[23 * c + n] = input_Pad_Conv[21 * c + n - 1];
		}
	}
}
void Conv1D_3(fxp Input_Conv[2944],fxp Output_Conv[231], fxp bias[11], fxp kernel[4224]){
	loop_for_channel_3:
	int stride = 1;
	for (int n = 0; n < 11; n++){
		loop_for_ap_3:
		for (int y = 0; y < 21; y++){
			fxp s = 0;
			loop_for_fc_3:
			for (int k = 0; k < 128; k++){
				loop_for_fa_3:
				for (int j = 0; j < 3; j++){
					s=s+(kernel[128*3*n+3*k+j])*(Input_Conv[23*k+j+y*stride]);}
			}
			if ((s+bias[n])<0) Output_Conv[21*n+y]=0; else Output_Conv[21*n+y]=s+bias[n];
		}
	}
}
#include <hls_math.h>
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
 void BatchNorm1D_3(fxp Input_BatchNorm[231], fxp Output_BatchNorm[231], fxp gamma[11],fxp beta[11], fxp MovMean[11], fxp MovVar[11]) {
	fxp eps = 0.001;
	 for(int i = 0; i < 11; i++){
		for(int j = 0; j < 21; j++){
			Output_BatchNorm[21 * i + j] = ((Input_BatchNorm[21 * i + j] - MovMean[i]) / (hls::sqrt(MovVar[i] + eps)))* gamma[i] + beta[i];
		}
	}
}
 void Activation0(fxp Input_Activation[11], fxp &Output_Activation){
		int maxindex = 0;
	fxp max=Input_Activation[0];
	loop_detect:
	for (int i=0; i<11; i++){
		if (Input_Activation[i]> max) {
			max=Input_Activation[i];
			maxindex=i;
		}
	}
	
	Output_Activation = maxindex;

}
