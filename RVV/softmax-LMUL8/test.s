	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfh1p0_zfhmin1p0_zca1p0_zcd1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"test.c"
	.file	0 "/mnt/d/riscv-dnn/test/ops/softmax" "test.c" md5 0x3f2268c9d684c1774292d11cabda58bf
	.file	1 "build/softmax-LMUL8" "data.h" md5 0x6d51a38f3851d9c55d2f44196500dd11
	.file	2 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/sys" "_types.h" md5 0x17b5691773b3e3881dfdbe392c9e8d43
	.file	3 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "strings.h" md5 0xdceb1b71cd72987b246237af8552faba
	.file	4 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/machine" "_default_types.h" md5 0xf7024d0682a918b41f94e8be9cd90461
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	0 107 0                         # test.c:107:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
.Lpcrel_hi0:
.Ltmp0:
	.loc	0 109 5 prologue_end            # test.c:109:5
	auipc	a0, %pcrel_hi(dst)
.Lpcrel_hi1:
	auipc	a1, %pcrel_hi(src)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi1)
	li	a2, 128
	call	softmax_stable_rvv_fp32
.Ltmp1:
	.loc	0 110 5                         # test.c:110:5
	li	a0, 0
	.loc	0 110 5 epilogue_begin is_stmt 0 # test.c:110:5
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	.cfi_restore ra
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
.Ltmp2:
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
	.loc	0 115 0 is_stmt 1               # test.c:115:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	csrr	a3, vlenb
	li	a4, 91
	mul	a3, a3, a4
	sub	sp, sp, a3
	.cfi_escape 0x0f, 0x0f, 0x72, 0x00, 0x11, 0xf0, 0x00, 0x22, 0x11, 0xdb, 0x00, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 112 + 91 * vlenb
	mv	s2, a2
.Ltmp3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	mv	s3, a0
.Ltmp4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x19
	.loc	0 117 24 prologue_end           # test.c:117:24
	vsetivli	zero, 1, e32, m1, ta, ma
.Ltmp5:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	.loc	0 0 24 is_stmt 0                # test.c:0:24
	lui	a0, 262144
.Ltmp6:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	lui	a2, 205501
	lui	a3, 1046528
.Ltmp7:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	addi	a2, a2, -905
.Ltmp8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	.loc	0 121 64 is_stmt 1              # test.c:121:64
	vmv.v.x	v8, a3
.Ltmp9:
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
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	.loc	0 143 5                         # test.c:143:5
	beqz	s2, .LBB1_4
.Ltmp10:
# %bb.1:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	mv	a3, a1
	mv	a4, s2
	vmv1r.v	v9, v8
.Ltmp11:
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	.loc	0 144 21 is_stmt 1              # test.c:144:21
	vsetvli	a5, a4, e32, m8, ta, ma
.Ltmp12:
	#DEBUG_VALUE: vl <- $x15
	.loc	0 145 27                        # test.c:145:27
	vle32.v	v16, (a3)
.Ltmp13:
	#DEBUG_VALUE: vx <- undef
	.loc	0 148 13                        # test.c:148:13
	sub	a4, a4, a5
.Ltmp14:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x14
	.loc	0 146 32                        # test.c:146:32
	vfredmax.vs	v10, v16, v8
.Ltmp15:
	#DEBUG_VALUE: blk_max <- undef
	.loc	0 148 24                        # test.c:148:24
	slli	a5, a5, 2
.Ltmp16:
	.loc	0 147 17                        # test.c:147:17
	vsetivli	zero, 1, e32, m1, ta, ma
	vfmax.vv	v9, v9, v10
	.loc	0 148 24                        # test.c:148:24
	add	a3, a3, a5
.Ltmp17:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	.loc	0 143 5                         # test.c:143:5
	bnez	a4, .LBB1_2
.Ltmp18:
# %bb.3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv1r.v	v8, v9
.Ltmp19:
.LBB1_4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- undef
	vmv.v.x	v9, a0
.Ltmp20:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	csrr	a0, vlenb
	add	a0, a0, sp
	addi	a0, a0, 48
	vs1r.v	v9, (a0)                        # vscale x 8-byte Folded Spill
	vmv.v.x	v9, a2
.Ltmp21:
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
	addi	a0, sp, 48
	vs1r.v	v9, (a0)                        # vscale x 8-byte Folded Spill
	addi	a0, sp, 32
	.loc	0 154 5                         # test.c:154:5
	vse32.v	v8, (a0)
.Ltmp22:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x18
	.loc	0 160 5 is_stmt 1               # test.c:160:5
	beqz	s2, .LBB1_7
.Ltmp23:
# %bb.5:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a0, 0
	lui	a5, 261003
	lui	s1, 231425
	lui	s0, 254635
	lui	a6, 250539
	lui	a7, 245897
	lui	t0, 240481
	lui	t1, 237847
	lui	t2, 234095
	vsetvli	a2, zero, e32, m8, ta, ma
.Ltmp24:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x12
	lui	a2, 258839
.Ltmp25:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x12
	lui	a3, 260096
	lui	a4, 258048
	vmv.v.x	v8, a2
.Ltmp26:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi_8 <- undef
	csrr	a2, vlenb
.Ltmp27:
	li	t3, 82
	mul	a2, a2, t3
	add	a2, a2, sp
	addi	a2, a2, 48
	vs8r.v	v8, (a2)                        # vscale x 64-byte Folded Spill
	lw	a2, 32(sp)
.Ltmp28:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x12
	vmv.v.x	v8, a3
.Ltmp29:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1_8 <- undef
	csrr	a3, vlenb
	li	t3, 74
	mul	a3, a3, t3
	add	a3, a3, sp
	addi	a3, a3, 48
	vs8r.v	v8, (a3)                        # vscale x 64-byte Folded Spill
	li	a3, 127
	vmv.v.x	v8, a4
.Ltmp30:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2_8 <- undef
	csrr	a4, vlenb
	li	t3, 66
	mul	a4, a4, t3
	add	a4, a4, sp
	addi	a4, a4, 48
	vs8r.v	v8, (a4)                        # vscale x 64-byte Folded Spill
	mv	a4, s3
	addi	a5, a5, -1477
	vmv.v.x	v8, a5
.Ltmp31:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2_8 <- undef
	csrr	a5, vlenb
	li	t3, 58
	mul	a5, a5, t3
	add	a5, a5, sp
	addi	a5, a5, 48
	vs8r.v	v8, (a5)                        # vscale x 64-byte Folded Spill
	mv	a5, s2
	addi	s1, s1, -1024
	addi	t3, s0, -1365
	addi	a6, a6, -1365
	addi	a7, a7, -1911
	addi	t0, t0, -1183
	addi	t1, t1, 1492
	addi	t2, t2, -626
	vsetivli	zero, 1, e32, m1, ta, ma
	vmv.v.i	v8, 0
	vmv.v.i	v9, 0
	vsetvli	s0, zero, e32, m8, ta, ma
	vmv.v.x	v16, s1
.Ltmp32:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo_8 <- undef
	csrr	t4, vlenb
	li	t5, 50
	mul	t4, t4, t5
	add	t4, t4, sp
	addi	t4, t4, 48
	vs8r.v	v16, (t4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t3
.Ltmp33:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3_8 <- undef
	csrr	t3, vlenb
	li	t4, 42
	mul	t3, t3, t4
	add	t3, t3, sp
	addi	t3, t3, 48
	vs8r.v	v16, (t3)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, a6
.Ltmp34:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4_8 <- undef
	csrr	a6, vlenb
	li	t3, 34
	mul	a6, a6, t3
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v16, (a6)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, a7
.Ltmp35:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5_8 <- undef
	csrr	a6, vlenb
	li	a7, 26
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v16, (a6)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t0
.Ltmp36:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6_8 <- undef
	csrr	a6, vlenb
	li	a7, 18
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v16, (a6)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t1
.Ltmp37:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7_8 <- undef
	csrr	a6, vlenb
	li	a7, 10
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v16, (a6)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t2
.Ltmp38:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	csrr	a6, vlenb
	slli	a6, a6, 1
	add	a6, a6, sp
	addi	a6, a6, 48
	vs8r.v	v16, (a6)                       # vscale x 64-byte Folded Spill
.Ltmp39:
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x15
	csrr	a6, vlenb
	li	a7, 90
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vs1r.v	v9, (a6)                        # vscale x 8-byte Folded Spill
.Ltmp40:
	.loc	0 161 21 is_stmt 1              # test.c:161:21
	vsetvli	s1, a5, e32, m8, ta, ma
.Ltmp41:
	#DEBUG_VALUE: vl <- $x9
	.loc	0 163 27                        # test.c:163:27
	vle32.v	v8, (a1)
.Ltmp42:
	#DEBUG_VALUE: vx <- undef
	.loc	0 164 65                        # test.c:164:65
	vmv.v.x	v24, a2
.Ltmp43:
	#DEBUG_VALUE: vmaxB <- undef
	.loc	0 165 14                        # test.c:165:14
	vfsub.vv	v8, v8, v24
	csrr	a6, vlenb
	li	a7, 58
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 169 31                        # test.c:169:31
	vfmul.vv	v24, v8, v16
.Ltmp44:
	#DEBUG_VALUE: vxiln2 <- undef
	.loc	0 170 31                        # test.c:170:31
	vfcvt.x.f.v	v24, v24
.Ltmp45:
	#DEBUG_VALUE: vk <- undef
	.loc	0 174 31                        # test.c:174:31
	vfcvt.f.x.v	v0, v24
.Ltmp46:
	#DEBUG_VALUE: vfk <- undef
	.loc	0 0 31 is_stmt 0                # test.c:0:31
	csrr	a6, vlenb
	li	a7, 82
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 175 31 is_stmt 1              # test.c:175:31
	vfmul.vv	v16, v0, v16
.Ltmp47:
	#DEBUG_VALUE: vkl2hi <- undef
	.loc	0 177 31                        # test.c:177:31
	vfsub.vv	v8, v8, v16
.Ltmp48:
	#DEBUG_VALUE: vr <- undef
	.loc	0 0 31 is_stmt 0                # test.c:0:31
	csrr	a6, vlenb
	li	a7, 50
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 176 31 is_stmt 1              # test.c:176:31
	vfmul.vv	v16, v0, v16
.Ltmp49:
	#DEBUG_VALUE: vkl2lo <- undef
	.loc	0 178 14                        # test.c:178:14
	vfsub.vv	v0, v8, v16
.Ltmp50:
	#DEBUG_VALUE: p <- undef
	.loc	0 0 14 is_stmt 0                # test.c:0:14
	csrr	a6, vlenb
	slli	a6, a6, 1
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v8, (a6)                        # vscale x 64-byte Folded Reload
	csrr	a6, vlenb
	li	a7, 10
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 182 13 is_stmt 1              # test.c:182:13
	vfmadd.vv	v8, v0, v16
	csrr	a6, vlenb
	li	a7, 18
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 183 13                        # test.c:183:13
	vfmadd.vv	v8, v0, v16
	csrr	a6, vlenb
	li	a7, 26
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 184 13                        # test.c:184:13
	vfmadd.vv	v8, v0, v16
	csrr	a6, vlenb
	li	a7, 34
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 185 13                        # test.c:185:13
	vfmadd.vv	v8, v0, v16
	csrr	a6, vlenb
	li	a7, 42
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 186 13                        # test.c:186:13
	vfmadd.vv	v8, v0, v16
	csrr	a6, vlenb
	li	a7, 66
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 187 13                        # test.c:187:13
	vfmadd.vv	v8, v0, v16
	csrr	a6, vlenb
	li	a7, 74
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl8r.v	v16, (a6)                       # vscale x 64-byte Folded Reload
	.loc	0 188 13                        # test.c:188:13
	vfmadd.vv	v8, v0, v16
	.loc	0 189 13                        # test.c:189:13
	vfmadd.vv	v8, v0, v16
.Ltmp51:
	#DEBUG_VALUE: exp_bias <- 127
	.loc	0 193 30                        # test.c:193:30
	vadd.vx	v16, v24, a3
.Ltmp52:
	#DEBUG_VALUE: vbiased <- undef
	.loc	0 194 30                        # test.c:194:30
	vsll.vi	v16, v16, 23
.Ltmp53:
	#DEBUG_VALUE: vexp2 <- undef
	#DEBUG_VALUE: vf2k <- undef
	.loc	0 197 30                        # test.c:197:30
	vfmul.vv	v8, v8, v16
.Ltmp54:
	#DEBUG_VALUE: vexp8 <- undef
	.loc	0 168 27                        # test.c:168:27
	#APP
	frrm	s0
	#NO_APP
.Ltmp55:
	#DEBUG_VALUE: old_frm <- $x8
	.loc	0 168 73                        # test.c:168:73
	#APP
	fsrm	a0
	#NO_APP
	.loc	0 171 9                         # test.c:171:9
	#APP
	fsrm	s0
	#NO_APP
	.loc	0 198 9 is_stmt 0               # test.c:198:9
	vsetvli	zero, a5, e32, m8, ta, ma
	vse32.v	v8, (a4)
	.loc	0 201 29 is_stmt 1              # test.c:201:29
	vsetivli	zero, 1, e32, m1, ta, ma
	vmv.v.i	v16, 0
	vsetvli	zero, a5, e32, m8, ta, ma
	vfredosum.vs	v8, v8, v16
.Ltmp56:
	#DEBUG_VALUE: vblk <- undef
	.loc	0 0 29 is_stmt 0                # test.c:0:29
	csrr	a6, vlenb
	li	a7, 90
	mul	a6, a6, a7
	add	a6, a6, sp
	addi	a6, a6, 48
	vl1r.v	v9, (a6)                        # vscale x 8-byte Folded Reload
	.loc	0 202 17 is_stmt 1              # test.c:202:17
	vsetivli	zero, 1, e32, m1, ta, ma
	vfadd.vv	v9, v9, v8
	.loc	0 204 14                        # test.c:204:14
	sub	a5, a5, s1
.Ltmp57:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x15
	.loc	0 204 25                        # test.c:204:25
	slli	s1, s1, 2
.Ltmp58:
	add	a1, a1, s1
.Ltmp59:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 204 36                        # test.c:204:36
	add	a4, a4, s1
.Ltmp60:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	.loc	0 160 5                         # test.c:160:5
	bnez	a5, .LBB1_6
	j	.LBB1_8
.Ltmp61:
.LBB1_7:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv.v.i	v8, 0
	vmv1r.v	v9, v8
.Ltmp62:
.LBB1_8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	addi	a0, sp, 48
	vl1r.v	v8, (a0)                        # vscale x 8-byte Folded Reload
	.loc	0 208 30 is_stmt 1              # test.c:208:30
	vfadd.vv	v8, v9, v8
.Ltmp63:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	.loc	0 209 26                        # test.c:209:26
	vfrec7.v	v9, v8
.Ltmp64:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	.loc	0 210 25                        # test.c:210:25
	vmv1r.v	v10, v8
	csrr	a0, vlenb
	add	a0, a0, sp
	addi	a0, a0, 48
	vl1r.v	v11, (a0)                       # vscale x 8-byte Folded Reload
	vfnmsub.vv	v10, v9, v11
.Ltmp65:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	.loc	0 211 13                        # test.c:211:13
	vfmul.vv	v9, v9, v10
	.loc	0 212 13                        # test.c:212:13
	vfnmsub.vv	v8, v9, v11
	.loc	0 213 13                        # test.c:213:13
	vfmul.vv	v8, v9, v8
	addi	a0, sp, 28
	.loc	0 217 5 is_stmt 0               # test.c:217:5
	vse32.v	v8, (a0)
.Ltmp66:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x18
	.loc	0 221 5 is_stmt 1               # test.c:221:5
	beqz	s2, .LBB1_13
.Ltmp67:
# %bb.9:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	lw	a0, 28(sp)
	mv	a1, s3
	mv	a2, s2
.Ltmp68:
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	.loc	0 222 21 is_stmt 1              # test.c:222:21
	vsetvli	a3, a2, e32, m8, ta, ma
.Ltmp69:
	#DEBUG_VALUE: vl <- $x13
	.loc	0 223 30                        # test.c:223:30
	vle32.v	v8, (a1)
.Ltmp70:
	#DEBUG_VALUE: row <- undef
	.loc	0 224 65                        # test.c:224:65
	vmv.v.x	v16, a0
.Ltmp71:
	#DEBUG_VALUE: vinvB <- undef
	.loc	0 227 14                        # test.c:227:14
	sub	a2, a2, a3
.Ltmp72:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	.loc	0 225 15                        # test.c:225:15
	vfmul.vv	v8, v8, v16
	.loc	0 226 9 is_stmt 0               # test.c:226:9
	vse32.v	v8, (a1)
	.loc	0 227 25 is_stmt 1              # test.c:227:25
	slli	a3, a3, 2
.Ltmp73:
	add	a1, a1, a3
.Ltmp74:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	.loc	0 221 5                         # test.c:221:5
	bnez	a2, .LBB1_10
.Ltmp75:
# %bb.11:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	mv	a0, s3
	mv	a1, s2
.Ltmp76:
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x11
	.loc	0 234 21 is_stmt 1              # test.c:234:21
	vsetvli	a2, a1, e32, m8, ta, ma
.Ltmp77:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 235 29                        # test.c:235:29
	vle32.v	v8, (a0)
.Ltmp78:
	#DEBUG_VALUE: row2 <- undef
	.loc	0 237 14                        # test.c:237:14
	sub	a1, a1, a2
.Ltmp79:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x11
	.loc	0 236 9 is_stmt 0               # test.c:236:9
	vse32.v	v8, (a0)
	.loc	0 237 25 is_stmt 1              # test.c:237:25
	slli	a2, a2, 2
.Ltmp80:
	add	a0, a0, a2
.Ltmp81:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 233 5                         # test.c:233:5
	bnez	a1, .LBB1_12
.Ltmp82:
.LBB1_13:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
.Lpcrel_hi2:
	.loc	0 27 5                          # test.c:27:5 @[ test.c:242:5 ]
	auipc	a0, %pcrel_hi(.L.str.4)
.Lpcrel_hi3:
	auipc	a1, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi3)
.Ltmp83:
	#DEBUG_VALUE: dbg_print_line:s <- $x11
	call	printf
.Ltmp84:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: i <- 0
	.loc	0 243 5                         # test.c:243:5
	beqz	s2, .LBB1_16
.Ltmp85:
# %bb.14:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x19
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x18
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	s1, 0
	.loc	0 243 5                         # test.c:243:5
	slli	s2, s2, 2
.Ltmp86:
.Lpcrel_hi4:
	.loc	0 0 5                           # test.c:0:5
	auipc	a0, %pcrel_hi(golden)
.Lpcrel_hi5:
	auipc	a1, %pcrel_hi(.L.str.1)
.Lpcrel_hi6:
	auipc	a2, %pcrel_hi(.L.str.3)
	.loc	0 243 5                         # test.c:243:5
	add	s5, s3, s2
	addi	s0, a0, %pcrel_lo(.Lpcrel_hi4)
	addi	s2, a1, %pcrel_lo(.Lpcrel_hi5)
	addi	s4, a2, %pcrel_lo(.Lpcrel_hi6)
.Ltmp87:
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: i <- undef
	#DEBUG_VALUE: load_f32_bits:u <- [DW_OP_plus_uconst 36, DW_OP_deref] $x2
	#DEBUG_VALUE: load_f32_bits:p <- undef
	.loc	0 92 17 is_stmt 1               # test.c:92:17 @[ test.c:244:57 ]
	addi	a0, sp, 36
	li	a2, 4
	mv	a1, s3
	call	memcpy
.Ltmp88:
	.loc	0 92 42                         # test.c:92:42 @[ test.c:244:57 ]
	lw	a2, 36(sp)
.Ltmp89:
	.loc	0 244 9                         # test.c:244:9
	mv	a0, s2
	mv	a1, s1
	call	dbg_print_idx_hex32
.Ltmp90:
	#DEBUG_VALUE: load_f32_bits:u <- [DW_OP_plus_uconst 36, DW_OP_deref] $x2
	#DEBUG_VALUE: load_f32_bits:p <- undef
	.loc	0 92 17                         # test.c:92:17 @[ test.c:245:60 ]
	addi	a0, sp, 36
	li	a2, 4
	mv	a1, s0
	call	memcpy
.Ltmp91:
	.loc	0 92 42                         # test.c:92:42 @[ test.c:245:60 ]
	lw	a2, 36(sp)
.Ltmp92:
	.loc	0 245 9                         # test.c:245:9
	mv	a0, s4
	mv	a1, s1
	call	dbg_print_idx_hex32
.Ltmp93:
	.loc	0 243 26                        # test.c:243:26
	addi	s3, s3, 4
	addiw	s1, s1, 1
	addi	s0, s0, 4
.Ltmp94:
	.loc	0 243 5                         # test.c:243:5
	bne	s3, s5, .LBB1_15
.Ltmp95:
.LBB1_16:
	.loc	0 247 1 epilogue_begin          # test.c:247:1
	csrr	a0, vlenb
	li	a1, 91
	mul	a0, a0, a1
	add	sp, sp, a0
	.cfi_def_cfa sp, 112
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 112
	.cfi_def_cfa_offset 0
	ret
.Ltmp96:
.Lfunc_end1:
	.size	softmax_stable_rvv_fp32, .Lfunc_end1-softmax_stable_rvv_fp32
	.cfi_endproc
	.file	5 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "stdio.h" md5 0xa7342a852258c4967bca69dfb029e301
	.file	6 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "string.h" md5 0x1e0c0c72b03f6d434a16a6a4c1ca07e7
                                        # -- End function
	.p2align	1                               # -- Begin function dbg_print_idx_hex32
	.type	dbg_print_idx_hex32,@function
dbg_print_idx_hex32:                    # @dbg_print_idx_hex32
.Lfunc_begin2:
	.loc	0 63 0                          # test.c:63:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- undef
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
.Ltmp97:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- 0
	.loc	0 67 12 prologue_end            # test.c:67:12
	lbu	a5, 0(a0)
.Ltmp98:
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:suffix <- undef
	.loc	0 67 5 is_stmt 0                # test.c:67:5
	beqz	a5, .LBB2_14
.Ltmp99:
# %bb.1:
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	.loc	0 0 5                           # test.c:0:5
	li	t0, 0
	li	a3, 0
	addi	a6, sp, 24
	li	a7, 94
.Ltmp100:
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	mv	a4, a3
.Ltmp101:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x14
	.loc	0 67 52 is_stmt 1               # test.c:67:52
	add	t1, a6, a3
	.loc	0 67 12 is_stmt 0               # test.c:67:12
	add	a3, a3, a0
	.loc	0 67 59                         # test.c:67:59
	sb	a5, 0(t1)
	.loc	0 67 12                         # test.c:67:12
	lbu	a5, 1(a3)
	.loc	0 67 47 is_stmt 1               # test.c:67:47
	addi	a3, a4, 1
.Ltmp102:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	.loc	0 67 20                         # test.c:67:20
	sltiu	t1, a4, 94
.Ltmp103:
	.loc	0 67 5                          # test.c:67:5
	addiw	t0, t0, 1
	beqz	a5, .LBB2_4
.Ltmp104:
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	.loc	0 67 5                          # test.c:67:5
	bltu	a4, a7, .LBB2_2
.Ltmp105:
.LBB2_4:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	.loc	0 68 11                         # test.c:68:11
	beqz	t1, .LBB2_6
.Ltmp106:
.LBB2_5:
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	.loc	0 68 38                         # test.c:68:38
	addiw	t0, t0, 1
.Ltmp107:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38 is_stmt 0                # test.c:0:38
	addi	a0, sp, 24
.Ltmp108:
	.loc	0 68 33                         # test.c:68:33
	add	a0, a0, a3
	li	a3, 91
	.loc	0 68 42 is_stmt 1               # test.c:68:42
	sb	a3, 0(a0)
.Ltmp109:
.LBB2_6:
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	.loc	0 71 11                         # test.c:71:11
	beqz	a1, .LBB2_15
.Ltmp110:
# %bb.7:
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	li	t3, 0
	lui	a3, 838861
	addi	a6, sp, 8
	li	a7, 10
	addi	a4, a3, -819
	slli	t2, a4, 32
	li	t1, 15
.Ltmp111:
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	mv	a5, a1
	mv	a3, t3
.Ltmp112:
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x13
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x15
	.loc	0 72 77 is_stmt 1               # test.c:72:77
	slli	a1, a1, 32
	.loc	0 72 53                         # test.c:72:53
	addi	t3, t3, 1
.Ltmp113:
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	.loc	0 72 77                         # test.c:72:77
	mulhu	a1, a1, t2
	srli	a1, a1, 35
.Ltmp114:
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	.loc	0 72 68 is_stmt 0               # test.c:72:68
	slli	a4, a1, 1
	slli	a0, a1, 3
	add	a0, a0, a4
	sub	a0, a5, a0
	.loc	0 72 59 is_stmt 1               # test.c:72:59
	ori	a0, a0, 48
	.loc	0 72 48 is_stmt 0               # test.c:72:48
	add	a4, a6, a3
	.loc	0 72 57                         # test.c:72:57
	sb	a0, 0(a4)
.Ltmp115:
	.loc	0 72 12 is_stmt 1               # test.c:72:12
	bltu	a5, a7, .LBB2_10
.Ltmp116:
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 72 12                         # test.c:72:12
	bltu	a3, t1, .LBB2_8
.Ltmp117:
.LBB2_10:
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	.loc	0 0 12 is_stmt 0                # test.c:0:12
	li	a6, 94
	.loc	0 73 5 is_stmt 1                # test.c:73:5
	blt	a6, t0, .LBB2_16
.Ltmp118:
.LBB2_11:
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	addi	a0, t3, -1
	addi	a7, sp, 8
	addi	a4, sp, 24
	mv	a3, t0
.Ltmp119:
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 73 52                         # test.c:73:52
	add	a1, a7, a0
	lbu	a5, 0(a1)
.Ltmp120:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- undef
	.loc	0 0 52 is_stmt 0                # test.c:0:52
	mv	a1, a3
.Ltmp121:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 73 41                         # test.c:73:41
	add	a3, a3, a4
	.loc	0 73 50                         # test.c:73:50
	sb	a5, 0(a3)
	.loc	0 73 14 is_stmt 1               # test.c:73:14
	sltiu	a5, a1, 94
	.loc	0 73 5                          # test.c:73:5
	addiw	t0, t0, 1
	beqz	a0, .LBB2_17
.Ltmp122:
# %bb.13:                               #   in Loop: Header=BB2_12 Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 73 0                          # test.c:73
	addi	a3, a1, 1
.Ltmp123:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	addi	a0, a0, -1
	.loc	0 73 5 is_stmt 0                # test.c:73:5
	bltu	a1, a6, .LBB2_12
	j	.LBB2_17
.Ltmp124:
.LBB2_14:
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:name <- $x10
	.loc	0 0 5                           # test.c:0:5
	li	t0, 0
	li	a3, 0
	li	t1, 1
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
.Ltmp125:
	.loc	0 68 11 is_stmt 1               # test.c:68:11
	bnez	t1, .LBB2_5
	j	.LBB2_6
.Ltmp126:
.LBB2_15:
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:idx <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- 1
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	li	a0, 48
.Ltmp127:
	.loc	0 71 26 is_stmt 1               # test.c:71:26
	sb	a0, 8(sp)
	li	t3, 1
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
.Ltmp128:
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	.loc	0 0 26 is_stmt 0                # test.c:0:26
	li	a6, 94
.Ltmp129:
	.loc	0 73 5 is_stmt 1                # test.c:73:5
	bge	a6, t0, .LBB2_11
.Ltmp130:
.LBB2_16:
	#DEBUG_VALUE: dbg_print_idx_hex32:t <- $x28
	#DEBUG_VALUE: dbg_print_idx_hex32:x <- $x11
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a5, 0
.Ltmp131:
.LBB2_17:
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 74 11 is_stmt 1               # test.c:74:11
	bnez	a5, .LBB2_25
.Ltmp132:
# %bb.18:
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	li	a0, 94
.Ltmp133:
	.loc	0 76 15 is_stmt 1               # test.c:76:15
	bge	a0, t0, .LBB2_26
.Ltmp134:
.LBB2_19:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: i <- 0
	.loc	0 77 9                          # test.c:77:9
	blt	a0, t0, .LBB2_27
.Ltmp135:
.LBB2_20:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	slli	a4, t0, 32
	li	a0, 94
	subw	a0, a0, t0
	li	a1, 3
	srli	a4, a4, 32
	bltu	a0, a1, .LBB2_22
.Ltmp136:
# %bb.21:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 9 is_stmt 0                 # test.c:0:9
	li	a0, 3
.Ltmp137:
.LBB2_22:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 77 9                          # test.c:77:9
	addi	a0, a0, 1
	li	a1, 1
	addi	a3, sp, 24
	sub	a1, a1, a4
	add	a4, a4, a3
.Lpcrel_hi7:
	auipc	a3, %pcrel_hi(.L.str.2)
	addi	a3, a3, %pcrel_lo(.Lpcrel_hi7)
.Ltmp138:
.LBB2_23:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_plus, DW_OP_stack_value] $x11, $x5
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x11, $x5
	.loc	0 77 25 is_stmt 1               # test.c:77:25
	lbu	a5, 0(a3)
.Ltmp139:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $x11, $x5
	.loc	0 77 35 is_stmt 0               # test.c:77:35
	addi	a1, a1, -1
.Ltmp140:
	addiw	t0, t0, 1
	addi	a0, a0, -1
	.loc	0 77 76 is_stmt 1               # test.c:77:76
	sb	a5, 0(a4)
.Ltmp141:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11, $x5
	.loc	0 77 35                         # test.c:77:35
	addi	a4, a4, 1
	addi	a3, a3, 1
.Ltmp142:
	.loc	0 77 9                          # test.c:77:9
	bnez	a0, .LBB2_23
.Ltmp143:
# %bb.24:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x11, $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 77 35                         # test.c:77:35
	neg	a0, a1
	sltiu	a0, a0, 94
.Ltmp144:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 79 11                         # test.c:79:11
	bnez	a0, .LBB2_28
	j	.LBB2_29
.Ltmp145:
.LBB2_25:
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	addi	a0, sp, 24
.Ltmp146:
	.loc	0 74 33 is_stmt 1               # test.c:74:33
	add	a0, a0, t0
	.loc	0 74 38 is_stmt 0               # test.c:74:38
	addiw	t0, t0, 1
.Ltmp147:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38                          # test.c:0:38
	li	a1, 93
	.loc	0 74 42 is_stmt 1               # test.c:74:42
	sb	a1, 0(a0)
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	li	a0, 94
.Ltmp148:
	.loc	0 76 15                         # test.c:76:15
	blt	a0, t0, .LBB2_19
.Ltmp149:
.LBB2_26:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 15 is_stmt 0                # test.c:0:15
	addi	a1, sp, 24
	.loc	0 76 37 is_stmt 1               # test.c:76:37
	add	a1, a1, t0
	.loc	0 76 42 is_stmt 0               # test.c:76:42
	addiw	t0, t0, 1
.Ltmp150:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 42                          # test.c:0:42
	li	a3, 32
	.loc	0 76 46 is_stmt 1               # test.c:76:46
	sb	a3, 0(a1)
.Ltmp151:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: i <- 0
	.loc	0 77 9                          # test.c:77:9
	bge	a0, t0, .LBB2_20
.Ltmp152:
.LBB2_27:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 9 is_stmt 0                 # test.c:0:9
	li	a0, 0
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
.Ltmp153:
	.loc	0 79 11 is_stmt 1               # test.c:79:11
	beqz	a0, .LBB2_29
.Ltmp154:
.LBB2_28:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	addi	a0, sp, 24
	.loc	0 79 33 is_stmt 1               # test.c:79:33
	add	a0, a0, t0
	.loc	0 79 38 is_stmt 0               # test.c:79:38
	addiw	t0, t0, 1
.Ltmp155:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38                          # test.c:0:38
	li	a1, 58
	.loc	0 79 42 is_stmt 1               # test.c:79:42
	sb	a1, 0(a0)
.Ltmp156:
.LBB2_29:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 42 is_stmt 0                # test.c:0:42
	li	a0, 94
.Ltmp157:
	.loc	0 80 11 is_stmt 1               # test.c:80:11
	bge	a0, t0, .LBB2_39
.Ltmp158:
# %bb.30:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 81 11                         # test.c:81:11
	bge	a0, t0, .LBB2_40
.Ltmp159:
.LBB2_31:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	li	a0, 94
.Ltmp160:
	.loc	0 82 11 is_stmt 1               # test.c:82:11
	bge	a0, t0, .LBB2_41
.Ltmp161:
.LBB2_32:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: i <- 7
	.loc	0 83 5                          # test.c:83:5
	blt	a0, t0, .LBB2_42
.Ltmp162:
.LBB2_33:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a0, 28
	li	a6, 10
	addi	a7, sp, 24
	li	a5, 94
	mv	a4, t0
.Ltmp163:
.LBB2_34:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 84 37                         # test.c:84:37
	srlw	a1, a2, a0
	.loc	0 84 47                         # test.c:84:47
	andi	a1, a1, 15
	mv	a3, a4
.Ltmp164:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 7, DW_OP_plus, DW_OP_stack_value] $x5
	#DEBUG_VALUE: dbg_hex_digit:x <- $x11
	.loc	0 23 54 is_stmt 1               # test.c:23:54 @[ test.c:84:20 ]
	bltu	a1, a6, .LBB2_36
.Ltmp165:
# %bb.35:                               #   in Loop: Header=BB2_34 Depth=1
	#DEBUG_VALUE: dbg_hex_digit:x <- $x11
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 7, DW_OP_plus, DW_OP_stack_value] $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 54 is_stmt 0                # test.c:0:54
	addi	a1, a1, 55
.Ltmp166:
	j	.LBB2_37
.Ltmp167:
.LBB2_36:                               #   in Loop: Header=BB2_34 Depth=1
	#DEBUG_VALUE: dbg_hex_digit:x <- $x11
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 7, DW_OP_plus, DW_OP_stack_value] $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 23 54 is_stmt 1               # test.c:23:54 @[ test.c:84:20 ]
	addi	a1, a1, 48
.Ltmp168:
.LBB2_37:                               #   in Loop: Header=BB2_34 Depth=1
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 7, DW_OP_plus, DW_OP_stack_value] $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x13
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- undef
	.loc	0 84 9                          # test.c:84:9
	add	a4, a7, a3
	.loc	0 84 18 is_stmt 0               # test.c:84:18
	sb	a1, 0(a4)
.Ltmp169:
	#DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_mul, DW_OP_consts 6, DW_OP_plus, DW_OP_stack_value] $x5
	.loc	0 83 28 is_stmt 1               # test.c:83:28
	sltiu	a1, a3, 94
.Ltmp170:
	.loc	0 83 5                          # test.c:83:5
	addiw	t0, t0, 1
.Ltmp171:
	beqz	a0, .LBB2_43
.Ltmp172:
# %bb.38:                               #   in Loop: Header=BB2_34 Depth=1
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 0 is_stmt 0                 # test.c:0
	addi	a4, a3, 1
.Ltmp173:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x14
	.loc	0 83 5 is_stmt 1                # test.c:83:5
	addiw	a0, a0, -4
	bltu	a3, a5, .LBB2_34
	j	.LBB2_43
.Ltmp174:
.LBB2_39:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	addi	a1, sp, 24
.Ltmp175:
	.loc	0 80 33 is_stmt 1               # test.c:80:33
	add	a1, a1, t0
	.loc	0 80 38 is_stmt 0               # test.c:80:38
	addiw	t0, t0, 1
.Ltmp176:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38                          # test.c:0:38
	li	a3, 32
	.loc	0 80 42 is_stmt 1               # test.c:80:42
	sb	a3, 0(a1)
.Ltmp177:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 81 11                         # test.c:81:11
	blt	a0, t0, .LBB2_31
.Ltmp178:
.LBB2_40:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	addi	a0, sp, 24
	.loc	0 81 33 is_stmt 1               # test.c:81:33
	add	a0, a0, t0
	.loc	0 81 38 is_stmt 0               # test.c:81:38
	addiw	t0, t0, 1
.Ltmp179:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38                          # test.c:0:38
	li	a1, 48
	.loc	0 81 42 is_stmt 1               # test.c:81:42
	sb	a1, 0(a0)
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	li	a0, 94
.Ltmp180:
	.loc	0 82 11                         # test.c:82:11
	blt	a0, t0, .LBB2_32
.Ltmp181:
.LBB2_41:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	addi	a1, sp, 24
	.loc	0 82 33 is_stmt 1               # test.c:82:33
	add	a1, a1, t0
	.loc	0 82 38 is_stmt 0               # test.c:82:38
	addiw	t0, t0, 1
.Ltmp182:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38                          # test.c:0:38
	li	a3, 120
	.loc	0 82 42 is_stmt 1               # test.c:82:42
	sb	a3, 0(a1)
.Ltmp183:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: i <- 7
	.loc	0 83 5                          # test.c:83:5
	bge	a0, t0, .LBB2_33
.Ltmp184:
.LBB2_42:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a1, 0
.Ltmp185:
.LBB2_43:
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 86 11 is_stmt 1               # test.c:86:11
	beqz	a1, .LBB2_45
.Ltmp186:
# %bb.44:
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	.loc	0 0 11 is_stmt 0                # test.c:0:11
	addi	a0, sp, 24
	.loc	0 86 33 is_stmt 1               # test.c:86:33
	add	a0, a0, t0
	.loc	0 86 38 is_stmt 0               # test.c:86:38
	addiw	t0, t0, 1
.Ltmp187:
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 38                          # test.c:0:38
	li	a1, 10
	.loc	0 86 42 is_stmt 1               # test.c:86:42
	sb	a1, 0(a0)
.Ltmp188:
.LBB2_45:
	#DEBUG_VALUE: dbg_print_idx_hex32:v <- $x12
	#DEBUG_VALUE: dbg_print_idx_hex32:p <- $x5
	.loc	0 0 42 is_stmt 0                # test.c:0:42
	addi	a0, sp, 24
	.loc	0 87 5 is_stmt 1                # test.c:87:5
	add	a0, a0, t0
	.loc	0 87 12 is_stmt 0               # test.c:87:12
	sb	zero, 0(a0)
.Lpcrel_hi8:
	.loc	0 88 5 is_stmt 1                # test.c:88:5
	auipc	a0, %pcrel_hi(.L.str.4)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi8)
	addi	a1, sp, 24
	call	printf
.Ltmp189:
	.loc	0 89 1 epilogue_begin           # test.c:89:1
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	.cfi_restore ra
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Ltmp190:
.Lfunc_end2:
	.size	dbg_print_idx_hex32, .Lfunc_end2-dbg_print_idx_hex32
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

	.type	src,@object                     # @src
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
src:
	.word	0xbfbb349c                      # float -1.46254301
	.word	0x3fb1e2d6                      # float 1.38973498
	.word	0x3f870d78                      # float 1.05509853
	.word	0xbf7acf2f                      # float -0.97972387
	.word	0xbc959543                      # float -0.0182596501
	.word	0xbe4ee275                      # float -0.20203574
	.word	0x3f1b3b30                      # float 0.60637188
	.word	0x3f93d38c                      # float 1.1548934
	.word	0xbfcff1a3                      # float -1.62456167
	.word	0xbff17c70                      # float -1.88661003
	.word	0x3fabe967                      # float 1.34306037
	.word	0xbe89b16b                      # float -0.268931717
	.word	0x3f864993                      # float 1.04912031
	.word	0xbffeebf5                      # float -1.99157584
	.word	0xbe5fb1ad                      # float -0.218451217
	.word	0x3f62db64                      # float 0.886160135
	.word	0xbf8adfae                      # float -1.08495116
	.word	0x3fe3fa85                      # float 1.78108275
	.word	0x3fcd87e6                      # float 1.60570979
	.word	0xbff05683                      # float -1.87764013
	.word	0xbff2f8c3                      # float -1.89821661
	.word	0x3e29a020                      # float 0.165649891
	.word	0x3fe0d829                      # float 1.75659668
	.word	0xbef34b31                      # float -0.47518304
	.word	0xbf9119e2                      # float -1.13360238
	.word	0xbe9f8158                      # float -0.311533689
	.word	0xbff12191                      # float -1.88383687
	.word	0xbf8e7e6e                      # float -1.11323333
	.word	0xbe7e6994                      # float -0.248449624
	.word	0xbc893975                      # float -0.0167510305
	.word	0xbf88a928                      # float -1.06766224
	.word	0xbf89cbdc                      # float -1.07653379
	.word	0xbf8ffbef                      # float -1.1248759
	.word	0xbe2576d6                      # float -0.161586136
	.word	0xbf57437d                      # float -0.840873539
	.word	0xbff4ff4d                      # float -1.91404116
	.word	0x3facd705                      # float 1.35031188
	.word	0x3e673ca6                      # float 0.225817293
	.word	0x3f11b59d                      # float 0.569177449
	.word	0xbfa0d0e5                      # float -1.25637496
	.word	0x3ffc2ea6                      # float 1.9701736
	.word	0x3fb84ae9                      # float 1.43978608
	.word	0xbfc21ab6                      # float -1.51644015
	.word	0xbf2b51f4                      # float -0.669219255
	.word	0x3f62cccf                      # float 0.885937631
	.word	0x3f5842a8                      # float 0.844767093
	.word	0x3fdf7524                      # float 1.74576235
	.word	0xbe9f865d                      # float -0.311571985
	.word	0x3fa8fa70                      # float 1.32014275
	.word	0x3f2e6495                      # float 0.681222259
	.word	0xbf4959c4                      # float -0.786525965
	.word	0x3eb35d76                      # float 0.350322425
	.word	0x3fc3d44a                      # float 1.52991605
	.word	0x3fb140ca                      # float 1.38478971
	.word	0x3cad23e5                      # float 0.0211352799
	.word	0x3eb646d1                      # float 0.356009036
	.word	0xbfee52a1                      # float -1.86189663
	.word	0xbf83b796                      # float -1.0290401
	.word	0x3f98455f                      # float 1.18961704
	.word	0xbeaf7c24                      # float -0.342743993
	.word	0xbfa76b93                      # float -1.3079704
	.word	0x3e47e136                      # float 0.195195049
	.word	0x3f4fe9eb                      # float 0.812163054
	.word	0x3f32ac6a                      # float 0.69794333
	.word	0xbf004dda                      # float -0.501187921
	.word	0xbe7a035f                      # float -0.244153485
	.word	0x3d0a0f40                      # float 0.0337059498
	.word	0x3f8e9008                      # float 1.11377048
	.word	0x3dab870b                      # float 0.0837536677
	.word	0xbeda9d13                      # float -0.426979631
	.word	0xbd28dc83                      # float -0.0412259214
	.word	0xbff0db8d                      # float -1.88170016
	.word	0xbfe9bc09                      # float -1.82605088
	.word	0x3f504365                      # float 0.813528358
	.word	0x3ff76461                      # float 1.93275082
	.word	0x3ebed71d                      # float 0.372734934
	.word	0xbed9e868                      # float -0.425601244
	.word	0xbfa8c7fd                      # float -1.31860316
	.word	0x3c12b4c3                      # float 0.00895422976
	.word	0x3ff6d2c0                      # float 1.92830658
	.word	0x3f8a8202                      # float 1.08209252
	.word	0x3e2245e8                      # float 0.158469796
	.word	0x3fb877e7                      # float 1.44115913
	.word	0xbf892036                      # float -1.0712955
	.word	0x3d61a28a                      # float 0.05508665
	.word	0x3fe7a9ce                      # float 1.80986953
	.word	0x3e9f52e2                      # float 0.311179221
	.word	0xbe27657c                      # float -0.16347307
	.word	0xbf6c4200                      # float -0.92288208
	.word	0x3e4497c7                      # float 0.191985235
	.word	0x3fea0b25                      # float 1.8284651
	.word	0xbffd13b1                      # float -1.97716343
	.word	0x3f913b42                      # float 1.1346209
	.word	0x3fa416bb                      # float 1.28194368
	.word	0x3fc5b954                      # float 1.54471827
	.word	0x3f764687                      # float 0.962013661
	.word	0x3f9e4796                      # float 1.23655963
	.word	0x3d990333                      # float 0.0747131333
	.word	0x3e7b5262                      # float 0.245431453
	.word	0xbe975dc5                      # float -0.29563728
	.word	0xbfe343cf                      # float -1.77550685
	.word	0x3fbd71f9                      # float 1.48004067
	.word	0x3e8f5bd0                      # float 0.279997349
	.word	0xbf99aea6                      # float -1.20064235
	.word	0x3c9aae27                      # float 0.0188818704
	.word	0xbd76fca9                      # float -0.0602995493
	.word	0xbf12a5a7                      # float -0.572840154
	.word	0xbf1d9dc0                      # float -0.615688323
	.word	0x3e1d9bf1                      # float 0.153915182
	.word	0x3efce80a                      # float 0.493957818
	.word	0x3ee64d7a                      # float 0.449809849
	.word	0xbe2b6e43                      # float -0.167412803
	.word	0xbff1ad43                      # float -1.88810003
	.word	0xbf8a7136                      # float -1.08157992
	.word	0xbfa54491                      # float -1.29115498
	.word	0x3eacf9d2                      # float 0.337843478
	.word	0x3fb8d627                      # float 1.44403541
	.word	0x3f98ccfd                      # float 1.19375575
	.word	0x3f981d2c                      # float 1.18839025
	.word	0x3fa20414                      # float 1.26574945
	.word	0xbf7a9433                      # float -0.97882384
	.word	0x3faef92e                      # float 1.36697936
	.word	0x3f3144ac                      # float 0.6924541
	.word	0xbfd56256                      # float -1.66706347
	.word	0xbff77453                      # float -1.93323743
	.word	0xbff88b98                      # float -1.94176006
	.word	0x3f82dc45                      # float 1.02234709
	.word	0xbf8039c6                      # float -1.00176311
	.size	src, 512

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Final results:\n"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"dst"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bits"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"golden"
	.size	.L.str.3, 7

	.type	golden,@object                  # @golden
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
golden:
	.word	0x3a86d26d                      # float 0.00102861004
	.word	0x3c920180                      # float 0.0178229809
	.word	0x3c50f693                      # float 0.0127541004
	.word	0x3ada7f93                      # float 0.00166701002
	.word	0x3b8edf2b                      # float 0.00436009979
	.word	0x3b6dc5ec                      # float 0.00362813007
	.word	0x3c056916                      # float 0.00814273022
	.word	0x3c66e47b                      # float 0.0140925599
	.word	0x3a655026                      # float 8.74759978E-4
	.word	0x3a3072fa                      # float 6.73100003E-4
	.word	0x3c8b5904                      # float 0.0170102194
	.word	0x3b5e634d                      # float 0.00339336996
	.word	0x3c4fb7b9                      # float 0.0126780802
	.word	0x3a1eddfc                      # float 6.06029993E-4
	.word	0x3b69e6e4                      # float 0.00356906001
	.word	0x3c307b68                      # float 0.0107716098
	.word	0x3ac4acc3                      # float 0.00150051003
	.word	0x3cd7f052                      # float 0.0263597108
	.word	0x3cb53424                      # float 0.0221195891
	.word	0x3a320a54                      # float 6.79170014E-4
	.word	0x3a2e6a36                      # float 6.6533999E-4
	.word	0x3babb7ea                      # float 0.00524043012
	.word	0x3cd2b727                      # float 0.0257220995
	.word	0x3b34f0e3                      # float 0.00276094
	.word	0x3abb55ac                      # float 0.00142925
	.word	0x3b551cd2                      # float 0.00325183989
	.word	0x3a30f078                      # float 6.74969982E-4
	.word	0x3abf3082                      # float 0.00145866
	.word	0x3b62fd66                      # float 0.00346359005
	.word	0x3b8f165e                      # float 0.00436668005
	.word	0x3ac81a8b                      # float 0.00152666995
	.word	0x3ac6563b                      # float 0.00151318999
	.word	0x3abcfa1c                      # float 0.00144178001
	.word	0x3b7796a5                      # float 0.00377790001
	.word	0x3afb0b24                      # float 0.00191531004
	.word	0x3a2baced                      # float 6.54890027E-4
	.word	0x3c8c5ca5                      # float 0.0171340201
	.word	0x3bb65e0b                      # float 0.00556541001
	.word	0x3c008a1e                      # float 0.0078454297
	.word	0x3aa5b0d4                      # float 0.00126411999
	.word	0x3d02717a                      # float 0.0318465009
	.word	0x3c997fe9                      # float 0.0187377501
	.word	0x3a7f7efc                      # float 9.74640017E-4
	.word	0x3b150739                      # float 0.00227399007
	.word	0x3c307157                      # float 0.0107692098
	.word	0x3c295376                      # float 0.01033484
	.word	0x3cd071dd                      # float 0.0254449192
	.word	0x3b551aa4                      # float 0.00325170998
	.word	0x3c8830c6                      # float 0.0166248195
	.word	0x3c0fc793                      # float 0.00877560955
	.word	0x3b04883a                      # float 0.00202227989
	.word	0x3bce8c15                      # float 0.00630332017
	.word	0x3ca7fa25                      # float 0.0205050204
	.word	0x3c91491e                      # float 0.0177350603
	.word	0x3b949cc5                      # float 0.00453528995
	.word	0x3bcfb9a7                      # float 0.00633927016
	.word	0x3a34ddc3                      # float 6.89950015E-4
	.word	0x3acffbd6                      # float 0.00158678996
	.word	0x3c6f0cfe                      # float 0.0145904999
	.word	0x3b4e9046                      # float 0.00315190991
	.word	0x3a9d5bc6                      # float 0.00120055
	.word	0x3bb0de19                      # float 0.00539756985
	.word	0x3c23e4f7                      # float 0.0100033199
	.word	0x3c123435                      # float 0.00892357994
	.word	0x3b304be3                      # float 0.00269007008
	.word	0x3b63f78c                      # float 0.00347850006
	.word	0x3b967e06                      # float 0.00459265988
	.word	0x3c5d9715                      # float 0.0135247903
	.word	0x3b9e3738                      # float 0.00482835993
	.word	0x3b3de076                      # float 0.00289729005
	.word	0x3b8ba0b3                      # float 0.0042611002
	.word	0x3a3151c7                      # float 6.76419993E-4
	.word	0x3a3b7790                      # float 7.15130008E-4
	.word	0x3c241e4d                      # float 0.0100169899
	.word	0x3cfb4dc9                      # float 0.0306767393
	.word	0x3bd33a90                      # float 0.00644619018
	.word	0x3b3e2367                      # float 0.00290128007
	.word	0x3a9bb1f8                      # float 0.00118786003
	.word	0x3b92d027                      # float 0.0044803801
	.word	0x3cfa3083                      # float 0.0305407103
	.word	0x3c56ae42                      # float 0.0131030697
	.word	0x3baa7d6d                      # float 0.0052029402
	.word	0x3c99b5e4                      # float 0.01876349
	.word	0x3ac760fd                      # float 0.00152113999
	.word	0x3b99be98                      # float 0.00469191
	.word	0x3cde3eca                      # float 0.0271295495
	.word	0x3bc69e4a                      # float 0.00606135
	.word	0x3b771f31                      # float 0.00377078005
	.word	0x3ae74721                      # float 0.00176450994
	.word	0x3bb04cfa                      # float 0.00538027007
	.word	0x3ce26aae                      # float 0.0276387595
	.word	0x3a212c8b                      # float 6.14830002E-4
	.word	0x3c62424a                      # float 0.0138097499
	.word	0x3c831615                      # float 0.0160017405
	.word	0x3caa7b69                      # float 0.0208107997
	.word	0x3c3e63be                      # float 0.0116204601
	.word	0x3c7a8a40                      # float 0.0152917504
	.word	0x3b9ccabc                      # float 0.00478491001
	.word	0x3bb9face                      # float 0.0056756502
	.word	0x3b5886ea                      # float 0.00330393994
	.word	0x3a452f4a                      # float 7.52200023E-4
	.word	0x3c9fce01                      # float 0.01950741
	.word	0x3bc08556                      # float 0.00587526988
	.word	0x3aaf302f                      # float 0.00133658003
	.word	0x3b94471f                      # float 0.00452507986
	.word	0x3b88fd6a                      # float 0.00418059994
	.word	0x3b241b28                      # float 0.00250406004
	.word	0x3b1d390b                      # float 0.00239902991
	.word	0x3ba9b71e                      # float 0.00517929997
	.word	0x3bee737b                      # float 0.00727694994
	.word	0x3be42731                      # float 0.00696267979
	.word	0x3b762662                      # float 0.0037559499
	.word	0x3a302fde                      # float 6.72099995E-4
	.word	0x3ac5568c                      # float 0.00150557002
	.word	0x3aa006f1                      # float 0.00122091
	.word	0x3bcbfc58                      # float 0.00622515008
	.word	0x3c9a273e                      # float 0.0188175403
	.word	0x3c700ad5                      # float 0.0146510201
	.word	0x3c6ec200                      # float 0.0145726204
	.word	0x3c80fb02                      # float 0.0157446899
	.word	0x3adab1e8                      # float 0.00166851003
	.word	0x3c8eb890                      # float 0.0174219906
	.word	0x3c116751                      # float 0.00887473021
	.word	0x3a5bc563                      # float 8.38359992E-4
	.word	0x3a28696b                      # float 6.42439991E-4
	.word	0x3a26fbad                      # float 6.36990007E-4
	.word	0x3c4a3aec                      # float 0.0123431496
	.word	0x3ad5bc35                      # float 0.00163067004
	.size	golden, 512

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%s"
	.size	.L.str.4, 3

	.file	7 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "riscv_vector.h" md5 0x255ceebde96f450c22e334dcdb0f3a56
	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	26                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	99                              # DW_OP_reg19
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	127                             # 127
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	28                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	31                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	108                             # DW_OP_reg28
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	23                              # Loc expr size
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	30                              # DW_OP_mul
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp169-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp169-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp171-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp164-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
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
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	54                              # DW_AT_calling_convention
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x550 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.half	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.word	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	9                               # DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.word	.Laddr_table_base0              # DW_AT_addr_base
	.word	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.word	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2f:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.word	58                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3a:0xc DW_TAG_array_type
	.word	70                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3f:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x46:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x4a:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x4e:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.word	58                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	7                               # Abbrev [7] 0x59:0xa DW_TAG_variable
	.word	99                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               # Abbrev [4] 0x63:0xc DW_TAG_array_type
	.word	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x68:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6f:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x73:0xa DW_TAG_variable
	.word	125                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	4                               # Abbrev [4] 0x7d:0xc DW_TAG_array_type
	.word	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x82:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x89:0xa DW_TAG_variable
	.word	147                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	4                               # Abbrev [4] 0x93:0xc DW_TAG_array_type
	.word	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x98:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9f:0xa DW_TAG_variable
	.word	169                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	4                               # Abbrev [4] 0xa9:0xc DW_TAG_array_type
	.word	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xae:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb5:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.word	192                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	4                               # Abbrev [4] 0xc0:0xc DW_TAG_array_type
	.word	204                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc5:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xcc:0x5 DW_TAG_const_type
	.word	70                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0xd1:0xa DW_TAG_variable
	.word	219                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	4                               # Abbrev [4] 0xdb:0xc DW_TAG_array_type
	.word	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe0:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xe7:0xb DW_TAG_variable
	.byte	9                               # DW_AT_name
	.word	192                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	10                              # Abbrev [10] 0xf2:0x5 DW_TAG_pointer_type
	.word	70                              # DW_AT_type
	.byte	11                              # Abbrev [11] 0xf7:0x8 DW_TAG_typedef
	.word	255                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xff:0x8 DW_TAG_typedef
	.word	263                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x107:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x10b:0x8 DW_TAG_typedef
	.word	275                             # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x113:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x117:0x4 DW_TAG_base_type
	.byte	15                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x11b:0x16 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.word	279                             # DW_AT_type
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x12a:0x6 DW_TAG_call_site
	.word	305                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x131:0x283 DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x13c:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.word	242                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x145:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.word	242                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x14e:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x157:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.word	1226                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x162:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	28
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.word	1226                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x16d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.word	1238                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x176:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x17f:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.word	242                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x188:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x191:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x19a:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1a3:0x8 DW_TAG_variable
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.word	1238                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1ab:0x8 DW_TAG_variable
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1b3:0x8 DW_TAG_variable
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1bb:0x8 DW_TAG_variable
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1c3:0x8 DW_TAG_variable
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1cb:0x8 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1d3:0x8 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1db:0x8 DW_TAG_variable
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1e3:0x8 DW_TAG_variable
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1eb:0x8 DW_TAG_variable
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1f3:0x8 DW_TAG_variable
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1fb:0x8 DW_TAG_variable
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x203:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x20b:0x8 DW_TAG_variable
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x213:0x8 DW_TAG_variable
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x21b:0x8 DW_TAG_variable
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x223:0x8 DW_TAG_variable
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x22b:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.word	242                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x233:0x8 DW_TAG_variable
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x23b:0x8 DW_TAG_variable
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x243:0x8 DW_TAG_variable
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x24b:0x8 DW_TAG_variable
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x253:0x8 DW_TAG_variable
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x25b:0x20 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.word	.Ltmp17-.Ltmp11                 # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x261:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x26a:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x272:0x8 DW_TAG_variable
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x27b:0x92 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.word	.Ltmp60-.Ltmp40                 # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x281:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x28a:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.word	1243                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x293:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.word	275                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x29c:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2a4:0x8 DW_TAG_variable
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2ac:0x8 DW_TAG_variable
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2b4:0x8 DW_TAG_variable
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.word	1322                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2bc:0x8 DW_TAG_variable
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2c4:0x8 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2cc:0x8 DW_TAG_variable
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2d4:0x8 DW_TAG_variable
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2dc:0x8 DW_TAG_variable
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2e4:0x8 DW_TAG_variable
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.word	1322                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2ec:0x8 DW_TAG_variable
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.word	1322                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2f4:0x8 DW_TAG_variable
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2fc:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x304:0x8 DW_TAG_variable
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.word	1248                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x30d:0x20 DW_TAG_lexical_block
	.byte	14                              # DW_AT_low_pc
	.word	.Ltmp74-.Ltmp68                 # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x313:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x31c:0x8 DW_TAG_variable
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x324:0x8 DW_TAG_variable
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x32d:0x18 DW_TAG_lexical_block
	.byte	15                              # DW_AT_low_pc
	.word	.Ltmp81-.Ltmp76                 # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x333:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x33c:0x8 DW_TAG_variable
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.word	1285                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x345:0x14 DW_TAG_inlined_subroutine
	.word	948                             # DW_AT_abstract_origin
	.byte	16                              # DW_AT_low_pc
	.word	.Ltmp84-.Ltmp82                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	242                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x352:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.word	952                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x359:0x3c DW_TAG_lexical_block
	.byte	17                              # DW_AT_low_pc
	.word	.Ltmp95-.Ltmp84                 # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x35f:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.word	247                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x368:0x16 DW_TAG_inlined_subroutine
	.word	971                             # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.word	.Ltmp89-.Ltmp87                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	244                             # DW_AT_call_line
	.byte	57                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x375:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	36
	.word	987                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x37e:0x16 DW_TAG_inlined_subroutine
	.word	971                             # DW_AT_abstract_origin
	.byte	19                              # DW_AT_low_pc
	.word	.Ltmp92-.Ltmp90                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	245                             # DW_AT_call_line
	.byte	60                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x38b:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	36
	.word	987                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x395:0x6 DW_TAG_call_site
	.word	1001                            # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x39b:0x6 DW_TAG_call_site
	.word	1021                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3a1:0x6 DW_TAG_call_site
	.word	1062                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3a7:0x6 DW_TAG_call_site
	.word	1021                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3ad:0x6 DW_TAG_call_site
	.word	1062                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3b4:0xd DW_TAG_subprogram
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	24                              # Abbrev [24] 0x3b8:0x8 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.word	961                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3c1:0x5 DW_TAG_pointer_type
	.word	966                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3c6:0x5 DW_TAG_const_type
	.word	111                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3cb:0x19 DW_TAG_subprogram
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	267                             # DW_AT_type
                                        # DW_AT_inline
	.byte	24                              # Abbrev [24] 0x3d3:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.word	996                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x3db:0x8 DW_TAG_variable
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.word	267                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3e4:0x5 DW_TAG_pointer_type
	.word	204                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3e9:0xf DW_TAG_subprogram
	.byte	21                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	279                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x3f1:0x5 DW_TAG_formal_parameter
	.word	1016                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3f6:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x3f8:0x5 DW_TAG_restrict_type
	.word	961                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3fd:0x18 DW_TAG_subprogram
	.byte	22                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	1045                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x405:0x5 DW_TAG_formal_parameter
	.word	1046                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x40a:0x5 DW_TAG_formal_parameter
	.word	1051                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x40f:0x5 DW_TAG_formal_parameter
	.word	247                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x415:0x1 DW_TAG_pointer_type
	.byte	29                              # Abbrev [29] 0x416:0x5 DW_TAG_restrict_type
	.word	1045                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x41b:0x5 DW_TAG_restrict_type
	.word	1056                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x420:0x5 DW_TAG_pointer_type
	.word	1061                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x425:0x1 DW_TAG_const_type
	.byte	32                              # Abbrev [32] 0x426:0x93 DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	3                               # DW_AT_calling_convention
	.byte	15                              # Abbrev [15] 0x432:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.word	961                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x43b:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.word	267                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x444:0x8 DW_TAG_formal_parameter
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.word	961                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x44c:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.word	267                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x455:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.word	1359                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x460:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.word	99                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x46b:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.word	279                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x474:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.word	279                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x47d:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.word	267                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x486:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	17                              # Abbrev [17] 0x488:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.word	279                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x492:0x20 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	17                              # Abbrev [17] 0x494:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.word	279                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x49d:0x14 DW_TAG_inlined_subroutine
	.word	1209                            # DW_AT_abstract_origin
	.byte	24                              # DW_AT_low_pc
	.word	.Ltmp168-.Ltmp164               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	84                              # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x4aa:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.word	1217                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x4b2:0x6 DW_TAG_call_site
	.word	1001                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4b9:0x11 DW_TAG_subprogram
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	111                             # DW_AT_type
                                        # DW_AT_inline
	.byte	24                              # Abbrev [24] 0x4c1:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.word	275                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4ca:0xc DW_TAG_array_type
	.word	267                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4cf:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4d6:0x5 DW_TAG_const_type
	.word	247                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4db:0x5 DW_TAG_const_type
	.word	279                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4e0:0x9 DW_TAG_typedef
	.word	1257                            # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.half	357                             # DW_AT_decl_line
	.byte	35                              # Abbrev [35] 0x4e9:0x6 DW_TAG_typedef
	.word	1263                            # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	36                              # Abbrev [36] 0x4ef:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	70                              # DW_AT_type
	.byte	37                              # Abbrev [37] 0x4f4:0x10 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
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
	.byte	34                              # Abbrev [34] 0x505:0x9 DW_TAG_typedef
	.word	1294                            # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.half	371                             # DW_AT_decl_line
	.byte	35                              # Abbrev [35] 0x50e:0x6 DW_TAG_typedef
	.word	1300                            # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	36                              # Abbrev [36] 0x514:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	70                              # DW_AT_type
	.byte	37                              # Abbrev [37] 0x519:0x10 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
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
	.byte	34                              # Abbrev [34] 0x52a:0x9 DW_TAG_typedef
	.word	1331                            # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.half	286                             # DW_AT_decl_line
	.byte	35                              # Abbrev [35] 0x533:0x6 DW_TAG_typedef
	.word	1337                            # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	36                              # Abbrev [36] 0x539:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	279                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x53e:0x10 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
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
	.byte	4                               # Abbrev [4] 0x54f:0xc DW_TAG_array_type
	.word	111                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x554:0x6 DW_TAG_subrange_type
	.word	74                              # DW_AT_type
	.byte	96                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.word	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	2                               # Offset entry count
.Lrnglists_table_base0:
	.word	.Ldebug_ranges0-.Lrnglists_table_base0
	.word	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp174-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp184-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.word	384                             # Length of String Offsets Set
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
	.asciz	"char"                          # string offset=184
.Linfo_string8:
	.asciz	"src"                           # string offset=189
.Linfo_string9:
	.asciz	"golden"                        # string offset=193
.Linfo_string10:
	.asciz	"unsigned long"                 # string offset=200
.Linfo_string11:
	.asciz	"__size_t"                      # string offset=214
.Linfo_string12:
	.asciz	"size_t"                        # string offset=223
.Linfo_string13:
	.asciz	"unsigned int"                  # string offset=230
.Linfo_string14:
	.asciz	"uint32_t"                      # string offset=243
.Linfo_string15:
	.asciz	"int"                           # string offset=252
.Linfo_string16:
	.asciz	"dbg_print_line"                # string offset=256
.Linfo_string17:
	.asciz	"s"                             # string offset=271
.Linfo_string18:
	.asciz	"load_f32_bits"                 # string offset=273
.Linfo_string19:
	.asciz	"p"                             # string offset=287
.Linfo_string20:
	.asciz	"u"                             # string offset=289
.Linfo_string21:
	.asciz	"printf"                        # string offset=291
.Linfo_string22:
	.asciz	"memcpy"                        # string offset=298
.Linfo_string23:
	.asciz	"dbg_hex_digit"                 # string offset=305
.Linfo_string24:
	.asciz	"x"                             # string offset=319
.Linfo_string25:
	.asciz	"DW_ATE_unsigned_64"            # string offset=321
.Linfo_string26:
	.asciz	"main"                          # string offset=340
.Linfo_string27:
	.asciz	"softmax_stable_rvv_fp32"       # string offset=345
.Linfo_string28:
	.asciz	"dbg_print_idx_hex32"           # string offset=369
.Linfo_string29:
	.asciz	"max_bits"                      # string offset=389
.Linfo_string30:
	.asciz	"inv_bits"                      # string offset=398
.Linfo_string31:
	.asciz	"n"                             # string offset=407
.Linfo_string32:
	.asciz	"vlm8"                          # string offset=409
.Linfo_string33:
	.asciz	"avl"                           # string offset=414
.Linfo_string34:
	.asciz	"vl"                            # string offset=418
.Linfo_string35:
	.asciz	"dst_orig"                      # string offset=421
.Linfo_string36:
	.asciz	"avl2"                          # string offset=430
.Linfo_string37:
	.asciz	"exp_bias"                      # string offset=435
.Linfo_string38:
	.asciz	"old_frm"                       # string offset=444
.Linfo_string39:
	.asciz	"avl3"                          # string offset=452
.Linfo_string40:
	.asciz	"avl4"                          # string offset=457
.Linfo_string41:
	.asciz	"i"                             # string offset=462
.Linfo_string42:
	.asciz	"vl1"                           # string offset=464
.Linfo_string43:
	.asciz	"vzero1"                        # string offset=468
.Linfo_string44:
	.asciz	"__rvv_float32m1_t"             # string offset=475
.Linfo_string45:
	.asciz	"vfloat32m1_t"                  # string offset=493
.Linfo_string46:
	.asciz	"vtwo1"                         # string offset=506
.Linfo_string47:
	.asciz	"veps1"                         # string offset=512
.Linfo_string48:
	.asciz	"vneginf1"                      # string offset=518
.Linfo_string49:
	.asciz	"viln2_8"                       # string offset=527
.Linfo_string50:
	.asciz	"__rvv_float32m8_t"             # string offset=535
.Linfo_string51:
	.asciz	"vfloat32m8_t"                  # string offset=553
.Linfo_string52:
	.asciz	"vln2_hi_8"                     # string offset=566
.Linfo_string53:
	.asciz	"vln2_lo_8"                     # string offset=576
.Linfo_string54:
	.asciz	"pc0_8"                         # string offset=586
.Linfo_string55:
	.asciz	"pc1_8"                         # string offset=592
.Linfo_string56:
	.asciz	"pc2_8"                         # string offset=598
.Linfo_string57:
	.asciz	"pc3_8"                         # string offset=604
.Linfo_string58:
	.asciz	"pc4_8"                         # string offset=610
.Linfo_string59:
	.asciz	"pc5_8"                         # string offset=616
.Linfo_string60:
	.asciz	"pc6_8"                         # string offset=622
.Linfo_string61:
	.asciz	"pc7_8"                         # string offset=628
.Linfo_string62:
	.asciz	"pc8_8"                         # string offset=634
.Linfo_string63:
	.asciz	"src_orig"                      # string offset=640
.Linfo_string64:
	.asciz	"vmax1"                         # string offset=649
.Linfo_string65:
	.asciz	"vx"                            # string offset=655
.Linfo_string66:
	.asciz	"blk_max"                       # string offset=658
.Linfo_string67:
	.asciz	"vsum1"                         # string offset=666
.Linfo_string68:
	.asciz	"vmaxB"                         # string offset=672
.Linfo_string69:
	.asciz	"vxiln2"                        # string offset=678
.Linfo_string70:
	.asciz	"vk"                            # string offset=685
.Linfo_string71:
	.asciz	"__rvv_int32m8_t"               # string offset=688
.Linfo_string72:
	.asciz	"vint32m8_t"                    # string offset=704
.Linfo_string73:
	.asciz	"vfk"                           # string offset=715
.Linfo_string74:
	.asciz	"vkl2hi"                        # string offset=719
.Linfo_string75:
	.asciz	"vkl2lo"                        # string offset=726
.Linfo_string76:
	.asciz	"vr"                            # string offset=733
.Linfo_string77:
	.asciz	"vbiased"                       # string offset=736
.Linfo_string78:
	.asciz	"vexp2"                         # string offset=744
.Linfo_string79:
	.asciz	"vf2k"                          # string offset=750
.Linfo_string80:
	.asciz	"vexp8"                         # string offset=755
.Linfo_string81:
	.asciz	"vblk"                          # string offset=761
.Linfo_string82:
	.asciz	"vsum1_eps"                     # string offset=766
.Linfo_string83:
	.asciz	"vinv1"                         # string offset=776
.Linfo_string84:
	.asciz	"corr"                          # string offset=782
.Linfo_string85:
	.asciz	"row"                           # string offset=787
.Linfo_string86:
	.asciz	"vinvB"                         # string offset=791
.Linfo_string87:
	.asciz	"row2"                          # string offset=797
.Linfo_string88:
	.asciz	"buf"                           # string offset=802
.Linfo_string89:
	.asciz	"tmp"                           # string offset=806
.Linfo_string90:
	.asciz	"name"                          # string offset=810
.Linfo_string91:
	.asciz	"idx"                           # string offset=815
.Linfo_string92:
	.asciz	"v"                             # string offset=819
.Linfo_string93:
	.asciz	"t"                             # string offset=821
.Linfo_string94:
	.asciz	"suffix"                        # string offset=823
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.half	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	dst
	.quad	diff_mem
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	src
	.quad	.L.str.4
	.quad	golden
	.quad	.Lfunc_begin0
	.quad	.Ltmp1
	.quad	.Lfunc_begin1
	.quad	.Ltmp11
	.quad	.Ltmp40
	.quad	.Ltmp68
	.quad	.Ltmp76
	.quad	.Ltmp82
	.quad	.Ltmp84
	.quad	.Ltmp87
	.quad	.Ltmp90
	.quad	.Ltmp88
	.quad	.Ltmp91
	.quad	.Ltmp93
	.quad	.Lfunc_begin2
	.quad	.Ltmp164
	.quad	.Ltmp189
.Ldebug_addr_end0:
	.ident	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dst
	.addrsig_sym src
	.addrsig_sym golden
	.section	.debug_line,"",@progbits
.Lline_table_start0:
