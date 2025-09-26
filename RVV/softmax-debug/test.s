	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfh1p0_zfhmin1p0_zca1p0_zcd1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"test.c"
	.file	0 "/mnt/d/riscv-dnn/test/ops/softmax" "test.c" md5 0xf79f56bc39e3509da4708e56198a7e9a
	.file	1 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/sys" "_types.h" md5 0x17b5691773b3e3881dfdbe392c9e8d43
	.file	2 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "strings.h" md5 0xdceb1b71cd72987b246237af8552faba
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: main:a <- 1
	#DEBUG_VALUE: main:b <- 2
	#DEBUG_VALUE: main:c <- [DW_OP_plus_uconst 2, DW_OP_stack_value] 1
	.loc	0 115 5 prologue_end            # test.c:115:5
	li	a0, 0
	ret
.Ltmp0:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.hidden	softmax_stable_rvv_fp32         # -- Begin function softmax_stable_rvv_fp32
	.globl	softmax_stable_rvv_fp32
	.p2align	1
	.type	softmax_stable_rvv_fp32,@function
softmax_stable_rvv_fp32:                # @softmax_stable_rvv_fp32
.Lfunc_begin1:
	.loc	0 120 0                         # test.c:120:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	csrr	a3, vlenb
	li	a4, 91
	mul	a3, a3, a4
	sub	sp, sp, a3
	.cfi_escape 0x0f, 0x0f, 0x72, 0x00, 0x11, 0xc0, 0x00, 0x22, 0x11, 0xdb, 0x00, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 64 + 91 * vlenb
.Ltmp1:
	.loc	0 122 24 prologue_end           # test.c:122:24
	vsetivli	zero, 1, e32, m1, ta, ma
.Ltmp2:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	.loc	0 0 24 is_stmt 0                # test.c:0:24
	lui	a6, 262144
.Ltmp3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	lui	a3, 205501
	lui	a5, 1046528
.Ltmp4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	addi	a7, a3, -905
.Ltmp5:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	.loc	0 126 64 is_stmt 1              # test.c:126:64
	vmv.v.x	v8, a5
.Ltmp6:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vneginf1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src_orig <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	.loc	0 148 5                         # test.c:148:5
	beqz	a2, .LBB1_4
.Ltmp7:
# %bb.1:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	mv	a5, a1
	mv	a3, a2
	vmv1r.v	v9, v8
.Ltmp8:
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	.loc	0 149 21 is_stmt 1              # test.c:149:21
	vsetvli	a4, a3, e32, m8, ta, ma
.Ltmp9:
	#DEBUG_VALUE: vl <- $x14
	.loc	0 150 27                        # test.c:150:27
	vle32.v	v16, (a5)
.Ltmp10:
	#DEBUG_VALUE: vx <- undef
	.loc	0 153 13                        # test.c:153:13
	sub	a3, a3, a4
.Ltmp11:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x13
	.loc	0 151 32                        # test.c:151:32
	vfredmax.vs	v10, v16, v8
.Ltmp12:
	#DEBUG_VALUE: blk_max <- undef
	.loc	0 153 24                        # test.c:153:24
	slli	a4, a4, 2
.Ltmp13:
	.loc	0 152 17                        # test.c:152:17
	vsetivli	zero, 1, e32, m1, ta, ma
	vfmax.vv	v9, v9, v10
	.loc	0 153 24                        # test.c:153:24
	add	a5, a5, a4
.Ltmp14:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x15
	.loc	0 148 5                         # test.c:148:5
	bnez	a3, .LBB1_2
.Ltmp15:
# %bb.3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv1r.v	v8, v9
.Ltmp16:
.LBB1_4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- undef
	vmv.v.x	v9, a6
.Ltmp17:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	csrr	a3, vlenb
	add	a3, a3, sp
	addi	a3, a3, 32
	vs1r.v	v9, (a3)                        # vscale x 8-byte Folded Spill
	vmv.v.x	v9, a7
.Ltmp18:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	addi	a3, sp, 32
	vs1r.v	v9, (a3)                        # vscale x 8-byte Folded Spill
	addi	a3, sp, 20
	.loc	0 159 5                         # test.c:159:5
	vse32.v	v8, (a3)
.Ltmp19:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	.loc	0 165 5 is_stmt 1               # test.c:165:5
	beqz	a2, .LBB1_7
.Ltmp20:
# %bb.5:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a7, 0
	lui	a3, 261003
	lui	s0, 231425
	lui	t1, 254635
	lui	t2, 250539
	lui	t3, 245897
	lui	t4, 240481
	lui	t5, 237847
	lui	t6, 234095
	vsetvli	a5, zero, e32, m8, ta, ma
.Ltmp21:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x15
	lui	a5, 258839
.Ltmp22:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x15
	lui	a4, 260096
	lui	s1, 258048
	vmv.v.x	v8, a5
.Ltmp23:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi_8 <- undef
	csrr	a5, vlenb
.Ltmp24:
	li	a6, 82
	mul	a5, a5, a6
	add	a5, a5, sp
	addi	a5, a5, 32
	vs8r.v	v8, (a5)                        # vscale x 64-byte Folded Spill
	lw	t0, 20(sp)
	vmv.v.x	v8, a4
.Ltmp25:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1_8 <- undef
	csrr	a4, vlenb
	li	a5, 74
	mul	a4, a4, a5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v8, (a4)                        # vscale x 64-byte Folded Spill
	li	a6, 127
	vmv.v.x	v8, s1
.Ltmp26:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2_8 <- undef
	csrr	a4, vlenb
	li	a5, 66
	mul	a4, a4, a5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v8, (a4)                        # vscale x 64-byte Folded Spill
	mv	a5, a0
.Ltmp27:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x15
	addi	a3, a3, -1477
	vmv.v.x	v8, a3
.Ltmp28:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2_8 <- undef
	csrr	a3, vlenb
	li	a4, 58
	mul	a3, a3, a4
	add	a3, a3, sp
	addi	a3, a3, 32
	vs8r.v	v8, (a3)                        # vscale x 64-byte Folded Spill
	mv	a3, a2
	addi	a4, s0, -1024
	addi	s1, t1, -1365
	addi	s2, t2, -1365
	addi	t1, t3, -1911
	addi	t2, t4, -1183
	addi	t3, t5, 1492
	addi	t4, t6, -626
	vsetivli	zero, 1, e32, m1, ta, ma
	vmv.v.i	v8, 0
	vmv.v.i	v9, 0
	vsetvli	s0, zero, e32, m8, ta, ma
	vmv.v.x	v16, a4
.Ltmp29:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo_8 <- undef
	csrr	a4, vlenb
	li	t5, 50
	mul	a4, a4, t5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, s1
.Ltmp30:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3_8 <- undef
	csrr	a4, vlenb
	li	t5, 42
	mul	a4, a4, t5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, s2
.Ltmp31:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4_8 <- undef
	csrr	a4, vlenb
	li	t5, 34
	mul	a4, a4, t5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t1
.Ltmp32:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5_8 <- undef
	csrr	a4, vlenb
	li	t1, 26
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t2
.Ltmp33:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6_8 <- undef
	csrr	a4, vlenb
	li	t1, 18
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t3
.Ltmp34:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7_8 <- undef
	csrr	a4, vlenb
	li	t1, 10
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t4
.Ltmp35:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	csrr	a4, vlenb
	slli	a4, a4, 1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
.Ltmp36:
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x13
	csrr	a4, vlenb
	li	t1, 90
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs1r.v	v9, (a4)                        # vscale x 8-byte Folded Spill
.Ltmp37:
	.loc	0 166 21 is_stmt 1              # test.c:166:21
	vsetvli	a4, a3, e32, m8, ta, ma
.Ltmp38:
	#DEBUG_VALUE: vl <- $x14
	.loc	0 168 27                        # test.c:168:27
	vle32.v	v8, (a1)
.Ltmp39:
	#DEBUG_VALUE: vx <- undef
	.loc	0 169 65                        # test.c:169:65
	vmv.v.x	v24, t0
.Ltmp40:
	#DEBUG_VALUE: vmaxB <- undef
	.loc	0 170 14                        # test.c:170:14
	vfsub.vv	v8, v8, v24
	csrr	t1, vlenb
	li	t2, 58
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 174 31                        # test.c:174:31
	vfmul.vv	v24, v8, v16
.Ltmp41:
	#DEBUG_VALUE: vxiln2 <- undef
	.loc	0 175 31                        # test.c:175:31
	vfcvt.x.f.v	v24, v24
.Ltmp42:
	#DEBUG_VALUE: vk <- undef
	.loc	0 179 31                        # test.c:179:31
	vfcvt.f.x.v	v0, v24
.Ltmp43:
	#DEBUG_VALUE: vfk <- undef
	.loc	0 0 31 is_stmt 0                # test.c:0:31
	csrr	t1, vlenb
	li	t2, 82
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 180 31 is_stmt 1              # test.c:180:31
	vfmul.vv	v16, v0, v16
.Ltmp44:
	#DEBUG_VALUE: vkl2hi <- undef
	.loc	0 182 31                        # test.c:182:31
	vfsub.vv	v8, v8, v16
.Ltmp45:
	#DEBUG_VALUE: vr <- undef
	.loc	0 0 31 is_stmt 0                # test.c:0:31
	csrr	t1, vlenb
	li	t2, 50
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 181 31 is_stmt 1              # test.c:181:31
	vfmul.vv	v16, v0, v16
.Ltmp46:
	#DEBUG_VALUE: vkl2lo <- undef
	.loc	0 183 14                        # test.c:183:14
	vfsub.vv	v0, v8, v16
.Ltmp47:
	#DEBUG_VALUE: p <- undef
	.loc	0 0 14 is_stmt 0                # test.c:0:14
	csrr	t1, vlenb
	slli	t1, t1, 1
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v8, (t1)                        # vscale x 64-byte Folded Reload
	csrr	t1, vlenb
	li	t2, 10
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 187 13 is_stmt 1              # test.c:187:13
	vfmadd.vv	v8, v0, v16
	csrr	t1, vlenb
	li	t2, 18
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 188 13                        # test.c:188:13
	vfmadd.vv	v8, v0, v16
	csrr	t1, vlenb
	li	t2, 26
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 189 13                        # test.c:189:13
	vfmadd.vv	v8, v0, v16
	csrr	t1, vlenb
	li	t2, 34
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 190 13                        # test.c:190:13
	vfmadd.vv	v8, v0, v16
	csrr	t1, vlenb
	li	t2, 42
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 191 13                        # test.c:191:13
	vfmadd.vv	v8, v0, v16
	csrr	t1, vlenb
	li	t2, 66
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 192 13                        # test.c:192:13
	vfmadd.vv	v8, v0, v16
	csrr	t1, vlenb
	li	t2, 74
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl8r.v	v16, (t1)                       # vscale x 64-byte Folded Reload
	.loc	0 193 13                        # test.c:193:13
	vfmadd.vv	v8, v0, v16
	.loc	0 194 13                        # test.c:194:13
	vfmadd.vv	v8, v0, v16
.Ltmp48:
	#DEBUG_VALUE: exp_bias <- 127
	.loc	0 198 30                        # test.c:198:30
	vadd.vx	v16, v24, a6
.Ltmp49:
	#DEBUG_VALUE: vbiased <- undef
	.loc	0 199 30                        # test.c:199:30
	vsll.vi	v16, v16, 23
.Ltmp50:
	#DEBUG_VALUE: vexp2 <- undef
	#DEBUG_VALUE: vf2k <- undef
	.loc	0 202 30                        # test.c:202:30
	vfmul.vv	v8, v8, v16
.Ltmp51:
	#DEBUG_VALUE: vexp8 <- undef
	.loc	0 173 27                        # test.c:173:27
	#APP
	frrm	s1
	#NO_APP
.Ltmp52:
	#DEBUG_VALUE: old_frm <- $x9
	.loc	0 173 73                        # test.c:173:73
	#APP
	fsrm	a7
	#NO_APP
	.loc	0 176 9                         # test.c:176:9
	#APP
	fsrm	s1
	#NO_APP
	.loc	0 203 9 is_stmt 0               # test.c:203:9
	vsetvli	zero, a3, e32, m8, ta, ma
	vse32.v	v8, (a5)
	.loc	0 206 29 is_stmt 1              # test.c:206:29
	vsetivli	zero, 1, e32, m1, ta, ma
	vmv.v.i	v16, 0
	vsetvli	zero, a3, e32, m8, ta, ma
	vfredosum.vs	v8, v8, v16
.Ltmp53:
	#DEBUG_VALUE: vblk <- undef
	.loc	0 0 29 is_stmt 0                # test.c:0:29
	csrr	t1, vlenb
	li	t2, 90
	mul	t1, t1, t2
	add	t1, t1, sp
	addi	t1, t1, 32
	vl1r.v	v9, (t1)                        # vscale x 8-byte Folded Reload
	.loc	0 207 17 is_stmt 1              # test.c:207:17
	vsetivli	zero, 1, e32, m1, ta, ma
	vfadd.vv	v9, v9, v8
	.loc	0 209 14                        # test.c:209:14
	sub	a3, a3, a4
.Ltmp54:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x13
	.loc	0 209 25                        # test.c:209:25
	slli	a4, a4, 2
.Ltmp55:
	add	a1, a1, a4
.Ltmp56:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 209 36                        # test.c:209:36
	add	a5, a5, a4
.Ltmp57:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x15
	.loc	0 165 5                         # test.c:165:5
	bnez	a3, .LBB1_6
	j	.LBB1_8
.Ltmp58:
.LBB1_7:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv.v.i	v8, 0
	vmv1r.v	v9, v8
.Ltmp59:
.LBB1_8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	addi	a1, sp, 32
	vl1r.v	v8, (a1)                        # vscale x 8-byte Folded Reload
	.loc	0 213 30 is_stmt 1              # test.c:213:30
	vfadd.vv	v8, v9, v8
.Ltmp60:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	.loc	0 214 26                        # test.c:214:26
	vfrec7.v	v9, v8
.Ltmp61:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	.loc	0 215 25                        # test.c:215:25
	vmv1r.v	v10, v8
	csrr	a1, vlenb
	add	a1, a1, sp
	addi	a1, a1, 32
	vl1r.v	v11, (a1)                       # vscale x 8-byte Folded Reload
	vfnmsub.vv	v10, v9, v11
.Ltmp62:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	.loc	0 216 13                        # test.c:216:13
	vfmul.vv	v9, v9, v10
	.loc	0 217 13                        # test.c:217:13
	vfnmsub.vv	v8, v9, v11
	.loc	0 218 13                        # test.c:218:13
	vfmul.vv	v8, v9, v8
	addi	a1, sp, 16
	.loc	0 222 5 is_stmt 0               # test.c:222:5
	vse32.v	v8, (a1)
.Ltmp63:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	.loc	0 226 5 is_stmt 1               # test.c:226:5
	beqz	a2, .LBB1_12
.Ltmp64:
# %bb.9:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	lw	a1, 16(sp)
	mv	a3, a0
	mv	a4, a2
.Ltmp65:
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x14
	.loc	0 227 21 is_stmt 1              # test.c:227:21
	vsetvli	a5, a4, e32, m8, ta, ma
.Ltmp66:
	#DEBUG_VALUE: vl <- $x15
	.loc	0 228 30                        # test.c:228:30
	vle32.v	v8, (a3)
.Ltmp67:
	#DEBUG_VALUE: row <- undef
	.loc	0 229 65                        # test.c:229:65
	vmv.v.x	v16, a1
.Ltmp68:
	#DEBUG_VALUE: vinvB <- undef
	.loc	0 232 14                        # test.c:232:14
	sub	a4, a4, a5
.Ltmp69:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x14
	.loc	0 230 15                        # test.c:230:15
	vfmul.vv	v8, v8, v16
	.loc	0 231 9 is_stmt 0               # test.c:231:9
	vse32.v	v8, (a3)
	.loc	0 232 25 is_stmt 1              # test.c:232:25
	slli	a5, a5, 2
.Ltmp70:
	add	a3, a3, a5
.Ltmp71:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x13
	.loc	0 226 5                         # test.c:226:5
	bnez	a4, .LBB1_10
.Ltmp72:
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 239 21                        # test.c:239:21
	vsetvli	a1, a2, e32, m8, ta, ma
.Ltmp73:
	#DEBUG_VALUE: vl <- $x11
	.loc	0 240 29                        # test.c:240:29
	vle32.v	v8, (a0)
.Ltmp74:
	#DEBUG_VALUE: row2 <- undef
	.loc	0 242 14                        # test.c:242:14
	sub	a2, a2, a1
.Ltmp75:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 241 9 is_stmt 0               # test.c:241:9
	vse32.v	v8, (a0)
	.loc	0 242 25 is_stmt 1              # test.c:242:25
	slli	a1, a1, 2
.Ltmp76:
	add	a0, a0, a1
.Ltmp77:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 238 5                         # test.c:238:5
	bnez	a2, .LBB1_11
.Ltmp78:
.LBB1_12:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	.loc	0 252 1 epilogue_begin          # test.c:252:1
	csrr	a0, vlenb
	li	a1, 91
	mul	a0, a0, a1
	add	sp, sp, a0
	.cfi_def_cfa sp, 64
	ld	s0, 56(sp)                      # 8-byte Folded Reload
	ld	s1, 48(sp)                      # 8-byte Folded Reload
	ld	s2, 40(sp)                      # 8-byte Folded Reload
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.Ltmp79:
.Lfunc_end1:
	.size	softmax_stable_rvv_fp32, .Lfunc_end1-softmax_stable_rvv_fp32
	.cfi_endproc
                                        # -- End function
	.hidden	dst                             # @dst
	.type	dst,@object
	.bss
	.globl	dst
	.p2align	2, 0x0
dst:
	.zero	512
	.size	dst, 512

	.hidden	diff_mem                        # @diff_mem
	.type	diff_mem,@object
	.globl	diff_mem
	.p2align	2, 0x0
diff_mem:
	.zero	512
	.size	diff_mem, 512

	.file	3 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/machine" "_default_types.h" md5 0xf7024d0682a918b41f94e8be9cd90461
	.file	4 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "riscv_vector.h" md5 0x255ceebde96f450c22e334dcdb0f3a56
	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	15                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	127                             # 127
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
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
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	11                              # Abbreviation Code
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
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	13                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	47                              # DW_AT_upper_bound
	.byte	24                              # DW_FORM_exprloc
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
	.byte	1                               # Abbrev [1] 0xc:0x338 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.half	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.word	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.word	.Laddr_table_base0              # DW_AT_addr_base
	.word	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.word	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x32:0xc DW_TAG_array_type
	.word	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x37:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	128                             # DW_AT_count
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
	.byte	105                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	7                               # Abbrev [7] 0x51:0x8 DW_TAG_typedef
	.word	89                              # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x59:0x8 DW_TAG_typedef
	.word	97                              # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x61:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x65:0x2f DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.word	681                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x74:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_const_value
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.word	681                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x7d:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_const_value
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.word	681                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x86:0xd DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	49
	.byte	35
	.byte	2
	.byte	159
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.word	681                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x94:0x215 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x9f:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	709                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa8:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	709                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xb1:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	10                              # Abbrev [10] 0xba:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	20
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc5:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xd0:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.word	714                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xd9:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0xe2:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.word	709                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xeb:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0xf4:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0xfd:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	14                              # Abbrev [14] 0x106:0x8 DW_TAG_variable
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.word	714                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x10e:0x8 DW_TAG_variable
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x116:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x11e:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x126:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x12e:0x8 DW_TAG_variable
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x136:0x8 DW_TAG_variable
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x13e:0x8 DW_TAG_variable
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x146:0x8 DW_TAG_variable
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x14e:0x8 DW_TAG_variable
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x156:0x8 DW_TAG_variable
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x15e:0x8 DW_TAG_variable
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x166:0x8 DW_TAG_variable
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x16e:0x8 DW_TAG_variable
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x176:0x8 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x17e:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x186:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x18e:0x8 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.word	709                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x196:0x8 DW_TAG_variable
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x19e:0x8 DW_TAG_variable
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1a6:0x8 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1ae:0x8 DW_TAG_variable
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1b6:0x8 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1be:0x20 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.word	.Ltmp14-.Ltmp8                  # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0x1c4:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1cd:0x8 DW_TAG_variable
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1d5:0x8 DW_TAG_variable
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1de:0x92 DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.word	.Ltmp57-.Ltmp37                 # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0x1e4:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1ed:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.word	719                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1f6:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.word	705                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1ff:0x8 DW_TAG_variable
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x207:0x8 DW_TAG_variable
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x20f:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x217:0x8 DW_TAG_variable
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.word	798                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x21f:0x8 DW_TAG_variable
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x227:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x22f:0x8 DW_TAG_variable
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x237:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x23f:0x8 DW_TAG_variable
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x247:0x8 DW_TAG_variable
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.word	798                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x24f:0x8 DW_TAG_variable
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.word	798                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x257:0x8 DW_TAG_variable
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x25f:0x8 DW_TAG_variable
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x267:0x8 DW_TAG_variable
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.word	724                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x270:0x20 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.word	.Ltmp71-.Ltmp65                 # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0x276:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	14                              # Abbrev [14] 0x27f:0x8 DW_TAG_variable
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x287:0x8 DW_TAG_variable
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x290:0x18 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.word	.Ltmp77-.Ltmp72                 # DW_AT_high_pc
	.byte	13                              # Abbrev [13] 0x296:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.word	81                              # DW_AT_type
	.byte	14                              # Abbrev [14] 0x29f:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.word	761                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2a9:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2ad:0xc DW_TAG_array_type
	.word	697                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2b2:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2b9:0x8 DW_TAG_typedef
	.word	705                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x2c1:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x2c5:0x5 DW_TAG_pointer_type
	.word	62                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2ca:0x5 DW_TAG_const_type
	.word	81                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2cf:0x5 DW_TAG_const_type
	.word	681                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2d4:0x9 DW_TAG_typedef
	.word	733                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.half	357                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x2dd:0x6 DW_TAG_typedef
	.word	739                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	20                              # Abbrev [20] 0x2e3:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	62                              # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2e8:0x10 DW_TAG_subrange_type
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
	.byte	18                              # Abbrev [18] 0x2f9:0x9 DW_TAG_typedef
	.word	770                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.half	371                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x302:0x6 DW_TAG_typedef
	.word	776                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	20                              # Abbrev [20] 0x308:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	62                              # DW_AT_type
	.byte	21                              # Abbrev [21] 0x30d:0x10 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	10                              # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	52
	.byte	27
	.byte	56
	.byte	30
	.byte	49
	.byte	28
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x31e:0x9 DW_TAG_typedef
	.word	807                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.half	286                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x327:0x6 DW_TAG_typedef
	.word	813                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	20                              # Abbrev [20] 0x32d:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	681                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x332:0x10 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	10                              # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	52
	.byte	27
	.byte	56
	.byte	30
	.byte	49
	.byte	28
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	316                             # Length of String Offsets Set
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
	.asciz	"dst"                           # string offset=145
.Linfo_string4:
	.asciz	"float"                         # string offset=149
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=155
.Linfo_string6:
	.asciz	"diff_mem"                      # string offset=175
.Linfo_string7:
	.asciz	"unsigned long"                 # string offset=184
.Linfo_string8:
	.asciz	"__size_t"                      # string offset=198
.Linfo_string9:
	.asciz	"size_t"                        # string offset=207
.Linfo_string10:
	.asciz	"main"                          # string offset=214
.Linfo_string11:
	.asciz	"int"                           # string offset=219
.Linfo_string12:
	.asciz	"softmax_stable_rvv_fp32"       # string offset=223
.Linfo_string13:
	.asciz	"a"                             # string offset=247
.Linfo_string14:
	.asciz	"b"                             # string offset=249
.Linfo_string15:
	.asciz	"c"                             # string offset=251
.Linfo_string16:
	.asciz	"max_bits"                      # string offset=253
.Linfo_string17:
	.asciz	"unsigned int"                  # string offset=262
.Linfo_string18:
	.asciz	"uint32_t"                      # string offset=275
.Linfo_string19:
	.asciz	"inv_bits"                      # string offset=284
.Linfo_string20:
	.asciz	"src"                           # string offset=293
.Linfo_string21:
	.asciz	"n"                             # string offset=297
.Linfo_string22:
	.asciz	"vlm8"                          # string offset=299
.Linfo_string23:
	.asciz	"avl"                           # string offset=304
.Linfo_string24:
	.asciz	"vl"                            # string offset=308
.Linfo_string25:
	.asciz	"dst_orig"                      # string offset=311
.Linfo_string26:
	.asciz	"avl2"                          # string offset=320
.Linfo_string27:
	.asciz	"exp_bias"                      # string offset=325
.Linfo_string28:
	.asciz	"old_frm"                       # string offset=334
.Linfo_string29:
	.asciz	"avl3"                          # string offset=342
.Linfo_string30:
	.asciz	"avl4"                          # string offset=347
.Linfo_string31:
	.asciz	"vl1"                           # string offset=352
.Linfo_string32:
	.asciz	"vzero1"                        # string offset=356
.Linfo_string33:
	.asciz	"__rvv_float32m1_t"             # string offset=363
.Linfo_string34:
	.asciz	"vfloat32m1_t"                  # string offset=381
.Linfo_string35:
	.asciz	"vtwo1"                         # string offset=394
.Linfo_string36:
	.asciz	"veps1"                         # string offset=400
.Linfo_string37:
	.asciz	"vneginf1"                      # string offset=406
.Linfo_string38:
	.asciz	"viln2_8"                       # string offset=415
.Linfo_string39:
	.asciz	"__rvv_float32m8_t"             # string offset=423
.Linfo_string40:
	.asciz	"vfloat32m8_t"                  # string offset=441
.Linfo_string41:
	.asciz	"vln2_hi_8"                     # string offset=454
.Linfo_string42:
	.asciz	"vln2_lo_8"                     # string offset=464
.Linfo_string43:
	.asciz	"pc0_8"                         # string offset=474
.Linfo_string44:
	.asciz	"pc1_8"                         # string offset=480
.Linfo_string45:
	.asciz	"pc2_8"                         # string offset=486
.Linfo_string46:
	.asciz	"pc3_8"                         # string offset=492
.Linfo_string47:
	.asciz	"pc4_8"                         # string offset=498
.Linfo_string48:
	.asciz	"pc5_8"                         # string offset=504
.Linfo_string49:
	.asciz	"pc6_8"                         # string offset=510
.Linfo_string50:
	.asciz	"pc7_8"                         # string offset=516
.Linfo_string51:
	.asciz	"pc8_8"                         # string offset=522
.Linfo_string52:
	.asciz	"src_orig"                      # string offset=528
.Linfo_string53:
	.asciz	"vmax1"                         # string offset=537
.Linfo_string54:
	.asciz	"vx"                            # string offset=543
.Linfo_string55:
	.asciz	"blk_max"                       # string offset=546
.Linfo_string56:
	.asciz	"vsum1"                         # string offset=554
.Linfo_string57:
	.asciz	"vmaxB"                         # string offset=560
.Linfo_string58:
	.asciz	"vxiln2"                        # string offset=566
.Linfo_string59:
	.asciz	"vk"                            # string offset=573
.Linfo_string60:
	.asciz	"__rvv_int32m8_t"               # string offset=576
.Linfo_string61:
	.asciz	"vint32m8_t"                    # string offset=592
.Linfo_string62:
	.asciz	"vfk"                           # string offset=603
.Linfo_string63:
	.asciz	"vkl2hi"                        # string offset=607
.Linfo_string64:
	.asciz	"vkl2lo"                        # string offset=614
.Linfo_string65:
	.asciz	"vr"                            # string offset=621
.Linfo_string66:
	.asciz	"p"                             # string offset=624
.Linfo_string67:
	.asciz	"vbiased"                       # string offset=626
.Linfo_string68:
	.asciz	"vexp2"                         # string offset=634
.Linfo_string69:
	.asciz	"vf2k"                          # string offset=640
.Linfo_string70:
	.asciz	"vexp8"                         # string offset=645
.Linfo_string71:
	.asciz	"vblk"                          # string offset=651
.Linfo_string72:
	.asciz	"vsum1_eps"                     # string offset=656
.Linfo_string73:
	.asciz	"vinv1"                         # string offset=666
.Linfo_string74:
	.asciz	"corr"                          # string offset=672
.Linfo_string75:
	.asciz	"row"                           # string offset=677
.Linfo_string76:
	.asciz	"vinvB"                         # string offset=681
.Linfo_string77:
	.asciz	"row2"                          # string offset=687
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.half	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	dst
	.quad	diff_mem
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp8
	.quad	.Ltmp37
	.quad	.Ltmp65
	.quad	.Ltmp72
.Ldebug_addr_end0:
	.ident	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
