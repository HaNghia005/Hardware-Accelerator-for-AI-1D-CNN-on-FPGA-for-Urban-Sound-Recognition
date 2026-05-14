#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
void Padding_Conv1D_0(fxp input_Pad_Conv[6920], fxp output_Pad_Conv[7080]);
#include <ap_axi_sdata.h>
typedef ap_fixed<32,16> fxp;
void Conv1D_0(fxp Input_Conv[7080],fxp Output_Conv[5536], fxp bias[32], fxp kernel[6400]);
void BatchNorm1D_0(fxp Input_BatchNorm[5536], fxp Output_BatchNorm[5536], fxp gamma[32], fxp beta[32], fxp MovMean[32], fxp MovVar[32]);
void Padding_Conv1D_1(fxp input_Pad_Conv[2752], fxp output_Pad_Conv[2880]);
void Conv1D_1(fxp Input_Conv[2880],fxp Output_Conv[5504], fxp bias[64], fxp kernel[10240]);
void BatchNorm1D_1(fxp Input_BatchNorm[5504], fxp Output_BatchNorm[5504], fxp gamma[64], fxp beta[64], fxp MovMean[64], fxp MovVar[64]);
void Padding_Conv1D_2(fxp input_Pad_Conv[2752], fxp output_Pad_Conv[3008]);
void Conv1D_2(fxp Input_Conv[3008],fxp Output_Conv[5504], fxp bias[128], fxp kernel[40960]);
void BatchNorm1D_2(fxp Input_BatchNorm[5504], fxp Output_BatchNorm[5504], fxp gamma[128], fxp beta[128], fxp MovMean[128], fxp MovVar[128]);
void Padding_Conv1D_3(fxp input_Pad_Conv[2688], fxp output_Pad_Conv[2944]);
void Conv1D_3(fxp Input_Conv[2944],fxp Output_Conv[231], fxp bias[11], fxp kernel[4224]);
void BatchNorm1D_3(fxp Input_BatchNorm[231], fxp Output_BatchNorm[231], fxp gamma[11], fxp beta[11], fxp MovMean[11], fxp MovVar[11]);
void Activation0(fxp Input_Activation[11], fxp &Output_Activation);
