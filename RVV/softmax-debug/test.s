	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfh1p0_zfhmin1p0_zca1p0_zcd1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"test.c"
	.file	0 "/mnt/d/riscv-dnn/test/ops/softmax" "test.c" md5 0xfe6e8452b6383e9356e18aee51a1d1fa
	.file	1 "build/softmax-debug" "data.h" md5 0x6d51a38f3851d9c55d2f44196500dd11
	.file	2 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/sys" "_types.h" md5 0x17b5691773b3e3881dfdbe392c9e8d43
	.file	3 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "strings.h" md5 0xdceb1b71cd72987b246237af8552faba
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
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	s0, 56(sp)                      # 8-byte Folded Spill
	sd	s1, 48(sp)                      # 8-byte Folded Spill
	sd	s2, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset s0, -8
	.cfi_offset s1, -16
	.cfi_offset s2, -24
	csrr	a0, vlenb
	li	a1, 89
	mul	a0, a0, a1
	sub	sp, sp, a0
	.cfi_escape 0x0f, 0x0f, 0x72, 0x00, 0x11, 0xc0, 0x00, 0x22, 0x11, 0xd9, 0x00, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 64 + 89 * vlenb
.Ltmp0:
	.loc	0 122 24 prologue_end           # test.c:122:24 @[ test.c:112:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
.Ltmp1:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	.loc	0 0 24 is_stmt 0                # test.c:0:24
	lui	a1, 1046528
	li	a0, 128
	.loc	0 126 64 is_stmt 1              # test.c:126:64 @[ test.c:112:5 ]
	vmv.v.x	v9, a1
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(src)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
.Ltmp2:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src_orig <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- 128
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vneginf1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	.loc	0 0 64 is_stmt 0                # test.c:0:64
	vmv.v.v	v8, v9
.Ltmp3:
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	.loc	0 149 21 is_stmt 1              # test.c:149:21 @[ test.c:112:5 ]
	vsetvli	a2, a0, e32, m8, ta, ma
.Ltmp4:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 150 27                        # test.c:150:27 @[ test.c:112:5 ]
	vle32.v	v16, (a1)
.Ltmp5:
	#DEBUG_VALUE: vx <- undef
	.loc	0 153 13                        # test.c:153:13 @[ test.c:112:5 ]
	sub	a0, a0, a2
.Ltmp6:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	.loc	0 151 32                        # test.c:151:32 @[ test.c:112:5 ]
	vfredmax.vs	v10, v16, v9
.Ltmp7:
	#DEBUG_VALUE: blk_max <- undef
	.loc	0 153 24                        # test.c:153:24 @[ test.c:112:5 ]
	slli	a2, a2, 2
.Ltmp8:
	.loc	0 152 17                        # test.c:152:17 @[ test.c:112:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vfmax.vv	v8, v8, v10
	.loc	0 153 24                        # test.c:153:24 @[ test.c:112:5 ]
	add	a1, a1, a2
.Ltmp9:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 148 5                         # test.c:148:5 @[ test.c:112:5 ]
	bnez	a0, .LBB0_1
.Ltmp10:
# %bb.2:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	.loc	0 123 64                        # test.c:123:64 @[ test.c:112:5 ]
	vmv.v.i	v9, 0
.Ltmp11:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	.loc	0 129 25                        # test.c:129:25 @[ test.c:112:5 ]
	vsetvli	a1, zero, e32, m8, ta, ma
.Ltmp12:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x11
	.loc	0 0 25 is_stmt 0                # test.c:0:25
	lui	a7, 261003
	lui	t5, 258839
.Ltmp13:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:viln2_8 <- undef
	lui	t0, 231425
	lui	a5, 260096
.Ltmp14:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo_8 <- undef
	lui	a6, 258048
.Ltmp15:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc1_8 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc0_8 <- undef
	lui	t1, 254635
	lui	t2, 250539
	lui	t3, 245897
	lui	t4, 240481
	lui	t6, 237847
	lui	s2, 234095
	addi	a3, sp, 20
	li	a1, 128
.Ltmp16:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- 128
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	.loc	0 131 65 is_stmt 1              # test.c:131:65 @[ test.c:112:5 ]
	vmv.v.x	v16, t5
	csrr	a2, vlenb
	li	a4, 80
	mul	a2, a2, a4
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
.Lpcrel_hi1:
	auipc	a4, %pcrel_hi(src)
	.loc	0 134 61                        # test.c:134:61 @[ test.c:112:5 ]
	vmv.v.x	v16, a5
	csrr	a2, vlenb
	li	a5, 72
	mul	a2, a2, a5
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
.Lpcrel_hi2:
	auipc	a5, %pcrel_hi(dst)
	.loc	0 136 61                        # test.c:136:61 @[ test.c:112:5 ]
	vmv.v.x	v16, a6
	csrr	a2, vlenb
	slli	a2, a2, 6
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	li	a6, 127
	addi	a2, a7, -1477
	addi	s0, t0, -1024
.Ltmp17:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi_8 <- undef
	.loc	0 0 61 is_stmt 0                # test.c:0:61
	addi	t5, t1, -1365
.Ltmp18:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2_8 <- undef
	addi	a7, t2, -1365
.Ltmp19:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3_8 <- undef
	addi	t0, t3, -1911
.Ltmp20:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4_8 <- undef
	addi	t1, t4, -1183
.Ltmp21:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5_8 <- undef
	addi	t2, t6, 1492
.Ltmp22:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6_8 <- undef
	addi	t3, s2, -626
.Ltmp23:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7_8 <- undef
	.loc	0 159 5                         # test.c:159:5 @[ test.c:112:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vse32.v	v8, (a3)
	addi	a3, a4, %pcrel_lo(.Lpcrel_hi1)
.Ltmp24:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	.loc	0 0 5                           # test.c:0:5
	addi	a4, a5, %pcrel_lo(.Lpcrel_hi2)
.Ltmp25:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x14
	vmv1r.v	v10, v9
	lw	a5, 20(sp)
	.loc	0 130 65 is_stmt 1              # test.c:130:65 @[ test.c:112:5 ]
	vsetvli	s1, zero, e32, m8, ta, ma
	vmv.v.x	v16, a2
	csrr	a2, vlenb
	li	t4, 56
	mul	a2, a2, t4
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 132 65                        # test.c:132:65 @[ test.c:112:5 ]
	vmv.v.x	v16, s0
	csrr	a2, vlenb
	li	t4, 48
	mul	a2, a2, t4
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 137 61                        # test.c:137:61 @[ test.c:112:5 ]
	vmv.v.x	v16, t5
	csrr	a2, vlenb
	li	t4, 40
	mul	a2, a2, t4
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 138 61                        # test.c:138:61 @[ test.c:112:5 ]
	vmv.v.x	v16, a7
	csrr	a2, vlenb
	slli	a2, a2, 5
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 139 61                        # test.c:139:61 @[ test.c:112:5 ]
	vmv.v.x	v16, t0
	csrr	a2, vlenb
	li	a7, 24
	mul	a2, a2, a7
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 140 61                        # test.c:140:61 @[ test.c:112:5 ]
	vmv.v.x	v16, t1
	csrr	a2, vlenb
	slli	a2, a2, 4
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 141 61                        # test.c:141:61 @[ test.c:112:5 ]
	vmv.v.x	v16, t2
	csrr	a2, vlenb
	slli	a2, a2, 3
	add	a2, a2, sp
	addi	a2, a2, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
	.loc	0 142 61                        # test.c:142:61 @[ test.c:112:5 ]
	vmv.v.x	v16, t3
.Ltmp26:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	.loc	0 0 61 is_stmt 0                # test.c:0:61
	addi	a2, sp, 32
	vs8r.v	v16, (a2)                       # vscale x 64-byte Folded Spill
.Ltmp27:
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	csrr	a2, vlenb
	li	a7, 88
	mul	a2, a2, a7
	add	a2, a2, sp
	addi	a2, a2, 32
	vs1r.v	v10, (a2)                       # vscale x 8-byte Folded Spill
.Ltmp28:
	.loc	0 166 21 is_stmt 1              # test.c:166:21 @[ test.c:112:5 ]
	vsetvli	a2, a1, e32, m8, ta, ma
.Ltmp29:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 168 27                        # test.c:168:27 @[ test.c:112:5 ]
	vle32.v	v8, (a3)
.Ltmp30:
	#DEBUG_VALUE: vx <- undef
	.loc	0 169 65                        # test.c:169:65 @[ test.c:112:5 ]
	vmv.v.x	v24, a5
.Ltmp31:
	#DEBUG_VALUE: vmaxB <- undef
	.loc	0 170 14                        # test.c:170:14 @[ test.c:112:5 ]
	vfsub.vv	v8, v8, v24
	csrr	a7, vlenb
	li	t0, 56
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 174 31                        # test.c:174:31 @[ test.c:112:5 ]
	vfmul.vv	v24, v8, v16
.Ltmp32:
	#DEBUG_VALUE: vxiln2 <- undef
	.loc	0 175 31                        # test.c:175:31 @[ test.c:112:5 ]
	vfcvt.x.f.v	v24, v24
.Ltmp33:
	#DEBUG_VALUE: vk <- undef
	.loc	0 179 31                        # test.c:179:31 @[ test.c:112:5 ]
	vfcvt.f.x.v	v0, v24
.Ltmp34:
	#DEBUG_VALUE: vfk <- undef
	.loc	0 0 31 is_stmt 0                # test.c:0:31
	csrr	a7, vlenb
	li	t0, 80
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 180 31 is_stmt 1              # test.c:180:31 @[ test.c:112:5 ]
	vfmul.vv	v16, v0, v16
.Ltmp35:
	#DEBUG_VALUE: vkl2hi <- undef
	.loc	0 182 31                        # test.c:182:31 @[ test.c:112:5 ]
	vfsub.vv	v8, v8, v16
.Ltmp36:
	#DEBUG_VALUE: vr <- undef
	.loc	0 0 31 is_stmt 0                # test.c:0:31
	csrr	a7, vlenb
	li	t0, 48
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 181 31 is_stmt 1              # test.c:181:31 @[ test.c:112:5 ]
	vfmul.vv	v16, v0, v16
.Ltmp37:
	#DEBUG_VALUE: vkl2lo <- undef
	.loc	0 183 14                        # test.c:183:14 @[ test.c:112:5 ]
	vfsub.vv	v0, v8, v16
.Ltmp38:
	#DEBUG_VALUE: p <- undef
	.loc	0 0 14 is_stmt 0                # test.c:0:14
	addi	a7, sp, 32
	vl8r.v	v8, (a7)                        # vscale x 64-byte Folded Reload
	csrr	a7, vlenb
	slli	a7, a7, 3
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 187 13 is_stmt 1              # test.c:187:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	csrr	a7, vlenb
	slli	a7, a7, 4
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 188 13                        # test.c:188:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	csrr	a7, vlenb
	li	t0, 24
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 189 13                        # test.c:189:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	csrr	a7, vlenb
	slli	a7, a7, 5
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 190 13                        # test.c:190:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	csrr	a7, vlenb
	li	t0, 40
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 191 13                        # test.c:191:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	csrr	a7, vlenb
	slli	a7, a7, 6
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 192 13                        # test.c:192:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	csrr	a7, vlenb
	li	t0, 72
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl8r.v	v16, (a7)                       # vscale x 64-byte Folded Reload
	.loc	0 193 13                        # test.c:193:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
	.loc	0 194 13                        # test.c:194:13 @[ test.c:112:5 ]
	vfmadd.vv	v8, v0, v16
.Ltmp39:
	#DEBUG_VALUE: exp_bias <- 127
	.loc	0 198 30                        # test.c:198:30 @[ test.c:112:5 ]
	vadd.vx	v16, v24, a6
.Ltmp40:
	#DEBUG_VALUE: vbiased <- undef
	.loc	0 199 30                        # test.c:199:30 @[ test.c:112:5 ]
	vsll.vi	v16, v16, 23
.Ltmp41:
	#DEBUG_VALUE: vexp2 <- undef
	#DEBUG_VALUE: vf2k <- undef
	.loc	0 202 30                        # test.c:202:30 @[ test.c:112:5 ]
	vfmul.vv	v8, v8, v16
.Ltmp42:
	#DEBUG_VALUE: vexp8 <- undef
	.loc	0 173 27                        # test.c:173:27 @[ test.c:112:5 ]
	#APP
	frrm	s1
	#NO_APP
.Ltmp43:
	#DEBUG_VALUE: old_frm <- $x9
	.loc	0 173 73                        # test.c:173:73 @[ test.c:112:5 ]
	#APP
	fsrm	a0
	#NO_APP
	.loc	0 176 9                         # test.c:176:9 @[ test.c:112:5 ]
	#APP
	fsrm	s1
	#NO_APP
	.loc	0 203 9 is_stmt 0               # test.c:203:9 @[ test.c:112:5 ]
	vsetvli	zero, a1, e32, m8, ta, ma
	vse32.v	v8, (a4)
	.loc	0 206 29 is_stmt 1              # test.c:206:29 @[ test.c:112:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vmv.v.i	v16, 0
	vsetvli	zero, a1, e32, m8, ta, ma
	vfredosum.vs	v8, v8, v16
.Ltmp44:
	#DEBUG_VALUE: vblk <- undef
	.loc	0 0 29 is_stmt 0                # test.c:0:29
	csrr	a7, vlenb
	li	t0, 88
	mul	a7, a7, t0
	add	a7, a7, sp
	addi	a7, a7, 32
	vl1r.v	v10, (a7)                       # vscale x 8-byte Folded Reload
	.loc	0 207 17 is_stmt 1              # test.c:207:17 @[ test.c:112:5 ]
	vsetivli	zero, 1, e32, m1, ta, ma
	vfadd.vv	v10, v10, v8
	.loc	0 209 14                        # test.c:209:14 @[ test.c:112:5 ]
	sub	a1, a1, a2
.Ltmp45:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x11
	.loc	0 209 25                        # test.c:209:25 @[ test.c:112:5 ]
	slli	a2, a2, 2
.Ltmp46:
	add	a3, a3, a2
.Ltmp47:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	.loc	0 209 36                        # test.c:209:36 @[ test.c:112:5 ]
	add	a4, a4, a2
.Ltmp48:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	.loc	0 165 5                         # test.c:165:5 @[ test.c:112:5 ]
	bnez	a1, .LBB0_3
.Ltmp49:
# %bb.4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	lui	a0, 262144
.Ltmp50:
	lui	a1, 205501
.Ltmp51:
	.loc	0 124 64 is_stmt 1              # test.c:124:64 @[ test.c:112:5 ]
	vmv.v.x	v8, a0
	addi	a0, a1, -905
.Ltmp52:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	.loc	0 125 64                        # test.c:125:64 @[ test.c:112:5 ]
	vmv.v.x	v9, a0
.Ltmp53:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	.loc	0 213 30                        # test.c:213:30 @[ test.c:112:5 ]
	vfadd.vv	v9, v10, v9
.Ltmp54:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	.loc	0 214 26                        # test.c:214:26 @[ test.c:112:5 ]
	vfrec7.v	v10, v9
.Ltmp55:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	.loc	0 215 25                        # test.c:215:25 @[ test.c:112:5 ]
	vmv1r.v	v11, v9
	vfnmsub.vv	v11, v10, v8
.Ltmp56:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:corr <- undef
	.loc	0 216 13                        # test.c:216:13 @[ test.c:112:5 ]
	vfmul.vv	v10, v10, v11
	.loc	0 217 13                        # test.c:217:13 @[ test.c:112:5 ]
	vfnmsub.vv	v9, v10, v8
	.loc	0 218 13                        # test.c:218:13 @[ test.c:112:5 ]
	vfmul.vv	v8, v10, v9
	addi	a0, sp, 16
	.loc	0 222 5 is_stmt 0               # test.c:222:5 @[ test.c:112:5 ]
	vse32.v	v8, (a0)
	lw	a0, 16(sp)
	li	a1, 128
.Ltmp57:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- 128
.Lpcrel_hi3:
	.loc	0 0 5                           # test.c:0:5
	auipc	a2, %pcrel_hi(dst)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi3)
.Ltmp58:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x12
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x11
	.loc	0 227 21 is_stmt 1              # test.c:227:21 @[ test.c:112:5 ]
	vsetvli	a3, a1, e32, m8, ta, ma
.Ltmp59:
	#DEBUG_VALUE: vl <- $x13
	.loc	0 228 30                        # test.c:228:30 @[ test.c:112:5 ]
	vle32.v	v8, (a2)
.Ltmp60:
	#DEBUG_VALUE: row <- undef
	.loc	0 229 65                        # test.c:229:65 @[ test.c:112:5 ]
	vmv.v.x	v16, a0
.Ltmp61:
	#DEBUG_VALUE: vinvB <- undef
	.loc	0 232 14                        # test.c:232:14 @[ test.c:112:5 ]
	sub	a1, a1, a3
.Ltmp62:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x11
	.loc	0 230 15                        # test.c:230:15 @[ test.c:112:5 ]
	vfmul.vv	v8, v8, v16
	.loc	0 231 9 is_stmt 0               # test.c:231:9 @[ test.c:112:5 ]
	vse32.v	v8, (a2)
	.loc	0 232 25 is_stmt 1              # test.c:232:25 @[ test.c:112:5 ]
	slli	a3, a3, 2
.Ltmp63:
	add	a2, a2, a3
.Ltmp64:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x12
	.loc	0 226 5                         # test.c:226:5 @[ test.c:112:5 ]
	bnez	a1, .LBB0_5
.Ltmp65:
# %bb.6:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	li	a0, 128
.Lpcrel_hi4:
	auipc	a1, %pcrel_hi(dst)
.Ltmp66:
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi4)
.Ltmp67:
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- 128
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x10
	.loc	0 239 21 is_stmt 1              # test.c:239:21 @[ test.c:112:5 ]
	vsetvli	a2, a0, e32, m8, ta, ma
.Ltmp68:
	#DEBUG_VALUE: vl <- $x12
	.loc	0 240 29                        # test.c:240:29 @[ test.c:112:5 ]
	vle32.v	v8, (a1)
.Ltmp69:
	#DEBUG_VALUE: row2 <- undef
	.loc	0 242 14                        # test.c:242:14 @[ test.c:112:5 ]
	sub	a0, a0, a2
.Ltmp70:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x10
	.loc	0 241 9 is_stmt 0               # test.c:241:9 @[ test.c:112:5 ]
	vse32.v	v8, (a1)
	.loc	0 242 25 is_stmt 1              # test.c:242:25 @[ test.c:112:5 ]
	slli	a2, a2, 2
.Ltmp71:
	add	a1, a1, a2
.Ltmp72:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x11
	.loc	0 238 5                         # test.c:238:5 @[ test.c:112:5 ]
	bnez	a0, .LBB0_7
.Ltmp73:
# %bb.8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	.loc	0 115 5 epilogue_begin          # test.c:115:5
	csrr	a1, vlenb
	li	a2, 89
	mul	a1, a1, a2
	add	sp, sp, a1
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
.Ltmp74:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.file	4 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/machine" "_default_types.h" md5 0xf7024d0682a918b41f94e8be9cd90461
	.file	5 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "riscv_vector.h" md5 0x255ceebde96f450c22e334dcdb0f3a56
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
.Ltmp75:
	.loc	0 122 24 prologue_end           # test.c:122:24
	vsetivli	zero, 1, e32, m1, ta, ma
.Ltmp76:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vl1 <- undef
	.loc	0 0 24 is_stmt 0                # test.c:0:24
	lui	a6, 262144
.Ltmp77:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	lui	a3, 205501
	lui	a5, 1046528
.Ltmp78:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:veps1 <- undef
	addi	a7, a3, -905
.Ltmp79:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	.loc	0 126 64 is_stmt 1              # test.c:126:64
	vmv.v.x	v8, a5
.Ltmp80:
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
.Ltmp81:
# %bb.1:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	mv	a5, a1
	mv	a3, a2
	vmv1r.v	v9, v8
.Ltmp82:
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vmax1 <- undef
	.loc	0 149 21 is_stmt 1              # test.c:149:21
	vsetvli	a4, a3, e32, m8, ta, ma
.Ltmp83:
	#DEBUG_VALUE: vl <- $x14
	.loc	0 150 27                        # test.c:150:27
	vle32.v	v16, (a5)
.Ltmp84:
	#DEBUG_VALUE: vx <- undef
	.loc	0 153 13                        # test.c:153:13
	sub	a3, a3, a4
.Ltmp85:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x13
	.loc	0 151 32                        # test.c:151:32
	vfredmax.vs	v10, v16, v8
.Ltmp86:
	#DEBUG_VALUE: blk_max <- undef
	.loc	0 153 24                        # test.c:153:24
	slli	a4, a4, 2
.Ltmp87:
	.loc	0 152 17                        # test.c:152:17
	vsetivli	zero, 1, e32, m1, ta, ma
	vfmax.vv	v9, v9, v10
	.loc	0 153 24                        # test.c:153:24
	add	a5, a5, a4
.Ltmp88:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x15
	.loc	0 148 5                         # test.c:148:5
	bnez	a3, .LBB1_2
.Ltmp89:
# %bb.3:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x15
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv1r.v	v8, v9
.Ltmp90:
.LBB1_4:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vzero1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- undef
	vmv.v.x	v9, a6
.Ltmp91:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vtwo1 <- undef
	csrr	a3, vlenb
	add	a3, a3, sp
	addi	a3, a3, 32
	vs1r.v	v9, (a3)                        # vscale x 8-byte Folded Spill
	vmv.v.x	v9, a7
.Ltmp92:
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
.Ltmp93:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1 <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	.loc	0 165 5 is_stmt 1               # test.c:165:5
	beqz	a2, .LBB1_7
.Ltmp94:
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
.Ltmp95:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x15
	lui	a5, 258839
.Ltmp96:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x15
	lui	a4, 260096
	lui	s1, 258048
	vmv.v.x	v8, a5
.Ltmp97:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_hi_8 <- undef
	csrr	a5, vlenb
.Ltmp98:
	li	a6, 82
	mul	a5, a5, a6
	add	a5, a5, sp
	addi	a5, a5, 32
	vs8r.v	v8, (a5)                        # vscale x 64-byte Folded Spill
	lw	t0, 20(sp)
	vmv.v.x	v8, a4
.Ltmp99:
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
.Ltmp100:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc2_8 <- undef
	csrr	a4, vlenb
	li	a5, 66
	mul	a4, a4, a5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v8, (a4)                        # vscale x 64-byte Folded Spill
	mv	a5, a0
.Ltmp101:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vlm8 <- $x15
	addi	a3, a3, -1477
	vmv.v.x	v8, a3
.Ltmp102:
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
.Ltmp103:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vln2_lo_8 <- undef
	csrr	a4, vlenb
	li	t5, 50
	mul	a4, a4, t5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, s1
.Ltmp104:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc3_8 <- undef
	csrr	a4, vlenb
	li	t5, 42
	mul	a4, a4, t5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, s2
.Ltmp105:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc4_8 <- undef
	csrr	a4, vlenb
	li	t5, 34
	mul	a4, a4, t5
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t1
.Ltmp106:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc5_8 <- undef
	csrr	a4, vlenb
	li	t1, 26
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t2
.Ltmp107:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc6_8 <- undef
	csrr	a4, vlenb
	li	t1, 18
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t3
.Ltmp108:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc7_8 <- undef
	csrr	a4, vlenb
	li	t1, 10
	mul	a4, a4, t1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
	vmv.v.x	v16, t4
.Ltmp109:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:pc8_8 <- undef
	csrr	a4, vlenb
	slli	a4, a4, 1
	add	a4, a4, sp
	addi	a4, a4, 32
	vs8r.v	v16, (a4)                       # vscale x 64-byte Folded Spill
.Ltmp110:
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
.Ltmp111:
	.loc	0 166 21 is_stmt 1              # test.c:166:21
	vsetvli	a4, a3, e32, m8, ta, ma
.Ltmp112:
	#DEBUG_VALUE: vl <- $x14
	.loc	0 168 27                        # test.c:168:27
	vle32.v	v8, (a1)
.Ltmp113:
	#DEBUG_VALUE: vx <- undef
	.loc	0 169 65                        # test.c:169:65
	vmv.v.x	v24, t0
.Ltmp114:
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
.Ltmp115:
	#DEBUG_VALUE: vxiln2 <- undef
	.loc	0 175 31                        # test.c:175:31
	vfcvt.x.f.v	v24, v24
.Ltmp116:
	#DEBUG_VALUE: vk <- undef
	.loc	0 179 31                        # test.c:179:31
	vfcvt.f.x.v	v0, v24
.Ltmp117:
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
.Ltmp118:
	#DEBUG_VALUE: vkl2hi <- undef
	.loc	0 182 31                        # test.c:182:31
	vfsub.vv	v8, v8, v16
.Ltmp119:
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
.Ltmp120:
	#DEBUG_VALUE: vkl2lo <- undef
	.loc	0 183 14                        # test.c:183:14
	vfsub.vv	v0, v8, v16
.Ltmp121:
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
.Ltmp122:
	#DEBUG_VALUE: exp_bias <- 127
	.loc	0 198 30                        # test.c:198:30
	vadd.vx	v16, v24, a6
.Ltmp123:
	#DEBUG_VALUE: vbiased <- undef
	.loc	0 199 30                        # test.c:199:30
	vsll.vi	v16, v16, 23
.Ltmp124:
	#DEBUG_VALUE: vexp2 <- undef
	#DEBUG_VALUE: vf2k <- undef
	.loc	0 202 30                        # test.c:202:30
	vfmul.vv	v8, v8, v16
.Ltmp125:
	#DEBUG_VALUE: vexp8 <- undef
	.loc	0 173 27                        # test.c:173:27
	#APP
	frrm	s1
	#NO_APP
.Ltmp126:
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
.Ltmp127:
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
.Ltmp128:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x13
	.loc	0 209 25                        # test.c:209:25
	slli	a4, a4, 2
.Ltmp129:
	add	a1, a1, a4
.Ltmp130:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:src <- $x11
	.loc	0 209 36                        # test.c:209:36
	add	a5, a5, a4
.Ltmp131:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x15
	.loc	0 165 5                         # test.c:165:5
	bnez	a3, .LBB1_6
	j	.LBB1_8
.Ltmp132:
.LBB1_7:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl2 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	vmv.v.i	v8, 0
	vmv1r.v	v9, v8
.Ltmp133:
.LBB1_8:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	addi	a1, sp, 32
	vl1r.v	v8, (a1)                        # vscale x 8-byte Folded Reload
	.loc	0 213 30 is_stmt 1              # test.c:213:30
	vfadd.vv	v8, v9, v8
.Ltmp134:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vsum1_eps <- undef
	.loc	0 214 26                        # test.c:214:26
	vfrec7.v	v9, v8
.Ltmp135:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:vinv1 <- undef
	.loc	0 215 25                        # test.c:215:25
	vmv1r.v	v10, v8
	csrr	a1, vlenb
	add	a1, a1, sp
	addi	a1, a1, 32
	vl1r.v	v11, (a1)                       # vscale x 8-byte Folded Reload
	vfnmsub.vv	v10, v9, v11
.Ltmp136:
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
.Ltmp137:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- undef
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	.loc	0 226 5 is_stmt 1               # test.c:226:5
	beqz	a2, .LBB1_12
.Ltmp138:
# %bb.9:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	.loc	0 0 5 is_stmt 0                 # test.c:0:5
	lw	a1, 16(sp)
	mv	a3, a0
	mv	a4, a2
.Ltmp139:
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst_orig <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:n <- $x12
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x13
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x14
	.loc	0 227 21 is_stmt 1              # test.c:227:21
	vsetvli	a5, a4, e32, m8, ta, ma
.Ltmp140:
	#DEBUG_VALUE: vl <- $x15
	.loc	0 228 30                        # test.c:228:30
	vle32.v	v8, (a3)
.Ltmp141:
	#DEBUG_VALUE: row <- undef
	.loc	0 229 65                        # test.c:229:65
	vmv.v.x	v16, a1
.Ltmp142:
	#DEBUG_VALUE: vinvB <- undef
	.loc	0 232 14                        # test.c:232:14
	sub	a4, a4, a5
.Ltmp143:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x14
	.loc	0 230 15                        # test.c:230:15
	vfmul.vv	v8, v8, v16
	.loc	0 231 9 is_stmt 0               # test.c:231:9
	vse32.v	v8, (a3)
	.loc	0 232 25 is_stmt 1              # test.c:232:25
	slli	a5, a5, 2
.Ltmp144:
	add	a3, a3, a5
.Ltmp145:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x13
	.loc	0 226 5                         # test.c:226:5
	bnez	a4, .LBB1_10
.Ltmp146:
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl3 <- $x14
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 239 21                        # test.c:239:21
	vsetvli	a1, a2, e32, m8, ta, ma
.Ltmp147:
	#DEBUG_VALUE: vl <- $x11
	.loc	0 240 29                        # test.c:240:29
	vle32.v	v8, (a0)
.Ltmp148:
	#DEBUG_VALUE: row2 <- undef
	.loc	0 242 14                        # test.c:242:14
	sub	a2, a2, a1
.Ltmp149:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:avl4 <- $x12
	.loc	0 241 9 is_stmt 0               # test.c:241:9
	vse32.v	v8, (a0)
	.loc	0 242 25 is_stmt 1              # test.c:242:25
	slli	a1, a1, 2
.Ltmp150:
	add	a0, a0, a1
.Ltmp151:
	#DEBUG_VALUE: softmax_stable_rvv_fp32:dst <- $x10
	.loc	0 238 5                         # test.c:238:5
	bnez	a2, .LBB1_11
.Ltmp152:
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
.Ltmp153:
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

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	30                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	127                             # 127
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 128
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp146-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	127                             # 127
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
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
	.byte	8                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	47                              # DW_AT_upper_bound
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xc:0x525 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.half	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.word	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	3                               # DW_AT_low_pc
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
	.byte	7                               # Abbrev [7] 0x51:0xb DW_TAG_variable
	.byte	7                               # DW_AT_name
	.word	92                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x5c:0xc DW_TAG_array_type
	.word	104                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x61:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x68:0x5 DW_TAG_const_type
	.word	62                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6d:0x8 DW_TAG_typedef
	.word	117                             # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x75:0x8 DW_TAG_typedef
	.word	125                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x7d:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x81:0x1e5 DW_TAG_subprogram
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x85:0x8 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	614                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x8d:0x8 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	614                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x95:0x8 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x9d:0x8 DW_TAG_variable
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.word	619                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa5:0x8 DW_TAG_variable
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.word	619                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xad:0x8 DW_TAG_variable
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.word	614                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xb5:0x8 DW_TAG_variable
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xbd:0x8 DW_TAG_variable
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.word	643                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc5:0x8 DW_TAG_variable
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xcd:0x8 DW_TAG_variable
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.word	614                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xd5:0x8 DW_TAG_variable
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xdd:0x8 DW_TAG_variable
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xe5:0x8 DW_TAG_variable
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.word	643                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xed:0x8 DW_TAG_variable
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xf5:0x8 DW_TAG_variable
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xfd:0x8 DW_TAG_variable
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x105:0x8 DW_TAG_variable
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x10d:0x8 DW_TAG_variable
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x115:0x8 DW_TAG_variable
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x11d:0x8 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x125:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x12d:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x135:0x8 DW_TAG_variable
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x13d:0x8 DW_TAG_variable
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x145:0x8 DW_TAG_variable
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x14d:0x8 DW_TAG_variable
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x155:0x8 DW_TAG_variable
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x15d:0x8 DW_TAG_variable
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x165:0x8 DW_TAG_variable
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x16d:0x8 DW_TAG_variable
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x175:0x8 DW_TAG_variable
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x17d:0x8 DW_TAG_variable
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x185:0x8 DW_TAG_variable
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x18d:0x8 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x195:0x1a DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x196:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x19e:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a6:0x8 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1af:0x8a DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1b0:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1b8:0x8 DW_TAG_variable
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.word	722                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1c0:0x8 DW_TAG_variable
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.word	639                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1c8:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1d0:0x8 DW_TAG_variable
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1d8:0x8 DW_TAG_variable
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1e0:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.word	731                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1e8:0x8 DW_TAG_variable
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1f0:0x8 DW_TAG_variable
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1f8:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x200:0x8 DW_TAG_variable
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x208:0x8 DW_TAG_variable
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x210:0x8 DW_TAG_variable
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.word	731                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x218:0x8 DW_TAG_variable
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.word	731                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x220:0x8 DW_TAG_variable
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x228:0x8 DW_TAG_variable
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x230:0x8 DW_TAG_variable
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.word	648                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x239:0x1a DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x23a:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x242:0x8 DW_TAG_variable
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x24a:0x8 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x253:0x12 DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x254:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.word	109                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x25c:0x8 DW_TAG_variable
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.word	685                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x266:0x5 DW_TAG_pointer_type
	.word	62                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x26b:0xc DW_TAG_array_type
	.word	631                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x270:0x6 DW_TAG_subrange_type
	.word	66                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x277:0x8 DW_TAG_typedef
	.word	639                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x27f:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x283:0x5 DW_TAG_const_type
	.word	109                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x288:0x9 DW_TAG_typedef
	.word	657                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.half	357                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x291:0x6 DW_TAG_typedef
	.word	663                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	17                              # Abbrev [17] 0x297:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	62                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x29c:0x10 DW_TAG_subrange_type
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
	.byte	15                              # Abbrev [15] 0x2ad:0x9 DW_TAG_typedef
	.word	694                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.half	371                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2b6:0x6 DW_TAG_typedef
	.word	700                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	17                              # Abbrev [17] 0x2bc:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	62                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2c1:0x10 DW_TAG_subrange_type
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
	.byte	8                               # Abbrev [8] 0x2d2:0x5 DW_TAG_const_type
	.word	727                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2d7:0x4 DW_TAG_base_type
	.byte	54                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x2db:0x9 DW_TAG_typedef
	.word	740                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.half	286                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2e4:0x6 DW_TAG_typedef
	.word	746                             # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	17                              # Abbrev [17] 0x2ea:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	727                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x2ef:0x10 DW_TAG_subrange_type
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
	.byte	19                              # Abbrev [19] 0x300:0xbb DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.word	727                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x30f:0xab DW_TAG_inlined_subroutine
	.word	129                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.word	.Ltmp73-.Ltmp0                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	112                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x31c:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.word	133                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x322:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.word	141                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x328:0x7 DW_TAG_formal_parameter
	.ascii	"\200\001"                      # DW_AT_const_value
	.word	149                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x32f:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	20
	.word	157                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x337:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.word	165                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x33f:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.word	173                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x345:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.word	181                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x34b:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.word	189                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x351:0x6 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.word	197                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x357:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.word	205                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x35d:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.word	213                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x363:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.word	221                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x369:0x11 DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.word	.Ltmp9-.Ltmp3                   # DW_AT_high_pc
	.word	405                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x373:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.word	406                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x37a:0x1d DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.word	.Ltmp48-.Ltmp28                 # DW_AT_high_pc
	.word	431                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x384:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.word	432                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x38a:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.word	440                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x390:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.word	448                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x397:0x11 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.word	.Ltmp64-.Ltmp58                 # DW_AT_high_pc
	.word	569                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3a1:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.word	570                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x3a8:0x11 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.word	.Ltmp72-.Ltmp67                 # DW_AT_high_pc
	.word	595                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3b2:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.word	596                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x3bb:0x175 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	129                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x3c7:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.word	133                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x3cd:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.word	141                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x3d3:0x6 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.word	149                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x3d9:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	20
	.word	157                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x3e1:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.word	165                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3e9:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.word	189                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3ef:0x6 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.word	181                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3f5:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.word	205                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3fb:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.word	197                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x401:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.word	213                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x407:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.word	221                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x40d:0x5 DW_TAG_variable
	.word	229                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x412:0x5 DW_TAG_variable
	.word	237                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x417:0x5 DW_TAG_variable
	.word	245                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x41c:0x5 DW_TAG_variable
	.word	253                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x421:0x5 DW_TAG_variable
	.word	261                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x426:0x5 DW_TAG_variable
	.word	269                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x42b:0x5 DW_TAG_variable
	.word	277                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x430:0x5 DW_TAG_variable
	.word	285                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x435:0x5 DW_TAG_variable
	.word	293                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x43a:0x5 DW_TAG_variable
	.word	301                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x43f:0x5 DW_TAG_variable
	.word	309                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x444:0x5 DW_TAG_variable
	.word	317                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x449:0x5 DW_TAG_variable
	.word	325                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x44e:0x5 DW_TAG_variable
	.word	333                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x453:0x5 DW_TAG_variable
	.word	341                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x458:0x5 DW_TAG_variable
	.word	349                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x45d:0x5 DW_TAG_variable
	.word	357                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x462:0x5 DW_TAG_variable
	.word	173                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x467:0x5 DW_TAG_variable
	.word	365                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x46c:0x5 DW_TAG_variable
	.word	373                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x471:0x5 DW_TAG_variable
	.word	381                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x476:0x5 DW_TAG_variable
	.word	389                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x47b:0x5 DW_TAG_variable
	.word	397                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x480:0x1b DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.word	.Ltmp88-.Ltmp82                 # DW_AT_high_pc
	.word	405                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x48a:0x6 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.word	406                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x490:0x5 DW_TAG_variable
	.word	414                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x495:0x5 DW_TAG_variable
	.word	422                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x49b:0x63 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.word	.Ltmp131-.Ltmp111               # DW_AT_high_pc
	.word	431                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4a5:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.word	432                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4ab:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.word	440                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x4b1:0x6 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.word	448                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4b7:0x5 DW_TAG_variable
	.word	456                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4bc:0x5 DW_TAG_variable
	.word	464                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4c1:0x5 DW_TAG_variable
	.word	472                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4c6:0x5 DW_TAG_variable
	.word	480                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4cb:0x5 DW_TAG_variable
	.word	488                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4d0:0x5 DW_TAG_variable
	.word	496                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4d5:0x5 DW_TAG_variable
	.word	504                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4da:0x5 DW_TAG_variable
	.word	512                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4df:0x5 DW_TAG_variable
	.word	520                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4e4:0x5 DW_TAG_variable
	.word	528                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4e9:0x5 DW_TAG_variable
	.word	536                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4ee:0x5 DW_TAG_variable
	.word	544                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4f3:0x5 DW_TAG_variable
	.word	552                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x4f8:0x5 DW_TAG_variable
	.word	560                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4fe:0x1b DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.word	.Ltmp145-.Ltmp139               # DW_AT_high_pc
	.word	569                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x508:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.word	570                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x50e:0x5 DW_TAG_variable
	.word	578                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x513:0x5 DW_TAG_variable
	.word	586                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x519:0x16 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.word	.Ltmp151-.Ltmp146               # DW_AT_high_pc
	.word	595                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x523:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.word	596                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x529:0x5 DW_TAG_variable
	.word	604                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	304                             # Length of String Offsets Set
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
	.asciz	"src"                           # string offset=184
.Linfo_string8:
	.asciz	"unsigned long"                 # string offset=188
.Linfo_string9:
	.asciz	"__size_t"                      # string offset=202
.Linfo_string10:
	.asciz	"size_t"                        # string offset=211
.Linfo_string11:
	.asciz	"softmax_stable_rvv_fp32"       # string offset=218
.Linfo_string12:
	.asciz	"n"                             # string offset=242
.Linfo_string13:
	.asciz	"max_bits"                      # string offset=244
.Linfo_string14:
	.asciz	"unsigned int"                  # string offset=253
.Linfo_string15:
	.asciz	"uint32_t"                      # string offset=266
.Linfo_string16:
	.asciz	"inv_bits"                      # string offset=275
.Linfo_string17:
	.asciz	"src_orig"                      # string offset=284
.Linfo_string18:
	.asciz	"avl"                           # string offset=293
.Linfo_string19:
	.asciz	"vlm8"                          # string offset=297
.Linfo_string20:
	.asciz	"avl2"                          # string offset=302
.Linfo_string21:
	.asciz	"dst_orig"                      # string offset=307
.Linfo_string22:
	.asciz	"avl3"                          # string offset=316
.Linfo_string23:
	.asciz	"avl4"                          # string offset=321
.Linfo_string24:
	.asciz	"vl1"                           # string offset=326
.Linfo_string25:
	.asciz	"vzero1"                        # string offset=330
.Linfo_string26:
	.asciz	"__rvv_float32m1_t"             # string offset=337
.Linfo_string27:
	.asciz	"vfloat32m1_t"                  # string offset=355
.Linfo_string28:
	.asciz	"vtwo1"                         # string offset=368
.Linfo_string29:
	.asciz	"veps1"                         # string offset=374
.Linfo_string30:
	.asciz	"vneginf1"                      # string offset=380
.Linfo_string31:
	.asciz	"viln2_8"                       # string offset=389
.Linfo_string32:
	.asciz	"__rvv_float32m8_t"             # string offset=397
.Linfo_string33:
	.asciz	"vfloat32m8_t"                  # string offset=415
.Linfo_string34:
	.asciz	"vln2_hi_8"                     # string offset=428
.Linfo_string35:
	.asciz	"vln2_lo_8"                     # string offset=438
.Linfo_string36:
	.asciz	"pc0_8"                         # string offset=448
.Linfo_string37:
	.asciz	"pc1_8"                         # string offset=454
.Linfo_string38:
	.asciz	"pc2_8"                         # string offset=460
.Linfo_string39:
	.asciz	"pc3_8"                         # string offset=466
.Linfo_string40:
	.asciz	"pc4_8"                         # string offset=472
.Linfo_string41:
	.asciz	"pc5_8"                         # string offset=478
.Linfo_string42:
	.asciz	"pc6_8"                         # string offset=484
.Linfo_string43:
	.asciz	"pc7_8"                         # string offset=490
.Linfo_string44:
	.asciz	"pc8_8"                         # string offset=496
.Linfo_string45:
	.asciz	"vmax1"                         # string offset=502
.Linfo_string46:
	.asciz	"vsum1"                         # string offset=508
.Linfo_string47:
	.asciz	"vsum1_eps"                     # string offset=514
.Linfo_string48:
	.asciz	"vinv1"                         # string offset=524
.Linfo_string49:
	.asciz	"corr"                          # string offset=530
.Linfo_string50:
	.asciz	"vl"                            # string offset=535
.Linfo_string51:
	.asciz	"vx"                            # string offset=538
.Linfo_string52:
	.asciz	"blk_max"                       # string offset=541
.Linfo_string53:
	.asciz	"exp_bias"                      # string offset=549
.Linfo_string54:
	.asciz	"int"                           # string offset=558
.Linfo_string55:
	.asciz	"old_frm"                       # string offset=562
.Linfo_string56:
	.asciz	"vmaxB"                         # string offset=570
.Linfo_string57:
	.asciz	"vxiln2"                        # string offset=576
.Linfo_string58:
	.asciz	"vk"                            # string offset=583
.Linfo_string59:
	.asciz	"__rvv_int32m8_t"               # string offset=586
.Linfo_string60:
	.asciz	"vint32m8_t"                    # string offset=602
.Linfo_string61:
	.asciz	"vfk"                           # string offset=613
.Linfo_string62:
	.asciz	"vkl2hi"                        # string offset=617
.Linfo_string63:
	.asciz	"vkl2lo"                        # string offset=624
.Linfo_string64:
	.asciz	"vr"                            # string offset=631
.Linfo_string65:
	.asciz	"p"                             # string offset=634
.Linfo_string66:
	.asciz	"vbiased"                       # string offset=636
.Linfo_string67:
	.asciz	"vexp2"                         # string offset=644
.Linfo_string68:
	.asciz	"vf2k"                          # string offset=650
.Linfo_string69:
	.asciz	"vexp8"                         # string offset=655
.Linfo_string70:
	.asciz	"vblk"                          # string offset=661
.Linfo_string71:
	.asciz	"row"                           # string offset=666
.Linfo_string72:
	.asciz	"vinvB"                         # string offset=670
.Linfo_string73:
	.asciz	"row2"                          # string offset=676
.Linfo_string74:
	.asciz	"main"                          # string offset=681
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.half	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	dst
	.quad	diff_mem
	.quad	src
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp3
	.quad	.Ltmp28
	.quad	.Ltmp58
	.quad	.Ltmp67
	.quad	.Lfunc_begin1
	.quad	.Ltmp82
	.quad	.Ltmp111
	.quad	.Ltmp139
	.quad	.Ltmp146
.Ldebug_addr_end0:
	.ident	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dst
	.addrsig_sym src
	.section	.debug_line,"",@progbits
.Lline_table_start0:
