; ModuleID = 'E:/HLSP2/HLS_v1_v4_NPC_SDA_20khz/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 12, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 12, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_int<3>" = type { %"struct.ap_int_base<3, true>" }
%"struct.ap_int_base<3, true>" = type { %"struct.ssdm_int<3, true>" }
%"struct.ssdm_int<3, true>" = type { i3 }
%"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<4, 2, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<4, 2, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<4, true>" }
%"struct.ssdm_int<4, true>" = type { i4 }
%"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<10, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<10, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<10, true>" }
%"struct.ssdm_int<10, true>" = type { i10 }
%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 2, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 2, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_MPCcore_ir(%"struct.ap_int<8>"* noalias nocapture nonnull %y, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* nocapture readonly %Jin, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %J, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %Calc, %"struct.ap_int<8>"* noalias nocapture nonnull %allocationCal, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %xref, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" %x, %"struct.ap_int<3>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" %gateT, i1* noalias nocapture nonnull "fpga.decayed.dim.hint"="6" %gate, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %v, %"struct.ap_int<3>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="3" %prestate, %"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>"* nocapture readonly %Q_quad, %"struct.ap_int<8>"* nocapture readonly %Q_quad_mos, %"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>"* nocapture readonly %Q_switchConst_IGBT, %"struct.ap_int<8>"* nocapture readonly %Q_switchConst_MOS, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* nocapture readonly %Q_currentlim) local_unnamed_addr #0 {
entry:
  %y_copy = alloca i8, align 512
  %J_copy = alloca i32, align 512
  %Calc_copy = alloca i16, align 512
  %allocationCal_copy = alloca i8, align 512
  %xref_copy_0 = alloca i16, align 512
  %xref_copy_1 = alloca i16, align 512
  %xref_copy_2 = alloca i16, align 512
  %xref_copy_3 = alloca i16, align 512
  %xref_copy_4 = alloca i16, align 512
  %xref_copy_5 = alloca i16, align 512
  %x_copy_0 = alloca i16, align 512
  %x_copy_1 = alloca i16, align 512
  %x_copy_2 = alloca i16, align 512
  %x_copy_3 = alloca i16, align 512
  %x_copy_4 = alloca i16, align 512
  %x_copy_5 = alloca i16, align 512
  %gateT_copy_0 = alloca i3, align 512
  %gateT_copy_1 = alloca i3, align 512
  %gateT_copy_2 = alloca i3, align 512
  %gate_copy_0 = alloca i1, align 512
  %gate_copy_1 = alloca i1, align 512
  %gate_copy_2 = alloca i1, align 512
  %gate_copy_3 = alloca i1, align 512
  %gate_copy_4 = alloca i1, align 512
  %gate_copy_5 = alloca i1, align 512
  %v_copy_0 = alloca i16, align 512
  %v_copy_1 = alloca i16, align 512
  %prestate_copy_0 = alloca i3, align 512
  %prestate_copy_1 = alloca i3, align 512
  %prestate_copy_2 = alloca i3, align 512
  %0 = bitcast %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %xref to [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %x to [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*
  %2 = bitcast %"struct.ap_int<3>"* %gateT to [3 x %"struct.ap_int<3>"]*
  %3 = bitcast i1* %gate to [6 x i1]*
  %4 = bitcast %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %v to [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]*
  %5 = bitcast %"struct.ap_int<3>"* %prestate to [3 x %"struct.ap_int<3>"]*
  call void @copy_in(%"struct.ap_int<8>"* nonnull %y, i8* nonnull align 512 %y_copy, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* nonnull %J, i32* nonnull align 512 %J_copy, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* nonnull %Calc, i16* nonnull align 512 %Calc_copy, %"struct.ap_int<8>"* nonnull %allocationCal, i8* nonnull align 512 %allocationCal_copy, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i16* nonnull align 512 %xref_copy_0, i16* nonnull align 512 %xref_copy_1, i16* nonnull align 512 %xref_copy_2, i16* nonnull align 512 %xref_copy_3, i16* nonnull align 512 %xref_copy_4, i16* nonnull align 512 %xref_copy_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i16* nonnull align 512 %x_copy_0, i16* nonnull align 512 %x_copy_1, i16* nonnull align 512 %x_copy_2, i16* nonnull align 512 %x_copy_3, i16* nonnull align 512 %x_copy_4, i16* nonnull align 512 %x_copy_5, [3 x %"struct.ap_int<3>"]* nonnull %2, i3* nonnull align 512 %gateT_copy_0, i3* nonnull align 512 %gateT_copy_1, i3* nonnull align 512 %gateT_copy_2, [6 x i1]* nonnull %3, i1* nonnull align 512 %gate_copy_0, i1* nonnull align 512 %gate_copy_1, i1* nonnull align 512 %gate_copy_2, i1* nonnull align 512 %gate_copy_3, i1* nonnull align 512 %gate_copy_4, i1* nonnull align 512 %gate_copy_5, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* nonnull %4, i16* nonnull align 512 %v_copy_0, i16* nonnull align 512 %v_copy_1, [3 x %"struct.ap_int<3>"]* nonnull %5, i3* nonnull align 512 %prestate_copy_0, i3* nonnull align 512 %prestate_copy_1, i3* nonnull align 512 %prestate_copy_2)
  call void @apatb_MPCcore_hw(i8* %y_copy, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %Jin, i32* %J_copy, i16* %Calc_copy, i8* %allocationCal_copy, i16* %xref_copy_0, i16* %xref_copy_1, i16* %xref_copy_2, i16* %xref_copy_3, i16* %xref_copy_4, i16* %xref_copy_5, i16* %x_copy_0, i16* %x_copy_1, i16* %x_copy_2, i16* %x_copy_3, i16* %x_copy_4, i16* %x_copy_5, i3* %gateT_copy_0, i3* %gateT_copy_1, i3* %gateT_copy_2, i1* %gate_copy_0, i1* %gate_copy_1, i1* %gate_copy_2, i1* %gate_copy_3, i1* %gate_copy_4, i1* %gate_copy_5, i16* %v_copy_0, i16* %v_copy_1, i3* %prestate_copy_0, i3* %prestate_copy_1, i3* %prestate_copy_2, %"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>"* %Q_quad, %"struct.ap_int<8>"* %Q_quad_mos, %"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>"* %Q_switchConst_IGBT, %"struct.ap_int<8>"* %Q_switchConst_MOS, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %Q_currentlim)
  call void @copy_back(%"struct.ap_int<8>"* %y, i8* %y_copy, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %J, i32* %J_copy, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %Calc, i16* %Calc_copy, %"struct.ap_int<8>"* %allocationCal, i8* %allocationCal_copy, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, i16* %xref_copy_0, i16* %xref_copy_1, i16* %xref_copy_2, i16* %xref_copy_3, i16* %xref_copy_4, i16* %xref_copy_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %1, i16* %x_copy_0, i16* %x_copy_1, i16* %x_copy_2, i16* %x_copy_3, i16* %x_copy_4, i16* %x_copy_5, [3 x %"struct.ap_int<3>"]* %2, i3* %gateT_copy_0, i3* %gateT_copy_1, i3* %gateT_copy_2, [6 x i1]* %3, i1* %gate_copy_0, i1* %gate_copy_1, i1* %gate_copy_2, i1* %gate_copy_3, i1* %gate_copy_4, i1* %gate_copy_5, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %4, i16* %v_copy_0, i16* %v_copy_1, [3 x %"struct.ap_int<3>"]* %5, i3* %prestate_copy_0, i3* %prestate_copy_1, i3* %prestate_copy_2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"(i32* noalias align 512, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %.0.0.04, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias, i16* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %1, align 512
  store i16 %5, i16* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a6i1.183.184(i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [6 x i1]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i1* %_0, null
  %2 = icmp eq [6 x i1]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [6 x i1], [6 x i1]* %0, i64 0, i64 %for.loop.idx1
  %4 = bitcast i1* %src.addr to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i1
  %7 = trunc i64 %for.loop.idx1 to i3
  switch i3 %7, label %dst.addr.case.5 [
    i3 0, label %dst.addr.case.0
    i3 1, label %dst.addr.case.1
    i3 2, label %dst.addr.case.2
    i3 3, label %dst.addr.case.3
    i3 -4, label %dst.addr.case.4
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i1 %6, i1* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i1 %6, i1* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i1 %6, i1* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i1 %6, i1* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store i1 %6, i1* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  %8 = icmp eq i3 %7, -3
  call void @llvm.assume(i1 %8)
  store i1 %6, i1* %_5, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.185.186"(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i16* %_0, null
  %2 = icmp eq [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  %5 = trunc i64 %for.loop.idx7 to i1
  %cond = icmp eq i1 %5, false
  br i1 %cond, label %dst.addr.0.0.06.case.0, label %dst.addr.0.0.06.case.1

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i16 %4, i16* %_0, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  call void @llvm.assume(i1 %5)
  store i16 %4, i16* %_1, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in(%"struct.ap_int<8>"* noalias readonly "orig.arg.no"="0", i8* noalias align 512 "orig.arg.no"="1", %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3", %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias readonly "orig.arg.no"="4", i16* noalias align 512 "orig.arg.no"="5", %"struct.ap_int<8>"* noalias readonly "orig.arg.no"="6", i8* noalias align 512 "orig.arg.no"="7", [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="8", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="10", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_01, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_12, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_23, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_34, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_45, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_56, [3 x %"struct.ap_int<3>"]* noalias readonly "orig.arg.no"="12", i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_07, i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_18, i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_29, [6 x i1]* noalias readonly "orig.arg.no"="14", i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_010, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_111, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_212, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_313, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_414, i1* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_515, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="16", i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="17" %_016, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="17" %_117, [3 x %"struct.ap_int<3>"]* noalias readonly "orig.arg.no"="18", i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_018, i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_119, i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_220) #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>.344"(i8* align 512 %1, %"struct.ap_int<8>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"(i32* align 512 %3, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.348"(i16* align 512 %5, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>.344"(i8* align 512 %7, %"struct.ap_int<8>"* %6)
  call void @"onebyonecpy_hls.p0a6struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.179.180"(i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %8)
  call void @"onebyonecpy_hls.p0a6struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.179.180"(i16* align 512 %_01, i16* align 512 %_12, i16* align 512 %_23, i16* align 512 %_34, i16* align 512 %_45, i16* align 512 %_56, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %9)
  call void @"onebyonecpy_hls.p0a3struct.ap_int<3>.181.182"(i3* align 512 %_07, i3* align 512 %_18, i3* align 512 %_29, [3 x %"struct.ap_int<3>"]* %10)
  call void @onebyonecpy_hls.p0a6i1.183.184(i1* align 512 %_010, i1* align 512 %_111, i1* align 512 %_212, i1* align 512 %_313, i1* align 512 %_414, i1* align 512 %_515, [6 x i1]* %11)
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.185.186"(i16* align 512 %_016, i16* align 512 %_117, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %12)
  call void @"onebyonecpy_hls.p0a3struct.ap_int<3>.181.182"(i3* align 512 %_018, i3* align 512 %_119, i3* align 512 %_220, [3 x %"struct.ap_int<3>"]* %13)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a6i1.195.196([6 x i1]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5) #1 {
entry:
  %1 = icmp eq [6 x i1]* %0, null
  %2 = icmp eq i1* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [6 x i1], [6 x i1]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i3
  switch i3 %4, label %src.addr.case.5 [
    i3 0, label %src.addr.case.0
    i3 1, label %src.addr.case.1
    i3 2, label %src.addr.case.2
    i3 3, label %src.addr.case.3
    i3 -4, label %src.addr.case.4
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %5 = bitcast i1* %_0 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %8 = bitcast i1* %_1 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %11 = bitcast i1* %_2 to i8*
  %12 = load i8, i8* %11
  %13 = trunc i8 %12 to i1
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %14 = bitcast i1* %_3 to i8*
  %15 = load i8, i8* %14
  %16 = trunc i8 %15 to i1
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %17 = bitcast i1* %_4 to i8*
  %18 = load i8, i8* %17
  %19 = trunc i8 %18 to i1
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %20 = icmp eq i3 %4, -3
  call void @llvm.assume(i1 %20)
  %21 = bitcast i1* %_5 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i1
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %24 = phi i1 [ %7, %src.addr.case.0 ], [ %10, %src.addr.case.1 ], [ %13, %src.addr.case.2 ], [ %16, %src.addr.case.3 ], [ %19, %src.addr.case.4 ], [ %23, %src.addr.case.5 ]
  store i1 %24, i1* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.197.198"([2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1) #1 {
entry:
  %1 = icmp eq [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, null
  %2 = icmp eq i16* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = trunc i64 %for.loop.idx7 to i1
  %cond = icmp eq i1 %4, false
  br i1 %cond, label %src.addr.0.0.05.case.0, label %src.addr.0.0.05.case.1

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %5 = load i16, i16* %_0, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  call void @llvm.assume(i1 %4)
  %6 = load i16, i16* %_1, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %7 = phi i16 [ %5, %src.addr.0.0.05.case.0 ], [ %6, %src.addr.0.0.05.case.1 ]
  store i16 %7, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out(%"struct.ap_int<8>"* noalias "orig.arg.no"="0", i8* noalias readonly align 512 "orig.arg.no"="1", %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3", %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias "orig.arg.no"="4", i16* noalias readonly align 512 "orig.arg.no"="5", %"struct.ap_int<8>"* noalias "orig.arg.no"="6", i8* noalias readonly align 512 "orig.arg.no"="7", [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="8", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="10", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_34, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_45, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_56, [3 x %"struct.ap_int<3>"]* noalias "orig.arg.no"="12", i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_07, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_18, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_29, [6 x i1]* noalias "orig.arg.no"="14", i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_010, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_111, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_212, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_313, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_414, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_515, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="16", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="17" %_016, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="17" %_117, [3 x %"struct.ap_int<3>"]* noalias "orig.arg.no"="18", i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_018, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_119, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_220) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>.355"(%"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* %6, i8* align 512 %7)
  call void @"onebyonecpy_hls.p0a6struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.191.192"([6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %8, i16* align 512 %_0, i16* align 512 %_1, i16* align 512 %_2, i16* align 512 %_3, i16* align 512 %_4, i16* align 512 %_5)
  call void @"onebyonecpy_hls.p0a6struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.191.192"([6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %9, i16* align 512 %_01, i16* align 512 %_12, i16* align 512 %_23, i16* align 512 %_34, i16* align 512 %_45, i16* align 512 %_56)
  call void @"onebyonecpy_hls.p0a3struct.ap_int<3>.193.194"([3 x %"struct.ap_int<3>"]* %10, i3* align 512 %_07, i3* align 512 %_18, i3* align 512 %_29)
  call void @onebyonecpy_hls.p0a6i1.195.196([6 x i1]* %11, i1* align 512 %_010, i1* align 512 %_111, i1* align 512 %_212, i1* align 512 %_313, i1* align 512 %_414, i1* align 512 %_515)
  call void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.197.198"([2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %12, i16* align 512 %_016, i16* align 512 %_117)
  call void @"onebyonecpy_hls.p0a3struct.ap_int<3>.193.194"([3 x %"struct.ap_int<3>"]* %13, i3* align 512 %_018, i3* align 512 %_119, i3* align 512 %_220)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a3struct.ap_int<3>.193.194"([3 x %"struct.ap_int<3>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2) #1 {
entry:
  %1 = icmp eq [3 x %"struct.ap_int<3>"]* %0, null
  %2 = icmp eq i3* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [3 x %"struct.ap_int<3>"], [3 x %"struct.ap_int<3>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = trunc i64 %for.loop.idx7 to i2
  switch i2 %4, label %src.addr.0.0.05.case.2 [
    i2 0, label %src.addr.0.0.05.case.0
    i2 1, label %src.addr.0.0.05.case.1
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %5 = bitcast i3* %_0 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i3
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %8 = bitcast i3* %_1 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i3
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %11 = icmp eq i2 %4, -2
  call void @llvm.assume(i1 %11)
  %12 = bitcast i3* %_2 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i3
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %15 = phi i3 [ %7, %src.addr.0.0.05.case.0 ], [ %10, %src.addr.0.0.05.case.1 ], [ %14, %src.addr.0.0.05.case.2 ]
  store i3 %15, i3* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a3struct.ap_int<3>.181.182"(i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i3* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [3 x %"struct.ap_int<3>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i3* %_0, null
  %2 = icmp eq [3 x %"struct.ap_int<3>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [3 x %"struct.ap_int<3>"], [3 x %"struct.ap_int<3>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = bitcast i3* %src.addr.0.0.05 to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i3
  %7 = trunc i64 %for.loop.idx7 to i2
  switch i2 %7, label %dst.addr.0.0.06.case.2 [
    i2 0, label %dst.addr.0.0.06.case.0
    i2 1, label %dst.addr.0.0.06.case.1
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i3 %6, i3* %_0, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i3 %6, i3* %_1, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  %8 = icmp eq i2 %7, -2
  call void @llvm.assume(i1 %8)
  store i3 %6, i3* %_2, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a6struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.179.180"(i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i16* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i16* %_0, null
  %2 = icmp eq [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"], [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  %5 = trunc i64 %for.loop.idx7 to i3
  switch i3 %5, label %dst.addr.0.0.06.case.5 [
    i3 0, label %dst.addr.0.0.06.case.0
    i3 1, label %dst.addr.0.0.06.case.1
    i3 2, label %dst.addr.0.0.06.case.2
    i3 3, label %dst.addr.0.0.06.case.3
    i3 -4, label %dst.addr.0.0.06.case.4
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i16 %4, i16* %_0, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i16 %4, i16* %_1, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i16 %4, i16* %_2, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i16 %4, i16* %_3, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  store i16 %4, i16* %_4, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.5:                           ; preds = %for.loop
  %6 = icmp eq i3 %5, -3
  call void @llvm.assume(i1 %6)
  store i16 %4, i16* %_5, align 512
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.5, %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.0.0.06.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @"onebyonecpy_hls.p0a6struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.191.192"([6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5) #1 {
entry:
  %1 = icmp eq [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, null
  %2 = icmp eq i16* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"], [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %4 = trunc i64 %for.loop.idx7 to i3
  switch i3 %4, label %src.addr.0.0.05.case.5 [
    i3 0, label %src.addr.0.0.05.case.0
    i3 1, label %src.addr.0.0.05.case.1
    i3 2, label %src.addr.0.0.05.case.2
    i3 3, label %src.addr.0.0.05.case.3
    i3 -4, label %src.addr.0.0.05.case.4
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %5 = load i16, i16* %_0, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %6 = load i16, i16* %_1, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %7 = load i16, i16* %_2, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %8 = load i16, i16* %_3, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %9 = load i16, i16* %_4, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.5:                           ; preds = %for.loop
  %10 = icmp eq i3 %4, -3
  call void @llvm.assume(i1 %10)
  %11 = load i16, i16* %_5, align 512
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.5, %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %12 = phi i16 [ %5, %src.addr.0.0.05.case.0 ], [ %6, %src.addr.0.0.05.case.1 ], [ %7, %src.addr.0.0.05.case.2 ], [ %8, %src.addr.0.0.05.case.3 ], [ %9, %src.addr.0.0.05.case.4 ], [ %11, %src.addr.0.0.05.case.5 ]
  store i16 %12, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.0.0.05.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* noalias, i8* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq %"struct.ap_int<8>"* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_int<8>", %"struct.ap_int<8>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %1, align 512
  store i8 %5, i8* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>.344"(i8* noalias align 512, %"struct.ap_int<8>"* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq %"struct.ap_int<8>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_int<8>", %"struct.ap_int<8>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.04, align 1
  store i8 %5, i8* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>.348"(i16* noalias align 512, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %.0.0.04, align 2
  store i16 %5, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>.355"(%"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* noalias, i32* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %1, align 512
  store i32 %5, i32* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_MPCcore_hw(i8*, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"*, i32*, i16*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i3*, i3*, i3*, i1*, i1*, i1*, i1*, i1*, i1*, i16*, i16*, i3*, i3*, i3*, %"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back(%"struct.ap_int<8>"* noalias "orig.arg.no"="0", i8* noalias readonly align 512 "orig.arg.no"="1", %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "orig.arg.no"="3", %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* noalias "orig.arg.no"="4", i16* noalias readonly align 512 "orig.arg.no"="5", %"struct.ap_int<8>"* noalias "orig.arg.no"="6", i8* noalias readonly align 512 "orig.arg.no"="7", [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="8", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_0, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_1, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_2, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_3, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_4, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="9" %_5, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="10", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_01, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_12, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_23, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_34, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_45, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" %_56, [3 x %"struct.ap_int<3>"]* noalias "orig.arg.no"="12", i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_07, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_18, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" %_29, [6 x i1]* noalias "orig.arg.no"="14", i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_010, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_111, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_212, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_313, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_414, i1* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="15" %_515, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="16", i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="17" %_016, i16* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="17" %_117, [3 x %"struct.ap_int<3>"]* noalias "orig.arg.no"="18", i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_018, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_119, i3* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="19" %_220) #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>.355"(%"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %4, i16* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<8>"(%"struct.ap_int<8>"* %6, i8* align 512 %7)
  call void @"onebyonecpy_hls.p0a3struct.ap_int<3>.193.194"([3 x %"struct.ap_int<3>"]* %10, i3* align 512 %_07, i3* align 512 %_18, i3* align 512 %_29)
  call void @onebyonecpy_hls.p0a6i1.195.196([6 x i1]* %11, i1* align 512 %_010, i1* align 512 %_111, i1* align 512 %_212, i1* align 512 %_313, i1* align 512 %_414, i1* align 512 %_515)
  ret void
}

define void @MPCcore_hw_stub_wrapper(i8*, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"*, i32*, i16*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i3*, i3*, i3*, i1*, i1*, i1*, i1*, i1*, i1*, i16*, i16*, i3*, i3*, i3*, %"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*) #5 {
entry:
  %36 = alloca %"struct.ap_int<8>"
  %37 = alloca %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"
  %38 = alloca %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"
  %39 = alloca %"struct.ap_int<8>"
  %40 = alloca [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]
  %41 = alloca [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]
  %42 = alloca [3 x %"struct.ap_int<3>"]
  %43 = alloca [6 x i1]
  %44 = alloca [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]
  %45 = alloca [3 x %"struct.ap_int<3>"]
  call void @copy_out(%"struct.ap_int<8>"* %36, i8* %0, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %37, i32* %2, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %38, i16* %3, %"struct.ap_int<8>"* %39, i8* %4, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %40, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %41, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, [3 x %"struct.ap_int<3>"]* %42, i3* %17, i3* %18, i3* %19, [6 x i1]* %43, i1* %20, i1* %21, i1* %22, i1* %23, i1* %24, i1* %25, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %44, i16* %26, i16* %27, [3 x %"struct.ap_int<3>"]* %45, i3* %28, i3* %29, i3* %30)
  %46 = bitcast [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %40 to %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*
  %47 = bitcast [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %41 to %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*
  %48 = bitcast [3 x %"struct.ap_int<3>"]* %42 to %"struct.ap_int<3>"*
  %49 = bitcast [6 x i1]* %43 to i1*
  %50 = bitcast [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %44 to %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*
  %51 = bitcast [3 x %"struct.ap_int<3>"]* %45 to %"struct.ap_int<3>"*
  call void @MPCcore_hw_stub(%"struct.ap_int<8>"* %36, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %1, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %37, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %38, %"struct.ap_int<8>"* %39, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %46, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %47, %"struct.ap_int<3>"* %48, i1* %49, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %50, %"struct.ap_int<3>"* %51, %"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>"* %31, %"struct.ap_int<8>"* %32, %"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>"* %33, %"struct.ap_int<8>"* %34, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %35)
  call void @copy_in(%"struct.ap_int<8>"* %36, i8* %0, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"* %37, i32* %2, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"* %38, i16* %3, %"struct.ap_int<8>"* %39, i8* %4, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %40, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9, i16* %10, [6 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %41, i16* %11, i16* %12, i16* %13, i16* %14, i16* %15, i16* %16, [3 x %"struct.ap_int<3>"]* %42, i3* %17, i3* %18, i3* %19, [6 x i1]* %43, i1* %20, i1* %21, i1* %22, i1* %23, i1* %24, i1* %25, [2 x %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"]* %44, i16* %26, i16* %27, [3 x %"struct.ap_int<3>"]* %45, i3* %28, i3* %29, i3* %30)
  ret void
}

declare void @MPCcore_hw_stub(%"struct.ap_int<8>"*, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<32, 12, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<3>"*, i1*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<3>"*, %"struct.ap_fixed<4, 2, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<10, 8, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_int<8>"*, %"struct.ap_fixed<16, 2, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
