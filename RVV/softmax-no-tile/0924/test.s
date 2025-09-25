	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfh1p0_zfhmin1p0_zca1p0_zcd1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"test.c"
	.file	0 "/mnt/d/riscv-dnn/test/ops/softmax" "test.c" md5 0x19a7b367691ce9b992ad8a74440f44df
	.file	1 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/machine" "_default_types.h" md5 0xf7024d0682a918b41f94e8be9cd90461
	.file	2 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/sys" "_types.h" md5 0x17b5691773b3e3881dfdbe392c9e8d43
	.file	3 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "strings.h" md5 0xdceb1b71cd72987b246237af8552faba
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	0 96 0                          # test.c:96:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 104 26 prologue_end           # test.c:104:26 @[ test.c:97:5 ]
	vsetvli	a0, zero, e32, m1, ta, ma
.Ltmp1:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlmax <- $x10
	.loc	0 0 26 is_stmt 0                # test.c:0:26
	lui	a1, 1046528
.Ltmp2:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	li	a0, 16
.Ltmp3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlmax <- $x10
	.loc	0 144 63 is_stmt 1              # test.c:144:63 @[ test.c:97:5 ]
	vmv.v.x	v11, a1
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(src)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
.Ltmp4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src_orig <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- 16
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vneg_inf_int <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vnegInf <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	.loc	0 0 63 is_stmt 0                # test.c:0:63
	vmv.v.v	v12, v11
.Ltmp5:
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax <- undef
	.loc	0 174 21 is_stmt 1              # test.c:174:21 @[ test.c:97:5 ]
	vsetvli	a2, a0, e32, m1, ta, ma
.Ltmp6:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 175 27                        # test.c:175:27 @[ test.c:97:5 ]
	vle32.v	v8, (a1)
.Ltmp7:
	#DEBUG_VALUE: vx <- undef
	.loc	0 177 13                        # test.c:177:13 @[ test.c:97:5 ]
	sub	a0, a0, a2
.Ltmp8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	.loc	0 176 16                        # test.c:176:16 @[ test.c:97:5 ]
	vfmax.vv	v12, v12, v8
	.loc	0 178 13                        # test.c:178:13 @[ test.c:97:5 ]
	slli	a2, a2, 2
.Ltmp9:
	add	a1, a1, a2
.Ltmp10:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 173 5                         # test.c:173:5 @[ test.c:97:5 ]
	bnez	a0, .LBB0_1
.Ltmp11:
# %bb.2:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	t1, 0
	.loc	0 143 63 is_stmt 1              # test.c:143:63 @[ test.c:97:5 ]
	vsetvli	a1, zero, e32, m1, ta, ma
.Ltmp12:
	vmv.v.i	v8, 0
	lui	a1, 261003
	lui	a2, 258839
.Ltmp13:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2 <- undef
	.loc	0 0 63 is_stmt 0                # test.c:0:63
	lui	a6, 231425
	lui	a4, 260096
.Ltmp14:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo <- undef
	lui	a5, 258048
.Ltmp15:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0 <- undef
	.loc	0 146 63 is_stmt 1              # test.c:146:63 @[ test.c:97:5 ]
	vmv.v.x	v9, a2
	lui	a7, 254635
	.loc	0 148 59                        # test.c:148:59 @[ test.c:97:5 ]
	vmv.v.x	v10, a4
	lui	t0, 250539
	.loc	0 182 26                        # test.c:182:26 @[ test.c:97:5 ]
	vfredmax.vs	v11, v12, v11
.Ltmp16:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vredmax <- undef
	.loc	0 150 59                        # test.c:150:59 @[ test.c:97:5 ]
	vmv.v.x	v12, a5
	addi	a5, sp, 12
.Ltmp17:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vredmax_int <- undef
	.loc	0 192 5 is_stmt 0               # test.c:192:5 @[ test.c:97:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vse32.v	v11, (a5)
	lui	a5, 245897
	addi	a1, a1, -1477
.Ltmp18:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero <- undef
	.loc	0 145 63 is_stmt 1              # test.c:145:63 @[ test.c:97:5 ]
	vsetvli	a3, zero, e32, m1, ta, ma
	vmv.v.x	v13, a1
	lui	a3, 240481
	addi	a1, a6, -1024
.Ltmp19:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi <- undef
	.loc	0 147 63                        # test.c:147:63 @[ test.c:97:5 ]
	vmv.v.x	v14, a1
	lui	a2, 237847
	addi	a1, a7, -1365
.Ltmp20:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2 <- undef
	.loc	0 151 59                        # test.c:151:59 @[ test.c:97:5 ]
	vmv.v.x	v15, a1
	lui	a6, 234095
	addi	a1, t0, -1365
.Ltmp21:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3 <- undef
	.loc	0 152 59                        # test.c:152:59 @[ test.c:97:5 ]
	vmv.v.x	v16, a1
	li	a1, 16
	addi	a5, a5, -1911
.Ltmp22:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4 <- undef
	.loc	0 153 59                        # test.c:153:59 @[ test.c:97:5 ]
	vmv.v.x	v17, a5
.Lpcrel_hi1:
	auipc	a7, %pcrel_hi(src)
	addi	a3, a3, -1183
.Ltmp23:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5 <- undef
	.loc	0 154 59                        # test.c:154:59 @[ test.c:97:5 ]
	vmv.v.x	v18, a3
.Lpcrel_hi2:
	auipc	a4, %pcrel_hi(dst)
	addi	a2, a2, 1492
.Ltmp24:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6 <- undef
	.loc	0 155 59                        # test.c:155:59 @[ test.c:97:5 ]
	vmv.v.x	v20, a2
	li	t0, 127
	addi	a5, a6, -626
.Ltmp25:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7 <- undef
	.loc	0 0 59 is_stmt 0                # test.c:0:59
	addi	a3, a7, %pcrel_lo(.Lpcrel_hi1)
.Ltmp26:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	addi	a4, a4, %pcrel_lo(.Lpcrel_hi2)
.Ltmp27:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:max_x_union <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:max_x_as_int <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- 16
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	.loc	0 156 59 is_stmt 1              # test.c:156:59 @[ test.c:97:5 ]
	vmv.v.x	v21, a5
.Ltmp28:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8 <- undef
	.loc	0 0 59 is_stmt 0                # test.c:0:59
	vsetivli	zero, 1, e32, m1, ta, ma
	vmv1r.v	v19, v8
.Ltmp29:
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	.loc	0 240 30 is_stmt 1              # test.c:240:30 @[ test.c:97:5 ]
	mv	a5, a1
	.loc	0 206 21                        # test.c:206:21 @[ test.c:97:5 ]
	vsetvli	a2, a1, e32, m1, ta, ma
.Ltmp30:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 207 27                        # test.c:207:27 @[ test.c:97:5 ]
	vle32.v	v22, (a3)
.Ltmp31:
	#DEBUG_VALUE: vx <- undef
	.loc	0 210 31                        # test.c:210:31 @[ test.c:97:5 ]
	vrgather.vi	v23, v11, 0
.Ltmp32:
	#DEBUG_VALUE: vmax_x <- undef
	.loc	0 211 14                        # test.c:211:14 @[ test.c:97:5 ]
	vfsub.vv	v22, v22, v23
	.loc	0 216 31                        # test.c:216:31 @[ test.c:97:5 ]
	vfmul.vv	v23, v22, v13
.Ltmp33:
	#DEBUG_VALUE: vxiln2 <- undef
	.loc	0 217 31                        # test.c:217:31 @[ test.c:97:5 ]
	vfcvt.x.f.v	v23, v23
.Ltmp34:
	#DEBUG_VALUE: vk <- undef
	.loc	0 221 31                        # test.c:221:31 @[ test.c:97:5 ]
	vfcvt.f.x.v	v24, v23
.Ltmp35:
	#DEBUG_VALUE: vfk <- undef
	.loc	0 222 31                        # test.c:222:31 @[ test.c:97:5 ]
	vfmul.vv	v25, v24, v9
.Ltmp36:
	#DEBUG_VALUE: vkl2hi <- undef
	.loc	0 224 31                        # test.c:224:31 @[ test.c:97:5 ]
	vfsub.vv	v22, v22, v25
.Ltmp37:
	#DEBUG_VALUE: vr <- undef
	.loc	0 229 13                        # test.c:229:13 @[ test.c:97:5 ]
	vmv1r.v	v25, v21
	.loc	0 214 9                         # test.c:214:9 @[ test.c:97:5 ]
	#APP
	frrm	a0
	#NO_APP
.Ltmp38:
	#DEBUG_VALUE: old_frm <- $x10
	.loc	0 215 9                         # test.c:215:9 @[ test.c:97:5 ]
	#APP
	fsrm	t1
	#NO_APP
	.loc	0 251 14                        # test.c:251:14 @[ test.c:97:5 ]
	sub	a1, a1, a2
.Ltmp39:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x11
	.loc	0 218 9                         # test.c:218:9 @[ test.c:97:5 ]
	#APP
	fsrm	a0
	#NO_APP
	.loc	0 252 14                        # test.c:252:14 @[ test.c:97:5 ]
	slli	a2, a2, 2
.Ltmp40:
	#DEBUG_VALUE: vl <- $x12
	add	a3, a3, a2
.Ltmp41:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	.loc	0 240 30                        # test.c:240:30 @[ test.c:97:5 ]
	vsetvli	zero, a5, e32, m1, ta, ma
	vadd.vx	v23, v23, t0
.Ltmp42:
	#DEBUG_VALUE: vbiased <- undef
	.loc	0 223 31                        # test.c:223:31 @[ test.c:97:5 ]
	vfmul.vv	v24, v24, v14
.Ltmp43:
	#DEBUG_VALUE: vkl2lo <- undef
	.loc	0 241 30                        # test.c:241:30 @[ test.c:97:5 ]
	vsll.vi	v23, v23, 23
.Ltmp44:
	#DEBUG_VALUE: vexp2 <- undef
	#DEBUG_VALUE: vf2k <- undef
	.loc	0 225 14                        # test.c:225:14 @[ test.c:97:5 ]
	vfsub.vv	v22, v22, v24
.Ltmp45:
	#DEBUG_VALUE: p <- undef
	.loc	0 229 13                        # test.c:229:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v20
	.loc	0 230 13                        # test.c:230:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v18
	.loc	0 231 13                        # test.c:231:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v17
	.loc	0 232 13                        # test.c:232:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v16
	.loc	0 233 13                        # test.c:233:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v15
	.loc	0 234 13                        # test.c:234:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v12
	.loc	0 235 13                        # test.c:235:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v10
	.loc	0 236 13                        # test.c:236:13 @[ test.c:97:5 ]
	vfmadd.vv	v25, v22, v10
.Ltmp46:
	#DEBUG_VALUE: exp_bias <- 127
	.loc	0 245 30                        # test.c:245:30 @[ test.c:97:5 ]
	vfmul.vv	v22, v25, v23
.Ltmp47:
	#DEBUG_VALUE: vexp <- undef
	.loc	0 247 9 is_stmt 0               # test.c:247:9 @[ test.c:97:5 ]
	vse32.v	v22, (a4)
	.loc	0 248 30 is_stmt 1              # test.c:248:30 @[ test.c:97:5 ]
	vfredosum.vs	v22, v22, v8
.Ltmp48:
	#DEBUG_VALUE: vblk <- undef
	.loc	0 249 17                        # test.c:249:17 @[ test.c:97:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vfadd.vv	v19, v19, v22
	.loc	0 253 14                        # test.c:253:14 @[ test.c:97:5 ]
	add	a4, a4, a2
.Ltmp49:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	.loc	0 205 5                         # test.c:205:5 @[ test.c:97:5 ]
	bnez	a1, .LBB0_3
.Ltmp50:
# %bb.4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	lui	a0, 262144
	.loc	0 157 61 is_stmt 1              # test.c:157:61 @[ test.c:97:5 ]
	vsetvli	a1, zero, e32, m1, ta, ma
.Ltmp51:
	vmv.v.x	v8, a0
	lui	a0, 205501
	addi	a0, a0, -905
.Ltmp52:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	.loc	0 158 61                        # test.c:158:61 @[ test.c:97:5 ]
	vmv.v.x	v9, a0
.Ltmp53:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	.loc	0 0 61 is_stmt 0                # test.c:0:61
	li	a0, 16
.Lpcrel_hi3:
	auipc	a1, %pcrel_hi(dst)
	.loc	0 257 30 is_stmt 1              # test.c:257:30 @[ test.c:97:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vfadd.vv	v9, v19, v9
.Ltmp54:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	.loc	0 258 26                        # test.c:258:26 @[ test.c:97:5 ]
	vfrec7.v	v10, v9
.Ltmp55:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	.loc	0 260 25                        # test.c:260:25 @[ test.c:97:5 ]
	vmv.v.v	v11, v9
	vfnmsub.vv	v11, v10, v8
.Ltmp56:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	.loc	0 261 13                        # test.c:261:13 @[ test.c:97:5 ]
	vfmul.vv	v10, v10, v11
	.loc	0 262 13                        # test.c:262:13 @[ test.c:97:5 ]
	vfnmsub.vv	v9, v10, v8
	.loc	0 263 13                        # test.c:263:13 @[ test.c:97:5 ]
	vfmul.vv	v8, v10, v9
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi3)
.Ltmp57:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x10
	.loc	0 269 21                        # test.c:269:21 @[ test.c:97:5 ]
	vsetvli	a2, a0, e32, m1, ta, ma
.Ltmp58:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 270 30                        # test.c:270:30 @[ test.c:97:5 ]
	vle32.v	v9, (a1)
.Ltmp59:
	#DEBUG_VALUE: row <- undef
	.loc	0 271 30                        # test.c:271:30 @[ test.c:97:5 ]
	vrgather.vi	v10, v8, 0
.Ltmp60:
	#DEBUG_VALUE: vinvB <- undef
	.loc	0 274 14                        # test.c:274:14 @[ test.c:97:5 ]
	sub	a0, a0, a2
.Ltmp61:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x10
	.loc	0 272 15                        # test.c:272:15 @[ test.c:97:5 ]
	vfmul.vv	v9, v9, v10
	.loc	0 273 9 is_stmt 0               # test.c:273:9 @[ test.c:97:5 ]
	vse32.v	v9, (a1)
	.loc	0 275 14 is_stmt 1              # test.c:275:14 @[ test.c:97:5 ]
	slli	a2, a2, 2
.Ltmp62:
	add	a1, a1, a2
.Ltmp63:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	.loc	0 268 5                         # test.c:268:5 @[ test.c:97:5 ]
	bnez	a0, .LBB0_5
.Ltmp64:
# %bb.6:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a0, 1000
.Ltmp65:
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	#DEBUG_VALUE: i <- [DW_OP_consts 1000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x10
	.loc	0 9 26 is_stmt 1                # test.c:9:26 @[ test.c:278:5 @[ test.c:97:5 ] ]
	addiw	a0, a0, -1
.Ltmp66:
	.loc	0 10 5                          # test.c:10:5 @[ test.c:278:5 @[ test.c:97:5 ] ]
	#APP
	nop
	#NO_APP
.Ltmp67:
	#DEBUG_VALUE: i <- [DW_OP_consts 1000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x10
	.loc	0 9 3                           # test.c:9:3 @[ test.c:278:5 @[ test.c:97:5 ] ]
	bnez	a0, .LBB0_7
.Ltmp68:
# %bb.8:
	#DEBUG_VALUE: i <- [DW_OP_consts 1000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	.loc	0 0 3 is_stmt 0                 # test.c:0:3
	li	a0, 16
.Lpcrel_hi4:
	auipc	a1, %pcrel_hi(dst)
.Ltmp69:
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi4)
.Ltmp70:
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 16
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x10
	.loc	0 281 21 is_stmt 1              # test.c:281:21 @[ test.c:97:5 ]
	vsetvli	a2, a0, e32, m1, ta, ma
.Ltmp71:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 282 29                        # test.c:282:29 @[ test.c:97:5 ]
	vle32.v	v8, (a1)
.Ltmp72:
	#DEBUG_VALUE: row2 <- undef
	.loc	0 284 14                        # test.c:284:14 @[ test.c:97:5 ]
	sub	a0, a0, a2
.Ltmp73:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x10
	.loc	0 283 9 is_stmt 0               # test.c:283:9 @[ test.c:97:5 ]
	vse32.v	v8, (a1)
	.loc	0 285 14 is_stmt 1              # test.c:285:14 @[ test.c:97:5 ]
	slli	a2, a2, 2
.Ltmp74:
	add	a1, a1, a2
.Ltmp75:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	.loc	0 280 5                         # test.c:280:5 @[ test.c:97:5 ]
	bnez	a0, .LBB0_9
.Ltmp76:
# %bb.10:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	.loc	0 98 5 epilogue_begin           # test.c:98:5
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp77:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.file	4 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "riscv_vector.h" md5 0x255ceebde96f450c22e334dcdb0f3a56
                                        # -- End function
	.hidden	softmax_stable_rvv_fp32         # -- Begin function softmax_stable_rvv_fp32
	.globl	softmax_stable_rvv_fp32
	.p2align	1
	.type	softmax_stable_rvv_fp32,@function
softmax_stable_rvv_fp32:                # @softmax_stable_rvv_fp32
.Lfunc_begin1:
	.loc	0 103 0                         # test.c:103:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	s0, 40(sp)                      # 8-byte Folded Spill
	sd	s1, 32(sp)                      # 8-byte Folded Spill
	sd	s2, 24(sp)                      # 8-byte Folded Spill
	sd	s3, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	.cfi_offset s3, -32
.Ltmp78:
	.loc	0 104 26 prologue_end           # test.c:104:26
	vsetvli	a3, zero, e32, m1, ta, ma
.Ltmp79:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlmax <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	.loc	0 0 26 is_stmt 0                # test.c:0:26
	lui	a3, 1046528
.Ltmp80:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlmax <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero <- undef
	.loc	0 144 63 is_stmt 1              # test.c:144:63
	vmv.v.x	v9, a3
.Ltmp81:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vnegInf <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src_orig <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vneg_inf_int <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	.loc	0 0 63 is_stmt 0                # test.c:0:63
	vmv.v.v	v10, v9
	.loc	0 173 5 is_stmt 1               # test.c:173:5
	beqz	a2, .LBB1_3
.Ltmp82:
# %bb.1:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlmax <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	mv	a3, a1
.Ltmp83:
	mv	a4, a2
	vmv1r.v	v10, v9
.Ltmp84:
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax <- undef
	.loc	0 174 21 is_stmt 1              # test.c:174:21
	vsetvli	a5, a4, e32, m1, ta, ma
.Ltmp85:
	#DEBUG_VALUE: vl <- $x15
	.loc	0 175 27                        # test.c:175:27
	vle32.v	v8, (a3)
.Ltmp86:
	#DEBUG_VALUE: vx <- undef
	.loc	0 177 13                        # test.c:177:13
	sub	a4, a4, a5
.Ltmp87:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x14
	.loc	0 176 16                        # test.c:176:16
	vfmax.vv	v10, v10, v8
	.loc	0 178 13                        # test.c:178:13
	slli	a5, a5, 2
.Ltmp88:
	add	a3, a3, a5
.Ltmp89:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	.loc	0 173 5                         # test.c:173:5
	bnez	a4, .LBB1_2
.Ltmp90:
.LBB1_3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 0 0 is_stmt 0                 # test.c:0
	vsetvli	a3, zero, e32, m1, ta, ma
	vmv.v.i	v8, 0
.Ltmp91:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	.loc	0 182 26 is_stmt 1              # test.c:182:26
	vfredmax.vs	v9, v10, v9
.Ltmp92:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vredmax <- undef
	.loc	0 0 26 is_stmt 0                # test.c:0:26
	addi	a3, sp, 12
.Ltmp93:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vredmax_int <- undef
	.loc	0 192 5                         # test.c:192:5
	vsetivli	zero, 1, e32, m1, ta, ma
	vse32.v	v9, (a3)
.Ltmp94:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:max_x_union <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:max_x_as_int <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	.loc	0 205 5 is_stmt 1               # test.c:205:5
	beqz	a2, .LBB1_7
.Ltmp95:
# %bb.4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	s3, 0
	lui	t5, 261003
	lui	t6, 231425
	lui	a7, 254635
	lui	t0, 250539
	lui	t1, 245897
	lui	t2, 240481
	lui	t3, 237847
	lui	t4, 234095
	lui	a4, 258839
	lui	a6, 260096
	vsetvli	a5, zero, e32, m1, ta, ma
	vmv.v.x	v10, a4
.Ltmp96:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi <- undef
	lui	s2, 258048
	vmv.v.x	v11, a6
.Ltmp97:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1 <- undef
	li	a6, 127
	addi	a5, t5, -1477
	addi	a4, t6, -1024
	addi	s0, a7, -1365
	addi	s1, t0, -1365
	addi	a7, t1, -1911
	addi	t0, t2, -1183
	addi	t1, t3, 1492
	addi	t2, t4, -626
	vmv.v.x	v12, s2
.Ltmp98:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2 <- undef
	vmv.v.x	v14, a5
.Ltmp99:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2 <- undef
	vmv.v.x	v15, a4
.Ltmp100:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo <- undef
	vmv.v.x	v16, s0
.Ltmp101:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3 <- undef
	vmv.v.x	v17, s1
.Ltmp102:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4 <- undef
	vmv.v.x	v18, a7
.Ltmp103:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5 <- undef
	vmv.v.x	v19, t0
.Ltmp104:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6 <- undef
	vmv.v.x	v20, t1
.Ltmp105:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7 <- undef
	vmv.v.x	v21, t2
.Ltmp106:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8 <- undef
	vsetivli	zero, 1, e32, m1, ta, ma
	mv	a5, a0
	mv	a4, a2
	vmv1r.v	v13, v8
.Ltmp107:
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x14
	.loc	0 240 30 is_stmt 1              # test.c:240:30
	mv	s1, a4
	.loc	0 206 21                        # test.c:206:21
	vsetvli	s0, a4, e32, m1, ta, ma
.Ltmp108:
	#DEBUG_VALUE: vl <- $x8
	.loc	0 207 27                        # test.c:207:27
	vle32.v	v22, (a1)
.Ltmp109:
	#DEBUG_VALUE: vx <- undef
	.loc	0 210 31                        # test.c:210:31
	vrgather.vi	v23, v9, 0
.Ltmp110:
	#DEBUG_VALUE: vmax_x <- undef
	.loc	0 211 14                        # test.c:211:14
	vfsub.vv	v22, v22, v23
	.loc	0 216 31                        # test.c:216:31
	vfmul.vv	v23, v22, v14
.Ltmp111:
	#DEBUG_VALUE: vxiln2 <- undef
	.loc	0 217 31                        # test.c:217:31
	vfcvt.x.f.v	v23, v23
.Ltmp112:
	#DEBUG_VALUE: vk <- undef
	.loc	0 221 31                        # test.c:221:31
	vfcvt.f.x.v	v24, v23
.Ltmp113:
	#DEBUG_VALUE: vfk <- undef
	.loc	0 222 31                        # test.c:222:31
	vfmul.vv	v25, v24, v10
.Ltmp114:
	#DEBUG_VALUE: vkl2hi <- undef
	.loc	0 224 31                        # test.c:224:31
	vfsub.vv	v22, v22, v25
.Ltmp115:
	#DEBUG_VALUE: vr <- undef
	.loc	0 229 13                        # test.c:229:13
	vmv1r.v	v25, v21
	.loc	0 214 9                         # test.c:214:9
	#APP
	frrm	a3
	#NO_APP
.Ltmp116:
	#DEBUG_VALUE: old_frm <- $x13
	.loc	0 215 9                         # test.c:215:9
	#APP
	fsrm	s3
	#NO_APP
	.loc	0 251 14                        # test.c:251:14
	sub	a4, a4, s0
.Ltmp117:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x14
	.loc	0 218 9                         # test.c:218:9
	#APP
	fsrm	a3
	#NO_APP
	.loc	0 252 14                        # test.c:252:14
	slli	s0, s0, 2
.Ltmp118:
	#DEBUG_VALUE: vl <- $x8
	add	a1, a1, s0
.Ltmp119:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 240 30                        # test.c:240:30
	vsetvli	zero, s1, e32, m1, ta, ma
	vadd.vx	v23, v23, a6
.Ltmp120:
	#DEBUG_VALUE: vbiased <- undef
	.loc	0 223 31                        # test.c:223:31
	vfmul.vv	v24, v24, v15
.Ltmp121:
	#DEBUG_VALUE: vkl2lo <- undef
	.loc	0 241 30                        # test.c:241:30
	vsll.vi	v23, v23, 23
.Ltmp122:
	#DEBUG_VALUE: vexp2 <- undef
	#DEBUG_VALUE: vf2k <- undef
	.loc	0 225 14                        # test.c:225:14
	vfsub.vv	v22, v22, v24
.Ltmp123:
	#DEBUG_VALUE: p <- undef
	.loc	0 229 13                        # test.c:229:13
	vfmadd.vv	v25, v22, v20
	.loc	0 230 13                        # test.c:230:13
	vfmadd.vv	v25, v22, v19
	.loc	0 231 13                        # test.c:231:13
	vfmadd.vv	v25, v22, v18
	.loc	0 232 13                        # test.c:232:13
	vfmadd.vv	v25, v22, v17
	.loc	0 233 13                        # test.c:233:13
	vfmadd.vv	v25, v22, v16
	.loc	0 234 13                        # test.c:234:13
	vfmadd.vv	v25, v22, v12
	.loc	0 235 13                        # test.c:235:13
	vfmadd.vv	v25, v22, v11
	.loc	0 236 13                        # test.c:236:13
	vfmadd.vv	v25, v22, v11
.Ltmp124:
	#DEBUG_VALUE: exp_bias <- 127
	.loc	0 245 30                        # test.c:245:30
	vfmul.vv	v22, v25, v23
.Ltmp125:
	#DEBUG_VALUE: vexp <- undef
	.loc	0 247 9 is_stmt 0               # test.c:247:9
	vse32.v	v22, (a5)
	.loc	0 248 30 is_stmt 1              # test.c:248:30
	vfredosum.vs	v22, v22, v8
.Ltmp126:
	#DEBUG_VALUE: vblk <- undef
	.loc	0 249 17                        # test.c:249:17
	vsetivli	zero, 1, e32, m1, ta, ma
	vfadd.vv	v13, v13, v22
	.loc	0 253 14                        # test.c:253:14
	add	a5, a5, s0
.Ltmp127:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x15
	.loc	0 205 5                         # test.c:205:5
	bnez	a4, .LBB1_5
.Ltmp128:
# %bb.6:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	.loc	0 268 5                         # test.c:268:5
	bnez	a2, .LBB1_8
	j	.LBB1_10
.Ltmp129:
.LBB1_7:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv1r.v	v13, v8
.Ltmp130:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	.loc	0 268 5 is_stmt 1               # test.c:268:5
	beqz	a2, .LBB1_10
.Ltmp131:
.LBB1_8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	lui	a1, 205501
	lui	a3, 262144
	addi	a1, a1, -905
	vsetvli	a4, zero, e32, m1, ta, ma
	vmv.v.x	v8, a3
.Ltmp132:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	vmv.v.x	v9, a1
.Ltmp133:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	vsetivli	zero, 1, e32, m1, ta, ma
.Ltmp134:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	vfadd.vv	v9, v13, v9
.Ltmp135:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	vfrec7.v	v10, v9
	vmv.v.v	v11, v9
	vfnmsub.vv	v11, v10, v8
	vfmul.vv	v10, v10, v11
	vfnmsub.vv	v9, v10, v8
.Ltmp136:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	vfmul.vv	v8, v10, v9
.Ltmp137:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	mv	a1, a0
	mv	a3, a2
.Ltmp138:
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x13
	.loc	0 269 21 is_stmt 1              # test.c:269:21
	vsetvli	a4, a3, e32, m1, ta, ma
.Ltmp139:
	#DEBUG_VALUE: vl <- $x14
	.loc	0 270 30                        # test.c:270:30
	vle32.v	v9, (a1)
.Ltmp140:
	#DEBUG_VALUE: row <- undef
	.loc	0 271 30                        # test.c:271:30
	vrgather.vi	v10, v8, 0
.Ltmp141:
	#DEBUG_VALUE: vinvB <- undef
	.loc	0 274 14                        # test.c:274:14
	sub	a3, a3, a4
.Ltmp142:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x13
	.loc	0 272 15                        # test.c:272:15
	vfmul.vv	v9, v9, v10
	.loc	0 273 9 is_stmt 0               # test.c:273:9
	vse32.v	v9, (a1)
	.loc	0 275 14 is_stmt 1              # test.c:275:14
	slli	a4, a4, 2
.Ltmp143:
	add	a1, a1, a4
.Ltmp144:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	.loc	0 268 5                         # test.c:268:5
	bnez	a3, .LBB1_9
.Ltmp145:
.LBB1_10:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a1, 1000
.Ltmp146:
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: i <- [DW_OP_consts 1000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x11
	.loc	0 9 26 is_stmt 1                # test.c:9:26 @[ test.c:278:5 ]
	addiw	a1, a1, -1
.Ltmp147:
	.loc	0 10 5                          # test.c:10:5 @[ test.c:278:5 ]
	#APP
	nop
	#NO_APP
.Ltmp148:
	#DEBUG_VALUE: i <- [DW_OP_consts 1000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11
	.loc	0 9 3                           # test.c:9:3 @[ test.c:278:5 ]
	bnez	a1, .LBB1_11
.Ltmp149:
# %bb.12:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 280 5                         # test.c:280:5
	beqz	a2, .LBB1_14
.Ltmp150:
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 281 21                        # test.c:281:21
	vsetvli	a1, a2, e32, m1, ta, ma
.Ltmp151:
	#DEBUG_VALUE: vl <- $x11
	.loc	0 282 29                        # test.c:282:29
	vle32.v	v8, (a0)
.Ltmp152:
	#DEBUG_VALUE: row2 <- undef
	.loc	0 284 14                        # test.c:284:14
	sub	a2, a2, a1
.Ltmp153:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 283 9 is_stmt 0               # test.c:283:9
	vse32.v	v8, (a0)
	.loc	0 285 14 is_stmt 1              # test.c:285:14
	slli	a1, a1, 2
.Ltmp154:
	add	a0, a0, a1
.Ltmp155:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 280 5                         # test.c:280:5
	bnez	a2, .LBB1_13
.Ltmp156:
.LBB1_14:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C8 <- 958852494
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C7 <- 974222804
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C6 <- 985008993
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C5 <- 1007192201
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C4 <- 1026206379
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C3 <- 1042983595
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C2 <- 1056964608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C1 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:C0 <- 1065353216
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_TWO <- 1073741824
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_EPS <- 841731191
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_LO <- 947915776
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_LN2_HI <- 1060204544
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_ILN2 <- 1069066811
	#DEBUG_VALUE: softmax_stable_rvv_fp32:BITS_NEG_INF <- -8388608
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	.loc	0 345 1 epilogue_begin          # test.c:345:1
	ld	s0, 40(sp)                      # 8-byte Folded Reload
	ld	s1, 32(sp)                      # 8-byte Folded Reload
	ld	s2, 24(sp)                      # 8-byte Folded Reload
	ld	s3, 16(sp)                      # 8-byte Folded Reload
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Ltmp157:
.Lfunc_end1:
	.size	softmax_stable_rvv_fp32, .Lfunc_end1-softmax_stable_rvv_fp32
	.cfi_endproc
                                        # -- End function
	.hidden	src                             # @src
	.type	src,@object
	.data
	.globl	src
	.p2align	2, 0x0
src:
	.word	0xbf00788e                      # float -0.501839519
	.word	0x3fe6c407                      # float 1.80285728
	.word	0x3f6d8fd2                      # float 0.927975773
	.word	0x3eca0d76                      # float 0.394633949
	.word	0xbfb01e53                      # float -1.37592542
	.word	0xbfb0217c                      # float -1.37602186
	.word	0xbfe242dd                      # float -1.76766551
	.word	0x3fbb7b71                      # float 1.46470463
	.word	0x3ecf1563                      # float 0.404460043
	.word	0x3f5510fa                      # float 0.832290291
	.word	0xbff575f3                      # float -1.91766202
	.word	0x3ff09806                      # float 1.87963939
	.word	0x3faa35ec                      # float 1.32977057
	.word	0xbf93484a                      # float -1.15064359
	.word	0xbfa2e7d7                      # float -1.27270019
	.word	0xbfa218ce                      # float -1.26638198
	.size	src, 64

	.hidden	dst                             # @dst
	.type	dst,@object
	.bss
	.globl	dst
	.p2align	2, 0x0
dst:
	.zero	64
	.size	dst, 64

	.hidden	golden                          # @golden
	.type	golden,@object
	.data
	.globl	golden
	.p2align	2, 0x0
golden:
	.word	0x3ca0cef2                      # float 0.0196299292
	.word	0x3e496f75                      # float 0.196714237
	.word	0x3da7f61f                      # float 0.0820124074
	.word	0x3d4510f1                      # float 0.0481118597
	.word	0x3c063147                      # float 0.00819045957
	.word	0x3c062dec                      # float 0.00818965956
	.word	0x3bb56552                      # float 0.00553575996
	.word	0x3e0fa40d                      # float 0.140274242
	.word	0x3d470319                      # float 0.0485869385
	.word	0x3d98a289                      # float 0.0745287612
	.word	0x3b9c211e                      # float 0.00476469006
	.word	0x3e5982e3                      # float 0.212413356
	.word	0x3dfb04e5                      # float 0.122567929
	.word	0x3c28197a                      # float 0.0102599803
	.word	0x3c14c8da                      # float 0.00908108986
	.word	0x3c15ba47                      # float 0.00913865026
	.size	golden, 64

	.hidden	diff_mem                        # @diff_mem
	.type	diff_mem,@object
	.bss
	.globl	diff_mem
	.p2align	2, 0x0
diff_mem:
	.zero	64
	.size	diff_mem, 64

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	62                              # Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
	.word	.Ldebug_loc2-.Lloclists_table_base0
	.word	.Ldebug_loc3-.Lloclists_table_base0
	.word	.Ldebug_loc4-.Lloclists_table_base0
	.word	.Ldebug_loc5-.Lloclists_table_base0
	.word	.Ldebug_loc6-.Lloclists_table_base0
	.word	.Ldebug_loc7-.Lloclists_table_base0
	.word	.Ldebug_loc8-.Lloclists_table_base0
	.word	.Ldebug_loc9-.Lloclists_table_base0
	.word	.Ldebug_loc10-.Lloclists_table_base0
	.word	.Ldebug_loc11-.Lloclists_table_base0
	.word	.Ldebug_loc12-.Lloclists_table_base0
	.word	.Ldebug_loc13-.Lloclists_table_base0
	.word	.Ldebug_loc14-.Lloclists_table_base0
	.word	.Ldebug_loc15-.Lloclists_table_base0
	.word	.Ldebug_loc16-.Lloclists_table_base0
	.word	.Ldebug_loc17-.Lloclists_table_base0
	.word	.Ldebug_loc18-.Lloclists_table_base0
	.word	.Ldebug_loc19-.Lloclists_table_base0
	.word	.Ldebug_loc20-.Lloclists_table_base0
	.word	.Ldebug_loc21-.Lloclists_table_base0
	.word	.Ldebug_loc22-.Lloclists_table_base0
	.word	.Ldebug_loc23-.Lloclists_table_base0
	.word	.Ldebug_loc24-.Lloclists_table_base0
	.word	.Ldebug_loc25-.Lloclists_table_base0
	.word	.Ldebug_loc26-.Lloclists_table_base0
	.word	.Ldebug_loc27-.Lloclists_table_base0
	.word	.Ldebug_loc28-.Lloclists_table_base0
	.word	.Ldebug_loc29-.Lloclists_table_base0
	.word	.Ldebug_loc30-.Lloclists_table_base0
	.word	.Ldebug_loc31-.Lloclists_table_base0
	.word	.Ldebug_loc32-.Lloclists_table_base0
	.word	.Ldebug_loc33-.Lloclists_table_base0
	.word	.Ldebug_loc34-.Lloclists_table_base0
	.word	.Ldebug_loc35-.Lloclists_table_base0
	.word	.Ldebug_loc36-.Lloclists_table_base0
	.word	.Ldebug_loc37-.Lloclists_table_base0
	.word	.Ldebug_loc38-.Lloclists_table_base0
	.word	.Ldebug_loc39-.Lloclists_table_base0
	.word	.Ldebug_loc40-.Lloclists_table_base0
	.word	.Ldebug_loc41-.Lloclists_table_base0
	.word	.Ldebug_loc42-.Lloclists_table_base0
	.word	.Ldebug_loc43-.Lloclists_table_base0
	.word	.Ldebug_loc44-.Lloclists_table_base0
	.word	.Ldebug_loc45-.Lloclists_table_base0
	.word	.Ldebug_loc46-.Lloclists_table_base0
	.word	.Ldebug_loc47-.Lloclists_table_base0
	.word	.Ldebug_loc48-.Lloclists_table_base0
	.word	.Ldebug_loc49-.Lloclists_table_base0
	.word	.Ldebug_loc50-.Lloclists_table_base0
	.word	.Ldebug_loc51-.Lloclists_table_base0
	.word	.Ldebug_loc52-.Lloclists_table_base0
	.word	.Ldebug_loc53-.Lloclists_table_base0
	.word	.Ldebug_loc54-.Lloclists_table_base0
	.word	.Ldebug_loc55-.Lloclists_table_base0
	.word	.Ldebug_loc56-.Lloclists_table_base0
	.word	.Ldebug_loc57-.Lloclists_table_base0
	.word	.Ldebug_loc58-.Lloclists_table_base0
	.word	.Ldebug_loc59-.Lloclists_table_base0
	.word	.Ldebug_loc60-.Lloclists_table_base0
	.word	.Ldebug_loc61-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 18446744073701163008
	.byte	128                             # 
	.byte	128                             # 
	.byte	252                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	187                             # 1069066811
	.byte	212                             # 
	.byte	226                             # 
	.byte	253                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1060204544
	.byte	224                             # 
	.byte	197                             # 
	.byte	249                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 947915776
	.byte	152                             # 
	.byte	128                             # 
	.byte	196                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	247                             # 841731191
	.byte	152                             # 
	.byte	175                             # 
	.byte	145                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1073741824
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	4                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1065353216
	.byte	128                             # 
	.byte	128                             # 
	.byte	252                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1065353216
	.byte	128                             # 
	.byte	128                             # 
	.byte	252                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1056964608
	.byte	128                             # 
	.byte	128                             # 
	.byte	248                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	171                             # 1042983595
	.byte	213                             # 
	.byte	170                             # 
	.byte	241                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	171                             # 1026206379
	.byte	213                             # 
	.byte	170                             # 
	.byte	233                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	137                             # 1007192201
	.byte	145                             # 
	.byte	162                             # 
	.byte	224                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	225                             # 985008993
	.byte	150                             # 
	.byte	216                             # 
	.byte	213                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	212                             # 974222804
	.byte	235                             # 
	.byte	197                             # 
	.byte	208                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	142                             # 958852494
	.byte	219                             # 
	.byte	155                             # 
	.byte	201                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	64                              # DW_OP_lit16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	64                              # DW_OP_lit16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	127                             # 127
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	10                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	12                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 18446744073701163008
	.byte	128                             # 
	.byte	128                             # 
	.byte	252                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	187                             # 1069066811
	.byte	212                             # 
	.byte	226                             # 
	.byte	253                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1060204544
	.byte	224                             # 
	.byte	197                             # 
	.byte	249                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 947915776
	.byte	152                             # 
	.byte	128                             # 
	.byte	196                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	247                             # 841731191
	.byte	152                             # 
	.byte	175                             # 
	.byte	145                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1073741824
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	4                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1065353216
	.byte	128                             # 
	.byte	128                             # 
	.byte	252                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1065353216
	.byte	128                             # 
	.byte	128                             # 
	.byte	252                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1056964608
	.byte	128                             # 
	.byte	128                             # 
	.byte	248                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	171                             # 1042983595
	.byte	213                             # 
	.byte	170                             # 
	.byte	241                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	171                             # 1026206379
	.byte	213                             # 
	.byte	170                             # 
	.byte	233                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	137                             # 1007192201
	.byte	145                             # 
	.byte	162                             # 
	.byte	224                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	225                             # 985008993
	.byte	150                             # 
	.byte	216                             # 
	.byte	213                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	212                             # 974222804
	.byte	235                             # 
	.byte	197                             # 
	.byte	208                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	7                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	142                             # 958852494
	.byte	219                             # 
	.byte	155                             # 
	.byte	201                             # 
	.byte	3                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	127                             # 127
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	10                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	232                             # 1000
	.byte	7                               # 
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	47                              # DW_AT_upper_bound
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.half	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.word	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x705 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.half	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.word	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	4                               # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.word	.Laddr_table_base0              # DW_AT_addr_base
	.word	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.word	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x32:0xc DW_TAG_array_type
	.word	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x37:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3e:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x42:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x46:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.word	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	2                               # Abbrev [2] 0x51:0xb DW_TAG_variable
	.byte	7                               # DW_AT_name
	.word	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               # Abbrev [2] 0x5c:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.word	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	7                               # Abbrev [7] 0x67:0x208 DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	672                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x73:0x8 DW_TAG_variable
	.byte	9                               # DW_AT_name
	.word	623                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x7b:0x6 DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.word	676                             # DW_AT_abstract_origin
	.byte	9                               # Abbrev [9] 0x81:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.word	684                             # DW_AT_abstract_origin
	.byte	9                               # Abbrev [9] 0x87:0x6 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.word	692                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x8d:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	12
	.word	700                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x95:0x6 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.word	708                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x9b:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.word	716                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xa1:0x6 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.word	724                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xa7:0x6 DW_TAG_variable
	.byte	37                              # DW_AT_location
	.word	732                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xad:0x6 DW_TAG_variable
	.byte	38                              # DW_AT_location
	.word	740                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xb3:0x6 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.word	748                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xb9:0x6 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.word	756                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xbf:0x6 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.word	764                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xc5:0x6 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.word	772                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xcb:0x6 DW_TAG_variable
	.byte	43                              # DW_AT_location
	.word	780                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xd1:0x6 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.word	788                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xd7:0x6 DW_TAG_variable
	.byte	45                              # DW_AT_location
	.word	796                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xdd:0x6 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.word	804                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xe3:0x6 DW_TAG_variable
	.byte	47                              # DW_AT_location
	.word	812                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xe9:0x6 DW_TAG_variable
	.byte	48                              # DW_AT_location
	.word	820                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xef:0x6 DW_TAG_variable
	.byte	49                              # DW_AT_location
	.word	828                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xf5:0x6 DW_TAG_variable
	.byte	50                              # DW_AT_location
	.word	844                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xfb:0x6 DW_TAG_variable
	.byte	52                              # DW_AT_location
	.word	852                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x101:0x6 DW_TAG_variable
	.byte	53                              # DW_AT_location
	.word	860                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x107:0x6 DW_TAG_variable
	.byte	57                              # DW_AT_location
	.word	868                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x10d:0x6 DW_TAG_variable
	.byte	60                              # DW_AT_location
	.word	877                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x113:0x5 DW_TAG_variable
	.word	886                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x118:0x5 DW_TAG_variable
	.word	894                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x11d:0x5 DW_TAG_variable
	.word	902                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x122:0x5 DW_TAG_variable
	.word	910                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x127:0x5 DW_TAG_variable
	.word	918                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x12c:0x5 DW_TAG_variable
	.word	926                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x131:0x5 DW_TAG_variable
	.word	934                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x136:0x5 DW_TAG_variable
	.word	942                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x13b:0x5 DW_TAG_variable
	.word	950                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x140:0x5 DW_TAG_variable
	.word	958                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x145:0x5 DW_TAG_variable
	.word	966                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x14a:0x5 DW_TAG_variable
	.word	974                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x14f:0x5 DW_TAG_variable
	.word	982                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x154:0x5 DW_TAG_variable
	.word	990                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x159:0x5 DW_TAG_variable
	.word	998                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x15e:0x5 DW_TAG_variable
	.word	1006                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x163:0x5 DW_TAG_variable
	.word	1014                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x168:0x5 DW_TAG_variable
	.word	1022                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x16d:0x5 DW_TAG_variable
	.word	836                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x172:0x5 DW_TAG_variable
	.word	1030                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x177:0x5 DW_TAG_variable
	.word	1038                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x17c:0x5 DW_TAG_variable
	.word	1046                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x181:0x5 DW_TAG_variable
	.word	1077                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x186:0x5 DW_TAG_variable
	.word	1085                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x18b:0x5 DW_TAG_variable
	.word	1093                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x190:0x5 DW_TAG_variable
	.word	1101                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x195:0x5 DW_TAG_variable
	.word	1110                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x19a:0x5 DW_TAG_variable
	.word	1119                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x19f:0x5 DW_TAG_variable
	.word	1128                            # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x1a4:0x16 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.word	.Ltmp89-.Ltmp84                 # DW_AT_high_pc
	.word	1137                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1ae:0x6 DW_TAG_variable
	.byte	51                              # DW_AT_location
	.word	1138                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1b4:0x5 DW_TAG_variable
	.word	1146                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1ba:0x63 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.word	.Ltmp127-.Ltmp107               # DW_AT_high_pc
	.word	1155                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1c4:0x6 DW_TAG_variable
	.byte	54                              # DW_AT_location
	.word	1156                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1ca:0x6 DW_TAG_variable
	.byte	55                              # DW_AT_location
	.word	1164                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x1d0:0x6 DW_TAG_variable
	.byte	56                              # DW_AT_location
	.word	1172                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1d6:0x5 DW_TAG_variable
	.word	1180                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1db:0x5 DW_TAG_variable
	.word	1188                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1e0:0x5 DW_TAG_variable
	.word	1196                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1e5:0x5 DW_TAG_variable
	.word	1204                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1ea:0x5 DW_TAG_variable
	.word	1212                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1ef:0x5 DW_TAG_variable
	.word	1220                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1f4:0x5 DW_TAG_variable
	.word	1228                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1f9:0x5 DW_TAG_variable
	.word	1236                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1fe:0x5 DW_TAG_variable
	.word	1244                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x203:0x5 DW_TAG_variable
	.word	1252                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x208:0x5 DW_TAG_variable
	.word	1260                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x20d:0x5 DW_TAG_variable
	.word	1268                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x212:0x5 DW_TAG_variable
	.word	1276                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x217:0x5 DW_TAG_variable
	.word	1284                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x21d:0x1b DW_TAG_lexical_block
	.byte	14                              # DW_AT_low_pc
	.word	.Ltmp144-.Ltmp138               # DW_AT_high_pc
	.word	1293                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x227:0x6 DW_TAG_variable
	.byte	58                              # DW_AT_location
	.word	1294                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x22d:0x5 DW_TAG_variable
	.word	1303                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x232:0x5 DW_TAG_variable
	.word	1312                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x238:0x20 DW_TAG_inlined_subroutine
	.word	1485                            # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.word	.Ltmp149-.Ltmp146               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.half	278                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x246:0x11 DW_TAG_lexical_block
	.byte	15                              # DW_AT_low_pc
	.word	.Ltmp149-.Ltmp146               # DW_AT_high_pc
	.word	1497                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x250:0x6 DW_TAG_variable
	.byte	59                              # DW_AT_location
	.word	1498                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x258:0x16 DW_TAG_lexical_block
	.byte	16                              # DW_AT_low_pc
	.word	.Ltmp155-.Ltmp150               # DW_AT_high_pc
	.word	1322                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x262:0x6 DW_TAG_variable
	.byte	61                              # DW_AT_location
	.word	1323                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x268:0x5 DW_TAG_variable
	.word	1332                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x26f:0xc DW_TAG_array_type
	.word	635                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x274:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x27b:0x5 DW_TAG_const_type
	.word	640                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x280:0x8 DW_TAG_typedef
	.word	648                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x288:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x28c:0x8 DW_TAG_typedef
	.word	660                             # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x294:0x8 DW_TAG_typedef
	.word	668                             # DW_AT_type
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x29c:0x4 DW_TAG_base_type
	.byte	12                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x2a0:0x29f DW_TAG_subprogram
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	18                              # Abbrev [18] 0x2a4:0x8 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.word	1343                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2ac:0x8 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.word	1343                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2b4:0x8 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2bc:0x8 DW_TAG_variable
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.word	1348                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2c4:0x8 DW_TAG_variable
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.word	1360                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2cc:0x8 DW_TAG_variable
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2d4:0x8 DW_TAG_variable
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2dc:0x8 DW_TAG_variable
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2e4:0x8 DW_TAG_variable
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2ec:0x8 DW_TAG_variable
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2f4:0x8 DW_TAG_variable
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2fc:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x304:0x8 DW_TAG_variable
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x30c:0x8 DW_TAG_variable
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x314:0x8 DW_TAG_variable
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x31c:0x8 DW_TAG_variable
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x324:0x8 DW_TAG_variable
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x32c:0x8 DW_TAG_variable
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x334:0x8 DW_TAG_variable
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x33c:0x8 DW_TAG_variable
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.word	635                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x344:0x8 DW_TAG_variable
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.word	1343                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x34c:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x354:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.word	1343                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x35c:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x364:0x9 DW_TAG_variable
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	267                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x36d:0x9 DW_TAG_variable
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	279                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x376:0x8 DW_TAG_variable
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x37e:0x8 DW_TAG_variable
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x386:0x8 DW_TAG_variable
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x38e:0x8 DW_TAG_variable
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x396:0x8 DW_TAG_variable
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x39e:0x8 DW_TAG_variable
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3a6:0x8 DW_TAG_variable
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3ae:0x8 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3b6:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3be:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3c6:0x8 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3ce:0x8 DW_TAG_variable
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3d6:0x8 DW_TAG_variable
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3de:0x8 DW_TAG_variable
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3e6:0x8 DW_TAG_variable
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3ee:0x8 DW_TAG_variable
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3f6:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.word	1402                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x3fe:0x8 DW_TAG_variable
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x406:0x8 DW_TAG_variable
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x40e:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x416:0x8 DW_TAG_variable
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.word	1402                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x41e:0x17 DW_TAG_union_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x422:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.word	640                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x42b:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.word	62                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x435:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.word	1054                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x43d:0x8 DW_TAG_variable
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.word	640                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x445:0x8 DW_TAG_variable
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x44d:0x9 DW_TAG_variable
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	256                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x456:0x9 DW_TAG_variable
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	257                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x45f:0x9 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	258                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x468:0x9 DW_TAG_variable
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	260                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x471:0x12 DW_TAG_lexical_block
	.byte	19                              # Abbrev [19] 0x472:0x8 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x47a:0x8 DW_TAG_variable
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x483:0x8a DW_TAG_lexical_block
	.byte	19                              # Abbrev [19] 0x484:0x8 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x48c:0x8 DW_TAG_variable
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x494:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.word	1439                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x49c:0x8 DW_TAG_variable
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4a4:0x8 DW_TAG_variable
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4ac:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4b4:0x8 DW_TAG_variable
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.word	1448                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4bc:0x8 DW_TAG_variable
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4c4:0x8 DW_TAG_variable
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4cc:0x8 DW_TAG_variable
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4d4:0x8 DW_TAG_variable
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4dc:0x8 DW_TAG_variable
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4e4:0x8 DW_TAG_variable
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.word	1448                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4ec:0x8 DW_TAG_variable
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.word	1448                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4f4:0x8 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x4fc:0x8 DW_TAG_variable
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x504:0x8 DW_TAG_variable
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x50d:0x1d DW_TAG_lexical_block
	.byte	20                              # Abbrev [20] 0x50e:0x9 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	269                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x517:0x9 DW_TAG_variable
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	270                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x520:0x9 DW_TAG_variable
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	271                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x52a:0x14 DW_TAG_lexical_block
	.byte	20                              # Abbrev [20] 0x52b:0x9 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	281                             # DW_AT_decl_line
	.word	652                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x534:0x9 DW_TAG_variable
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.half	282                             # DW_AT_decl_line
	.word	1365                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x53f:0x5 DW_TAG_pointer_type
	.word	62                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x544:0xc DW_TAG_array_type
	.word	640                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x549:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x550:0x5 DW_TAG_const_type
	.word	652                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x555:0x9 DW_TAG_typedef
	.word	1374                            # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.half	357                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x55e:0x6 DW_TAG_typedef
	.word	1380                            # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	27                              # Abbrev [27] 0x564:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	62                              # DW_AT_type
	.byte	28                              # Abbrev [28] 0x569:0x10 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	10                              # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	52
	.byte	27
	.byte	49
	.byte	30
	.byte	49
	.byte	28
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x57a:0x9 DW_TAG_typedef
	.word	1411                            # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.half	259                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x583:0x6 DW_TAG_typedef
	.word	1417                            # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	27                              # Abbrev [27] 0x589:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	648                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x58e:0x10 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	10                              # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	52
	.byte	27
	.byte	49
	.byte	30
	.byte	49
	.byte	28
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x59f:0x5 DW_TAG_const_type
	.word	1444                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5a4:0x4 DW_TAG_base_type
	.byte	78                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x5a8:0x9 DW_TAG_typedef
	.word	1457                            # DW_AT_type
	.byte	83                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.half	258                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x5b1:0x6 DW_TAG_typedef
	.word	1463                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	27                              # Abbrev [27] 0x5b7:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	1444                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5bc:0x10 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	10                              # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	52
	.byte	27
	.byte	49
	.byte	30
	.byte	49
	.byte	28
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5cd:0x17 DW_TAG_subprogram
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	18                              # Abbrev [18] 0x5d1:0x8 DW_TAG_formal_parameter
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x5d9:0xa DW_TAG_lexical_block
	.byte	19                              # Abbrev [19] 0x5da:0x8 DW_TAG_variable
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x5e4:0x12c DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.word	1444                            # DW_AT_type
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x5f3:0x11c DW_TAG_inlined_subroutine
	.word	672                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.word	.Ltmp76-.Ltmp0                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	97                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x600:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.word	676                             # DW_AT_abstract_origin
	.byte	9                               # Abbrev [9] 0x606:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.word	684                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x60c:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	692                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x612:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	12
	.word	700                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x61a:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.word	708                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x620:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.word	716                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x626:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.word	724                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x62c:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.word	732                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x632:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.word	740                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x638:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.word	748                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x63e:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.word	756                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x644:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.word	764                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x64a:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.word	772                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x650:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.word	780                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x656:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.word	788                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x65c:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.word	796                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x662:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.word	804                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x668:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.word	812                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x66e:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.word	820                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x674:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.word	828                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x67a:0x6 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.word	836                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x680:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.word	844                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x686:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.word	852                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x68c:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.word	860                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x692:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.word	868                             # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x698:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.word	877                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x69e:0x11 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.word	.Ltmp10-.Ltmp5                  # DW_AT_high_pc
	.word	1137                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x6a8:0x6 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.word	1138                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6af:0x1d DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.word	.Ltmp49-.Ltmp29                 # DW_AT_high_pc
	.word	1155                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x6b9:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.word	1156                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x6bf:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.word	1164                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x6c5:0x6 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.word	1172                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6cc:0x11 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.word	.Ltmp63-.Ltmp57                 # DW_AT_high_pc
	.word	1293                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x6d6:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.word	1294                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x6dd:0x20 DW_TAG_inlined_subroutine
	.word	1485                            # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.word	.Ltmp68-.Ltmp65                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.half	278                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x6eb:0x11 DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.word	.Ltmp68-.Ltmp65                 # DW_AT_high_pc
	.word	1497                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x6f5:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.word	1498                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6fd:0x11 DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.word	.Ltmp75-.Ltmp70                 # DW_AT_high_pc
	.word	1322                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x707:0x6 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.word	1323                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	408                             # Length of String Offsets Set
	.half	5
	.half	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)" # string offset=0
.Linfo_string1:
	.asciz	"test.c"                        # string offset=104
.Linfo_string2:
	.asciz	"/mnt/d/riscv-dnn/test/ops/softmax" # string offset=111
.Linfo_string3:
	.asciz	"src"                           # string offset=145
.Linfo_string4:
	.asciz	"float"                         # string offset=149
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=155
.Linfo_string6:
	.asciz	"dst"                           # string offset=175
.Linfo_string7:
	.asciz	"golden"                        # string offset=179
.Linfo_string8:
	.asciz	"diff_mem"                      # string offset=186
.Linfo_string9:
	.asciz	"constants"                     # string offset=195
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=205
.Linfo_string11:
	.asciz	"uint32_t"                      # string offset=218
.Linfo_string12:
	.asciz	"unsigned long"                 # string offset=227
.Linfo_string13:
	.asciz	"__size_t"                      # string offset=241
.Linfo_string14:
	.asciz	"size_t"                        # string offset=250
.Linfo_string15:
	.asciz	"softmax_stable_rvv_fp32"       # string offset=257
.Linfo_string16:
	.asciz	"n"                             # string offset=281
.Linfo_string17:
	.asciz	"max_x_bits"                    # string offset=283
.Linfo_string18:
	.asciz	"vlmax"                         # string offset=294
.Linfo_string19:
	.asciz	"BITS_NEG_INF"                  # string offset=300
.Linfo_string20:
	.asciz	"BITS_ILN2"                     # string offset=313
.Linfo_string21:
	.asciz	"BITS_LN2_HI"                   # string offset=323
.Linfo_string22:
	.asciz	"BITS_LN2_LO"                   # string offset=335
.Linfo_string23:
	.asciz	"BITS_EPS"                      # string offset=347
.Linfo_string24:
	.asciz	"BITS_TWO"                      # string offset=356
.Linfo_string25:
	.asciz	"C0"                            # string offset=365
.Linfo_string26:
	.asciz	"C1"                            # string offset=368
.Linfo_string27:
	.asciz	"C2"                            # string offset=371
.Linfo_string28:
	.asciz	"C3"                            # string offset=374
.Linfo_string29:
	.asciz	"C4"                            # string offset=377
.Linfo_string30:
	.asciz	"C5"                            # string offset=380
.Linfo_string31:
	.asciz	"C6"                            # string offset=383
.Linfo_string32:
	.asciz	"C7"                            # string offset=386
.Linfo_string33:
	.asciz	"C8"                            # string offset=389
.Linfo_string34:
	.asciz	"src_orig"                      # string offset=392
.Linfo_string35:
	.asciz	"avl"                           # string offset=401
.Linfo_string36:
	.asciz	"dst_orig"                      # string offset=405
.Linfo_string37:
	.asciz	"avl2"                          # string offset=414
.Linfo_string38:
	.asciz	"avl3"                          # string offset=419
.Linfo_string39:
	.asciz	"avl4"                          # string offset=424
.Linfo_string40:
	.asciz	"vzero"                         # string offset=429
.Linfo_string41:
	.asciz	"__rvv_float32m1_t"             # string offset=435
.Linfo_string42:
	.asciz	"vfloat32m1_t"                  # string offset=453
.Linfo_string43:
	.asciz	"vnegInf"                       # string offset=466
.Linfo_string44:
	.asciz	"viln2"                         # string offset=474
.Linfo_string45:
	.asciz	"vln2_hi"                       # string offset=480
.Linfo_string46:
	.asciz	"vln2_lo"                       # string offset=488
.Linfo_string47:
	.asciz	"pc0"                           # string offset=496
.Linfo_string48:
	.asciz	"pc1"                           # string offset=500
.Linfo_string49:
	.asciz	"pc2"                           # string offset=504
.Linfo_string50:
	.asciz	"pc3"                           # string offset=508
.Linfo_string51:
	.asciz	"pc4"                           # string offset=512
.Linfo_string52:
	.asciz	"pc5"                           # string offset=516
.Linfo_string53:
	.asciz	"pc6"                           # string offset=520
.Linfo_string54:
	.asciz	"pc7"                           # string offset=524
.Linfo_string55:
	.asciz	"pc8"                           # string offset=528
.Linfo_string56:
	.asciz	"vtwo1"                         # string offset=532
.Linfo_string57:
	.asciz	"veps1"                         # string offset=538
.Linfo_string58:
	.asciz	"vneg_inf_int"                  # string offset=544
.Linfo_string59:
	.asciz	"__rvv_uint32m1_t"              # string offset=557
.Linfo_string60:
	.asciz	"vuint32m1_t"                   # string offset=574
.Linfo_string61:
	.asciz	"vmax"                          # string offset=586
.Linfo_string62:
	.asciz	"vmax1"                         # string offset=591
.Linfo_string63:
	.asciz	"vredmax"                       # string offset=597
.Linfo_string64:
	.asciz	"vredmax_int"                   # string offset=605
.Linfo_string65:
	.asciz	"max_x_union"                   # string offset=617
.Linfo_string66:
	.asciz	"u"                             # string offset=629
.Linfo_string67:
	.asciz	"f"                             # string offset=631
.Linfo_string68:
	.asciz	"max_x_as_int"                  # string offset=633
.Linfo_string69:
	.asciz	"vsum1"                         # string offset=646
.Linfo_string70:
	.asciz	"vl1"                           # string offset=652
.Linfo_string71:
	.asciz	"vsum1_eps"                     # string offset=656
.Linfo_string72:
	.asciz	"vinv1"                         # string offset=666
.Linfo_string73:
	.asciz	"corr"                          # string offset=672
.Linfo_string74:
	.asciz	"vl"                            # string offset=677
.Linfo_string75:
	.asciz	"vx"                            # string offset=680
.Linfo_string76:
	.asciz	"old_frm"                       # string offset=683
.Linfo_string77:
	.asciz	"exp_bias"                      # string offset=691
.Linfo_string78:
	.asciz	"int"                           # string offset=700
.Linfo_string79:
	.asciz	"vmax_x"                        # string offset=704
.Linfo_string80:
	.asciz	"vxiln2"                        # string offset=711
.Linfo_string81:
	.asciz	"vk"                            # string offset=718
.Linfo_string82:
	.asciz	"__rvv_int32m1_t"               # string offset=721
.Linfo_string83:
	.asciz	"vint32m1_t"                    # string offset=737
.Linfo_string84:
	.asciz	"vfk"                           # string offset=748
.Linfo_string85:
	.asciz	"vkl2hi"                        # string offset=752
.Linfo_string86:
	.asciz	"vkl2lo"                        # string offset=759
.Linfo_string87:
	.asciz	"vr"                            # string offset=766
.Linfo_string88:
	.asciz	"p"                             # string offset=769
.Linfo_string89:
	.asciz	"vbiased"                       # string offset=771
.Linfo_string90:
	.asciz	"vexp2"                         # string offset=779
.Linfo_string91:
	.asciz	"vf2k"                          # string offset=785
.Linfo_string92:
	.asciz	"vexp"                          # string offset=790
.Linfo_string93:
	.asciz	"vblk"                          # string offset=795
.Linfo_string94:
	.asciz	"row"                           # string offset=800
.Linfo_string95:
	.asciz	"vinvB"                         # string offset=804
.Linfo_string96:
	.asciz	"row2"                          # string offset=810
.Linfo_string97:
	.asciz	"debug_delay_cycles"            # string offset=815
.Linfo_string98:
	.asciz	"cycles"                        # string offset=834
.Linfo_string99:
	.asciz	"i"                             # string offset=841
.Linfo_string100:
	.asciz	"main"                          # string offset=843
	.section	.debug_str_offsets,"",@progbits
	.word	.Linfo_string0
	.word	.Linfo_string1
	.word	.Linfo_string2
	.word	.Linfo_string3
	.word	.Linfo_string4
	.word	.Linfo_string5
	.word	.Linfo_string6
	.word	.Linfo_string7
	.word	.Linfo_string8
	.word	.Linfo_string9
	.word	.Linfo_string10
	.word	.Linfo_string11
	.word	.Linfo_string12
	.word	.Linfo_string13
	.word	.Linfo_string14
	.word	.Linfo_string15
	.word	.Linfo_string16
	.word	.Linfo_string17
	.word	.Linfo_string18
	.word	.Linfo_string19
	.word	.Linfo_string20
	.word	.Linfo_string21
	.word	.Linfo_string22
	.word	.Linfo_string23
	.word	.Linfo_string24
	.word	.Linfo_string25
	.word	.Linfo_string26
	.word	.Linfo_string27
	.word	.Linfo_string28
	.word	.Linfo_string29
	.word	.Linfo_string30
	.word	.Linfo_string31
	.word	.Linfo_string32
	.word	.Linfo_string33
	.word	.Linfo_string34
	.word	.Linfo_string35
	.word	.Linfo_string36
	.word	.Linfo_string37
	.word	.Linfo_string38
	.word	.Linfo_string39
	.word	.Linfo_string40
	.word	.Linfo_string41
	.word	.Linfo_string42
	.word	.Linfo_string43
	.word	.Linfo_string44
	.word	.Linfo_string45
	.word	.Linfo_string46
	.word	.Linfo_string47
	.word	.Linfo_string48
	.word	.Linfo_string49
	.word	.Linfo_string50
	.word	.Linfo_string51
	.word	.Linfo_string52
	.word	.Linfo_string53
	.word	.Linfo_string54
	.word	.Linfo_string55
	.word	.Linfo_string56
	.word	.Linfo_string57
	.word	.Linfo_string58
	.word	.Linfo_string59
	.word	.Linfo_string60
	.word	.Linfo_string61
	.word	.Linfo_string62
	.word	.Linfo_string63
	.word	.Linfo_string64
	.word	.Linfo_string65
	.word	.Linfo_string66
	.word	.Linfo_string67
	.word	.Linfo_string68
	.word	.Linfo_string69
	.word	.Linfo_string70
	.word	.Linfo_string71
	.word	.Linfo_string72
	.word	.Linfo_string73
	.word	.Linfo_string74
	.word	.Linfo_string75
	.word	.Linfo_string76
	.word	.Linfo_string77
	.word	.Linfo_string78
	.word	.Linfo_string79
	.word	.Linfo_string80
	.word	.Linfo_string81
	.word	.Linfo_string82
	.word	.Linfo_string83
	.word	.Linfo_string84
	.word	.Linfo_string85
	.word	.Linfo_string86
	.word	.Linfo_string87
	.word	.Linfo_string88
	.word	.Linfo_string89
	.word	.Linfo_string90
	.word	.Linfo_string91
	.word	.Linfo_string92
	.word	.Linfo_string93
	.word	.Linfo_string94
	.word	.Linfo_string95
	.word	.Linfo_string96
	.word	.Linfo_string97
	.word	.Linfo_string98
	.word	.Linfo_string99
	.word	.Linfo_string100
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.half	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	src
	.quad	dst
	.quad	golden
	.quad	diff_mem
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp5
	.quad	.Ltmp29
	.quad	.Ltmp57
	.quad	.Ltmp65
	.quad	.Ltmp70
	.quad	.Lfunc_begin1
	.quad	.Ltmp84
	.quad	.Ltmp107
	.quad	.Ltmp138
	.quad	.Ltmp146
	.quad	.Ltmp150
.Ldebug_addr_end0:
	.ident	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym src
	.addrsig_sym dst
	.section	.debug_line,"",@progbits
.Lline_table_start0:
