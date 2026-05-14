#include "Conv.h"
#include "Pool.h"
#include "Dense.h"
#include <algorithm>
#include <string.h>
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
void CNN(fxp InModel[6920],fxp &OutModel0,fxp Weights[62999]){
	fxp OutPadConv0[7080];
	fxp conv1d_5[5536];
	fxp batch_normalization_5[5536];
	fxp max_pooling1d_3[2752];
	fxp OutPadConv1[2880];
	fxp conv1d_6[5504];
	fxp batch_normalization_6[5504];
	fxp max_pooling1d_4[2752];
	fxp OutPadConv2[3008];
	fxp conv1d_7[5504];
	fxp batch_normalization_7[5504];
	fxp max_pooling1d_5[2688];
	fxp OutPadConv3[2944];
	fxp conv1d_8[231];
	fxp batch_normalization_8[231];
	fxp global_average_pooling1d_1[11];
	fxp activation_1[11];
	Padding_Conv1D_0(&InModel[0],OutPadConv0);
	Conv1D_0(OutPadConv0,conv1d_5,&Weights[6400],&Weights[0]);
	BatchNorm1D_0(conv1d_5,batch_normalization_5,&Weights[6432],&Weights[6464],&Weights[6496],&Weights[6528]);
	Max_Pool1D_0(batch_normalization_5,max_pooling1d_3);
	Padding_Conv1D_1(max_pooling1d_3,OutPadConv1);
	Conv1D_1(OutPadConv1,conv1d_6,&Weights[16800],&Weights[6560]);
	BatchNorm1D_1(conv1d_6,batch_normalization_6,&Weights[16864],&Weights[16928],&Weights[16992],&Weights[17056]);
	Max_Pool1D_1(batch_normalization_6,max_pooling1d_4);
	Padding_Conv1D_2(max_pooling1d_4,OutPadConv2);
	Conv1D_2(OutPadConv2,conv1d_7,&Weights[58080],&Weights[17120]);
	BatchNorm1D_2(conv1d_7,batch_normalization_7,&Weights[58208],&Weights[58336],&Weights[58464],&Weights[58592]);
	Max_Pool1D_2(batch_normalization_7,max_pooling1d_5);
	Padding_Conv1D_3(max_pooling1d_5,OutPadConv3);
	Conv1D_3(OutPadConv3,conv1d_8,&Weights[62944],&Weights[58720]);
	BatchNorm1D_3(conv1d_8,batch_normalization_8,&Weights[62955],&Weights[62966],&Weights[62977],&Weights[62988]);
	GlobalAveragePool1D_0(batch_normalization_8,global_average_pooling1d_1);
	Activation0(global_average_pooling1d_1,OutModel0);
}
