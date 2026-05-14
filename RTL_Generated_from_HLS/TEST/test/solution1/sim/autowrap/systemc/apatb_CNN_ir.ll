; ModuleID = 'D:/DOWNLOAD/Documents/KLTN/VITIS/TEST/test/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: noinline
define void @apatb_CNN_ir(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6920" %InModel, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull dereferenceable(4) %OutModel0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nonnull readonly "fpga.decayed.dim.hint"="62999" %Weights) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 27680)
  %InModel_copy = bitcast i8* %malloccall to [6920 x i32]*
  %OutModel0_copy = alloca i32, align 512
  %malloccall1 = call i8* @malloc(i64 251996)
  %Weights_copy = bitcast i8* %malloccall1 to [62999 x i32]*
  %0 = bitcast %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %InModel to [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %Weights to [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [6920 x i32]* %InModel_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %OutModel0, i32* nonnull align 512 %OutModel0_copy, [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [62999 x i32]* %Weights_copy)
  %2 = getelementptr [6920 x i32], [6920 x i32]* %InModel_copy, i32 0, i32 0
  %3 = getelementptr [62999 x i32], [62999 x i32]* %Weights_copy, i32 0, i32 0
  call void @apatb_CNN_hw(i32* %2, i32* %OutModel0_copy, i32* %3)
  call void @copy_back([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, [6920 x i32]* %InModel_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %OutModel0, i32* %OutModel0_copy, [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, [62999 x i32]* %Weights_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [6920 x i32]* noalias nocapture "unpacked"="1.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0.0.0", [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="4", [62999 x i32]* noalias nocapture "unpacked"="5.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a6920struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([6920 x i32]* %1, [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.253"(i32* align 512 %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0a62999struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([62999 x i32]* %5, [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [6920 x i32]* noalias nocapture readonly "unpacked"="1.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [62999 x i32]* noalias nocapture readonly "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a6920struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.281"([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, [6920 x i32]* %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a62999struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.181"([62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %4, [62999 x i32]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a62999struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.181"([62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [62999 x i32]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [62999 x i32], [62999 x i32]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 62999
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a62999struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([62999 x i32]* noalias nocapture "unpacked"="0.0.0.0", [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [62999 x i32], [62999 x i32]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 62999
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.253"(i32* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %.0.0.04, align 4
  store i32 %3, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %1, align 512
  store i32 %3, i32* %.01.0.05, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a6920struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.281"([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [6920 x i32]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [6920 x i32], [6920 x i32]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6920
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a6920struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"([6920 x i32]* noalias nocapture "unpacked"="0.0.0.0", [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"], [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [6920 x i32], [6920 x i32]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %3, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6920
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_CNN_hw(i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [6920 x i32]* noalias nocapture readonly "unpacked"="1.0.0.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0.0.0", [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [62999 x i32]* noalias nocapture readonly "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  ret void
}

define void @CNN_hw_stub_wrapper(i32*, i32*, i32*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 27680)
  %3 = bitcast i8* %malloccall to [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  %4 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %malloccall1 = tail call i8* @malloc(i64 251996)
  %5 = bitcast i8* %malloccall1 to [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]*
  %6 = bitcast i32* %0 to [6920 x i32]*
  %7 = bitcast i32* %2 to [62999 x i32]*
  call void @copy_out([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %3, [6920 x i32]* %6, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* %1, [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %5, [62999 x i32]* %7)
  %8 = bitcast [6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*
  %9 = bitcast [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %5 to %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*
  call void @CNN_hw_stub(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %8, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %9)
  call void @copy_in([6920 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %3, [6920 x i32]* %6, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* %1, [62999 x %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"]* %5, [62999 x i32]* %7)
  ret void
}

declare void @CNN_hw_stub(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
