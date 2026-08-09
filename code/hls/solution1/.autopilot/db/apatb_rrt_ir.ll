; ModuleID = '/home/sam/project/vitis_hls/new_fixedpoint2205/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>" = type { %"struct.hls::axis<ap_int<64>, 2, 5, 6>" }
%"struct.hls::axis<ap_int<64>, 2, 5, 6>" = type { %"struct.ap_int<64>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<5>", %"struct.ap_uint<6>" }
%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, true>" }
%"struct.ap_int_base<64, true>" = type { %"struct.ssdm_int<64, true>" }
%"struct.ssdm_int<64, true>" = type { i64 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<5>" = type { %"struct.ap_int_base<5, false>" }
%"struct.ap_int_base<5, false>" = type { %"struct.ssdm_int<5, false>" }
%"struct.ssdm_int<5, false>" = type { i5 }
%"struct.ap_uint<6>" = type { %"struct.ap_int_base<6, false>" }
%"struct.ap_int_base<6, false>" = type { %"struct.ssdm_int<6, false>" }
%"struct.ssdm_int<6, false>" = type { i6 }
%"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>" = type { %"struct.hls::axis<ap_int<32>, 2, 5, 6>" }
%"struct.hls::axis<ap_int<32>, 2, 5, 6>" = type { %"struct.ap_int<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<5>", %"struct.ap_uint<6>" }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define i1 @apatb_rrt_ir(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %dataInStream, float %xrandx, float %xrandy, i32 %N, float* %oup, float %Squared_r_n, float %Squared_R_Robot, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %XNearStream) local_unnamed_addr #0 {
entry:
  %dataInStream_copy.data = alloca i64
  %dataInStream_copy.keep = alloca i8
  %dataInStream_copy.strb = alloca i8
  %dataInStream_copy.user = alloca i2
  %dataInStream_copy.last = alloca i1
  %dataInStream_copy.id = alloca i5
  %dataInStream_copy.dest = alloca i6
  %oup_copy = alloca [5 x float], align 512
  %XNearStream_copy.data = alloca i32
  %XNearStream_copy.keep = alloca i4
  %XNearStream_copy.strb = alloca i4
  %XNearStream_copy.user = alloca i2
  %XNearStream_copy.last = alloca i1
  %XNearStream_copy.id = alloca i5
  %XNearStream_copy.dest = alloca i6
  %0 = bitcast float* %oup to [5 x float]*
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %dataInStream, i64* %dataInStream_copy.data, i8* %dataInStream_copy.keep, i8* %dataInStream_copy.strb, i2* %dataInStream_copy.user, i1* %dataInStream_copy.last, i5* %dataInStream_copy.id, i6* %dataInStream_copy.dest, [5 x float]* %0, [5 x float]* nonnull align 512 %oup_copy, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %XNearStream, i32* %XNearStream_copy.data, i4* %XNearStream_copy.keep, i4* %XNearStream_copy.strb, i2* %XNearStream_copy.user, i1* %XNearStream_copy.last, i5* %XNearStream_copy.id, i6* %XNearStream_copy.dest)
  %1 = getelementptr inbounds [5 x float], [5 x float]* %oup_copy, i32 0, i32 0
  %2 = call i1 @apatb_rrt_hw(i64* %dataInStream_copy.data, i8* %dataInStream_copy.keep, i8* %dataInStream_copy.strb, i2* %dataInStream_copy.user, i1* %dataInStream_copy.last, i5* %dataInStream_copy.id, i6* %dataInStream_copy.dest, float %xrandx, float %xrandy, i32 %N, float* %1, float %Squared_r_n, float %Squared_R_Robot, i32* %XNearStream_copy.data, i4* %XNearStream_copy.keep, i4* %XNearStream_copy.strb, i2* %XNearStream_copy.user, i1* %XNearStream_copy.last, i5* %XNearStream_copy.id, i6* %XNearStream_copy.dest)
  call fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %dataInStream, i64* %dataInStream_copy.data, i8* %dataInStream_copy.keep, i8* %dataInStream_copy.strb, i2* %dataInStream_copy.user, i1* %dataInStream_copy.last, i5* %dataInStream_copy.id, i6* %dataInStream_copy.dest, [5 x float]* %0, [5 x float]* nonnull align 512 %oup_copy, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %XNearStream, i32* %XNearStream_copy.data, i4* %XNearStream_copy.keep, i4* %XNearStream_copy.strb, i2* %XNearStream_copy.user, i1* %XNearStream_copy.last, i5* %XNearStream_copy.id, i6* %XNearStream_copy.dest)
  ret i1 %2
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"*, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, [5 x float]* readonly, [5 x float]* noalias align 512, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.4" %_V_last_V5, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.5" %_V_id_V6, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>.207"(i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, i5* %_V_id_V, i6* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0)
  call fastcc void @onebyonecpy_hls.p0a5f32([5 x float]* align 512 %2, [5 x float]* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"(i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i2* %_V_user_V4, i1* %_V_last_V5, i5* %_V_id_V6, i6* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %3)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #2 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* nonnull align 512 %0, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, i5* %_V_id_V, i6* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i5* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i6* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"
  %2 = alloca i2
  %3 = alloca i1
  %4 = alloca i5
  %5 = alloca i6
  %6 = alloca i64
  %7 = alloca i8
  %8 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i64* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_8(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i64* %6 to i8*
  %12 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_pop_8(i8* %11, i8* %12)
  %13 = load volatile i64, i64* %6
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_int<64>"* %14 to i64*
  store i64 %13, i64* %15
  call void @fpga_fifo_pop_1(i8* %8, i8* %_V_keep_V)
  %16 = load volatile i8, i8* %8
  %17 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 1
  %18 = bitcast %"struct.ap_uint<8>"* %17 to i8*
  store i8 %16, i8* %18
  call void @fpga_fifo_pop_1(i8* %7, i8* %_V_strb_V)
  %19 = load volatile i8, i8* %7
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 2
  %21 = bitcast %"struct.ap_uint<8>"* %20 to i8*
  store i8 %19, i8* %21
  %22 = bitcast i2* %2 to i8*
  %23 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %22, i8* %23)
  %24 = bitcast i2* %2 to i8*
  %25 = load i8, i8* %24
  %26 = trunc i8 %25 to i2
  %27 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 3
  %28 = bitcast %"struct.ap_uint<2>"* %27 to i2*
  store i2 %26, i2* %28
  %29 = bitcast i1* %3 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %3 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 4
  %35 = bitcast %"struct.ap_uint<1>"* %34 to i1*
  store i1 %33, i1* %35
  %36 = bitcast i5* %4 to i8*
  %37 = bitcast i5* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %36, i8* %37)
  %38 = bitcast i5* %4 to i8*
  %39 = load i8, i8* %38
  %40 = trunc i8 %39 to i5
  %41 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 5
  %42 = bitcast %"struct.ap_uint<5>"* %41 to i5*
  store i5 %40, i5* %42
  %43 = bitcast i6* %5 to i8*
  %44 = bitcast i6* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %43, i8* %44)
  %45 = bitcast i6* %5 to i8*
  %46 = load i8, i8* %45
  %47 = trunc i8 %46 to i6
  %48 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 6
  %49 = bitcast %"struct.ap_uint<6>"* %48 to i6*
  store i6 %47, i6* %49
  %50 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1 to i8*
  %51 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %50, i8* %51)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a5f32([5 x float]* noalias align 512, [5 x float]* noalias readonly) unnamed_addr #4 {
entry:
  %2 = icmp eq [5 x float]* %0, null
  %3 = icmp eq [5 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [5 x float], [5 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [5 x float], [5 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, i5* %_V_id_V, i6* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i5* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i6* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>" %7, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<32>"* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<2>"* %20 to i2*
  %22 = bitcast i2* %21 to i8*
  %23 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 5
  %29 = bitcast %"struct.ap_uint<5>"* %28 to i5*
  %30 = bitcast i5* %29 to i8*
  %31 = bitcast i5* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<6>"* %32 to i6*
  %34 = bitcast i6* %33 to i8*
  %35 = bitcast i6* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %34, i8* %35)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"*, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, [5 x float]*, [5 x float]* noalias readonly align 512, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"*, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V1, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V2, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.4" %_V_last_V5, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.5" %_V_id_V6, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.6" %_V_dest_V7) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, i5* %_V_id_V, i6* %_V_dest_V)
  call fastcc void @onebyonecpy_hls.p0a5f32([5 x float]* %1, [5 x float]* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>.196"(%"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %3, i32* %_V_data_V1, i4* %_V_keep_V2, i4* %_V_strb_V3, i2* %_V_user_V4, i1* %_V_last_V5, i5* %_V_id_V6, i6* %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>.196"(%"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #2 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>.199"(%"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* nonnull align 512 %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, i5* %_V_id_V, i6* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>.199"(%"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i5* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i6* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i2
  %6 = alloca i1
  %7 = alloca i5
  %8 = alloca i6
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i32* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_4(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i32* %2 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = load volatile i32, i32* %2
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_int<32>"* %14 to i32*
  store i32 %13, i32* %15
  %16 = bitcast i4* %4 to i8*
  %17 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %4 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 1
  %22 = bitcast %"struct.ap_uint<4>"* %21 to i4*
  store i4 %20, i4* %22
  %23 = bitcast i4* %3 to i8*
  %24 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i4* %3 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i4
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 2
  %29 = bitcast %"struct.ap_uint<4>"* %28 to i4*
  store i4 %27, i4* %29
  %30 = bitcast i2* %5 to i8*
  %31 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i2* %5 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i2
  %35 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 3
  %36 = bitcast %"struct.ap_uint<2>"* %35 to i2*
  store i2 %34, i2* %36
  %37 = bitcast i1* %6 to i8*
  %38 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %37, i8* %38)
  %39 = bitcast i1* %6 to i8*
  %40 = load i8, i8* %39
  %41 = trunc i8 %40 to i1
  %42 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 4
  %43 = bitcast %"struct.ap_uint<1>"* %42 to i1*
  store i1 %41, i1* %43
  %44 = bitcast i5* %7 to i8*
  %45 = bitcast i5* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %44, i8* %45)
  %46 = bitcast i5* %7 to i8*
  %47 = load i8, i8* %46
  %48 = trunc i8 %47 to i5
  %49 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 5
  %50 = bitcast %"struct.ap_uint<5>"* %49 to i5*
  store i5 %48, i5* %50
  %51 = bitcast i6* %8 to i8*
  %52 = bitcast i6* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %51, i8* %52)
  %53 = bitcast i6* %8 to i8*
  %54 = load i8, i8* %53
  %55 = trunc i8 %54 to i6
  %56 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 6
  %57 = bitcast %"struct.ap_uint<6>"* %56 to i6*
  store i6 %55, i6* %57
  %58 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %1 to i8*
  %59 = bitcast %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %58, i8* %59)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>.207"(i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i5* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i6* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>.210"(i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i2* %_V_user_V, i1* %_V_last_V, i5* %_V_id_V, i6* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>.210"(i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i5* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i6* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>" %7, %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<64>"* %8 to i64*
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<8>"* %12 to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %_V_keep_V)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<8>"* %14 to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %_V_strb_V)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 3
  %17 = bitcast %"struct.ap_uint<2>"* %16 to i2*
  %18 = bitcast i2* %17 to i8*
  %19 = bitcast i2* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 5
  %25 = bitcast %"struct.ap_uint<5>"* %24 to i5*
  %26 = bitcast i5* %25 to i8*
  %27 = bitcast i5* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %1, i32 0, i32 0, i32 6
  %29 = bitcast %"struct.ap_uint<6>"* %28 to i6*
  %30 = bitcast i6* %29 to i8*
  %31 = bitcast i6* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i1 @apatb_rrt_hw(i64*, i8*, i8*, i2*, i1*, i5*, i6*, float, float, i32, float*, float, float, i32*, i4*, i4*, i2*, i1*, i5*, i6*)

define i1 @rrt_hw_stub_wrapper(i64*, i8*, i8*, i2*, i1*, i5*, i6*, float, float, i32, float*, float, float, i32*, i4*, i4*, i2*, i1*, i5*, i6*) #6 {
entry:
  %20 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"
  %21 = alloca %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"
  %22 = bitcast float* %10 to [5 x float]*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %20, i64* %0, i8* %1, i8* %2, i2* %3, i1* %4, i5* %5, i6* %6, [5 x float]* null, [5 x float]* %22, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %21, i32* %13, i4* %14, i4* %15, i2* %16, i1* %17, i5* %18, i6* %19)
  %23 = bitcast [5 x float]* %22 to float*
  %24 = call i1 @rrt_hw_stub(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %20, float %7, float %8, i32 %9, float* %23, float %11, float %12, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %21)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"* %20, i64* %0, i8* %1, i8* %2, i2* %3, i1* %4, i5* %5, i6* %6, [5 x float]* null, [5 x float]* %22, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"* %21, i32* %13, i4* %14, i4* %15, i2* %16, i1* %17, i5* %18, i6* %19)
  ret i1 %24
}

declare i1 @rrt_hw_stub(%"class.hls::stream<hls::axis<ap_int<64>, 2, 5, 6>, 0>"*, float, float, i32, float*, float, float, %"class.hls::stream<hls::axis<ap_int<32>, 2, 5, 6>, 0>"*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
