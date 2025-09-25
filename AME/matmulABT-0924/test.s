	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0_v0p10_zfh0p1_zvlsseg0p10"
	.file	"test.c"
	.file	1 "/home/xl2025/opt/riscv/riscv-matrix-project/llvm-project/build-ninja/lib/clang/14.0.0/include" "stdint.h"
	.file	2 "/mnt/d/riscv-dnn/test/ops/matmul_reuse" "test.c"
	.file	3 "/mnt/d/riscv-dnn/test/ops/matmul_reuse" "build/matmulABT-0914/data.h"
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	2 103 0                         # test.c:103:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
.Ltmp0:
	.loc	2 105 5 prologue_end            # test.c:105:5
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	sd	s6, 32(sp)                      # 8-byte Folded Spill
	sd	s7, 24(sp)                      # 8-byte Folded Spill
	sd	s8, 16(sp)                      # 8-byte Folded Spill
	sd	s9, 8(sp)                       # 8-byte Folded Spill
	sd	s10, 0(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
.LBB0_13:                               # Label of block must be emitted
	auipc	s2, %pcrel_hi(A)
	addi	s2, s2, %pcrel_lo(.LBB0_13)
.LBB0_14:                               # Label of block must be emitted
	auipc	a1, %pcrel_hi(A_i8)
	addi	a1, a1, %pcrel_lo(.LBB0_14)
	addi	a2, zero, 256
	mv	a0, s2
	call	memcpy
.Ltmp1:
.LBB0_15:                               # Label of block must be emitted
	.loc	2 106 5                         # test.c:106:5
	auipc	s5, %pcrel_hi(B)
	addi	s5, s5, %pcrel_lo(.LBB0_15)
.LBB0_16:                               # Label of block must be emitted
	auipc	a1, %pcrel_hi(B_i8)
	addi	a1, a1, %pcrel_lo(.LBB0_16)
	addi	a2, zero, 256
	mv	a0, s5
	call	memcpy
.Ltmp2:
.LBB0_17:                               # Label of block must be emitted
	.loc	2 107 5                         # test.c:107:5
	auipc	s3, %pcrel_hi(C)
	addi	s3, s3, %pcrel_lo(.LBB0_17)
.LBB0_18:                               # Label of block must be emitted
	auipc	a1, %pcrel_hi(C_i32)
	addi	a1, a1, %pcrel_lo(.LBB0_18)
	addi	a2, zero, 1024
	mv	a0, s3
	call	memcpy
.Ltmp3:
	#DEBUG_VALUE: matmul_batch1:C <- undef
	#DEBUG_VALUE: matmul:C <- undef
	.loc	2 0 5 is_stmt 0                 # test.c:0:5
	mv	s4, zero
	addi	s0, zero, 16
	addi	s7, zero, 64
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: matmul_batch1:tile_k <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:A <- $x18
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
.Ltmp4:
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	mv	s9, zero
.Ltmp5:
	#DEBUG_VALUE: i <- $x20
	.loc	2 44 26 is_stmt 1               # test.c:44:26
	subw	a0, s0, s4
	.loc	2 44 14 is_stmt 0               # test.c:44:14
	msettilem	s6, a0
	slliw	a0, s4, 4
	slli	a1, a0, 2
	add	s8, a1, s3
	add	s1, a0, s2
	#DEBUG_VALUE: j <- 0
.Ltmp6:
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	#DEBUG_VALUE: i <- $x20
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	#DEBUG_VALUE: j <- $x25
	.loc	2 48 28 is_stmt 1               # test.c:48:28
	subw	a0, s0, s9
	.loc	2 48 16 is_stmt 0               # test.c:48:16
	msettilen	s10, a0
.Ltmp7:
	.file	4 "/mnt/d/riscv-dnn" "include/matrix/matrix_intrinsic.h"
	.loc	4 21 3 is_stmt 1                # include/matrix/matrix_intrinsic.h:21:3
	msettypei	a0, e32, int32
	msettypehi	a0, bu
.Ltmp8:
	.loc	4 27 3                          # include/matrix/matrix_intrinsic.h:27:3
	#APP
	#NO_APP
.Ltmp9:
	.loc	2 54 39                         # test.c:54:39
	sext.w	a0, s9
	slli	a0, a0, 2
	add	a0, a0, s8
	.loc	2 54 23 is_stmt 0               # test.c:54:23
	mlce32.m	acc0, (a0), s7
.Ltmp10:
	#DEBUG_VALUE: acc1 <- $acc0
	.loc	2 0 23                          # test.c:0:23
	mv	a1, zero
	slliw	a2, s9, 4
	add	a2, a2, s5
	#DEBUG_VALUE: kk <- 0
.Ltmp11:
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: acc1 <- $acc0
	#DEBUG_VALUE: j <- $x25
	#DEBUG_VALUE: i <- $x20
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	#DEBUG_VALUE: acc1 <- $acc0
	#DEBUG_VALUE: kk <- $x11
	.loc	2 57 30 is_stmt 1               # test.c:57:30
	subw	a3, s0, a1
	.loc	2 57 18 is_stmt 0               # test.c:57:18
	msettilek	a3, a3
.Ltmp12:
	#DEBUG_VALUE: matmul_batch1:tile_k <- $x13
	.loc	2 58 39 is_stmt 1               # test.c:58:39
	sext.w	a4, a1
	add	a5, s1, a4
	.loc	2 58 23 is_stmt 0               # test.c:58:23
	mlae8.m	tr0, (a5), s0
.Ltmp13:
	#DEBUG_VALUE: tr0 <- $tr0
	.loc	2 61 39 is_stmt 1               # test.c:61:39
	add	a4, a4, a2
	.loc	2 61 23 is_stmt 0               # test.c:61:23
	mlbe8.m	tr1, (a4), s0
.Ltmp14:
	#DEBUG_VALUE: tr1 <- $tr1
	.loc	2 56 35 is_stmt 1               # test.c:56:35
	addw	a1, a1, a3
.Ltmp15:
	#DEBUG_VALUE: kk <- $x11
	.loc	2 63 16                         # test.c:63:16
	mqma.b.mm	acc0, tr0, tr1
.Ltmp16:
	#DEBUG_VALUE: acc1 <- $acc0
	.loc	2 0 16 is_stmt 0                # test.c:0:16
	blt	a1, s0, .LBB0_3
.Ltmp17:
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=2
	#DEBUG_VALUE: matmul_batch1:tile_k <- $x13
	#DEBUG_VALUE: acc1 <- $acc0
	#DEBUG_VALUE: j <- $x25
	#DEBUG_VALUE: i <- $x20
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	.loc	2 47 30 is_stmt 1               # test.c:47:30
	addw	s9, s9, s10
.Ltmp18:
	#DEBUG_VALUE: j <- $x25
	.loc	2 66 7                          # test.c:66:7
	msce32.m	acc0, (a0), s7
.Ltmp19:
	.loc	2 47 5                          # test.c:47:5
	blt	s9, s0, .LBB0_2
.Ltmp20:
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	#DEBUG_VALUE: matmul_batch1:tile_k <- $x13
	#DEBUG_VALUE: i <- $x20
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	.loc	2 43 28                         # test.c:43:28
	addw	s4, s4, s6
.Ltmp21:
	#DEBUG_VALUE: i <- $x20
	.loc	2 0 28 is_stmt 0                # test.c:0:28
	blt	s4, s0, .LBB0_1
.Ltmp22:
# %bb.6:
	#DEBUG_VALUE: matmul_batch1:tile_k <- $x13
	#DEBUG_VALUE: i <- $x20
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	mv	a1, zero
	addi	a0, zero, 999
.Ltmp23:
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: matmul_batch1:tile_k <- $x13
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	#DEBUG_VALUE: i <- $x11
	.loc	2 15 36 is_stmt 1               # test.c:15:36
	sext.w	a2, a1
	addiw	a1, a1, 1
.Ltmp24:
	#DEBUG_VALUE: i <- $x11
	.loc	2 16 5                          # test.c:16:5
	#APP
	nop

	#NO_APP
.Ltmp25:
	.loc	2 15 3                          # test.c:15:3
	bltu	a2, a0, .LBB0_7
.Ltmp26:
# %bb.8:
	#DEBUG_VALUE: i <- $x11
	#DEBUG_VALUE: matmul_batch1:tile_k <- $x13
	#DEBUG_VALUE: matmul:A <- $x18
	#DEBUG_VALUE: matmul_batch1:A <- $x18
	#DEBUG_VALUE: matmul:B <- $x21
	#DEBUG_VALUE: matmul_batch1:B <- $x21
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: matmul_batch1:tile_n <- 0
	.loc	2 0 3 is_stmt 0                 # test.c:0:3
	mv	s2, zero
.Ltmp27:
	addi	s6, zero, 16
	addi	s4, zero, 64
.Ltmp28:
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	mv	s0, zero
.Ltmp29:
	#DEBUG_VALUE: i <- $x18
	.loc	2 73 26 is_stmt 1               # test.c:73:26
	subw	a0, s6, s2
	.loc	2 73 14 is_stmt 0               # test.c:73:14
	msettilem	s5, a0
	slliw	a0, s2, 4
	slli	a0, a0, 2
	add	s7, a0, s3
	#DEBUG_VALUE: j <- 0
.Ltmp30:
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: i <- $x18
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	#DEBUG_VALUE: j <- $x8
	.loc	2 76 28 is_stmt 1               # test.c:76:28
	subw	a0, s6, s0
	.loc	2 76 16 is_stmt 0               # test.c:76:16
	msettilen	s1, a0
.Ltmp31:
	#DEBUG_VALUE: matmul_batch1:tile_n <- $x9
	.loc	4 21 3 is_stmt 1                # include/matrix/matrix_intrinsic.h:21:3
	msettypei	a0, e32, int32
	msettypehi	a0, bu
.Ltmp32:
	.loc	4 27 3                          # include/matrix/matrix_intrinsic.h:27:3
	#APP
	#NO_APP
.Ltmp33:
	.loc	2 80 39                         # test.c:80:39
	sext.w	a0, s0
	slli	a0, a0, 2
	add	a0, a0, s7
	.loc	2 80 23 is_stmt 0               # test.c:80:23
	mlce32.m	acc0, (a0), s4
.Ltmp34:
	#DEBUG_VALUE: acc1 <- $acc0
	.loc	2 75 30 is_stmt 1               # test.c:75:30
	addw	s0, s0, s1
.Ltmp35:
	#DEBUG_VALUE: j <- $x8
	.loc	2 89 7                          # test.c:89:7
	msce32.m	acc0, (a0), s4
	blt	s0, s6, .LBB0_10
.Ltmp36:
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	#DEBUG_VALUE: matmul_batch1:tile_n <- $x9
	#DEBUG_VALUE: i <- $x18
	#DEBUG_VALUE: matmul:m <- 16
	#DEBUG_VALUE: matmul:n <- 16
	#DEBUG_VALUE: matmul:k <- 16
	#DEBUG_VALUE: matmul_batch1:m <- 16
	#DEBUG_VALUE: matmul_batch1:n <- 16
	#DEBUG_VALUE: matmul_batch1:k <- 16
	#DEBUG_VALUE: matmul_batch1:lda_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldb_bytes <- 16
	#DEBUG_VALUE: matmul_batch1:ldc_bytes <- 64
	#DEBUG_VALUE: matmul_batch1:dataSize <- 1
	#DEBUG_VALUE: matmul_batch1:tile_m <- 0
	.loc	2 72 30                         # test.c:72:30
	addw	s2, s2, s5
.Ltmp37:
	#DEBUG_VALUE: i <- $x18
	.loc	2 72 5 is_stmt 0                # test.c:72:5
	blt	s2, s6, .LBB0_9
.Ltmp38:
# %bb.12:
	.loc	2 138 5 is_stmt 1               # test.c:138:5
	mv	a0, zero
	ld	s10, 0(sp)                      # 8-byte Folded Reload
	ld	s9, 8(sp)                       # 8-byte Folded Reload
	ld	s8, 16(sp)                      # 8-byte Folded Reload
	ld	s7, 24(sp)                      # 8-byte Folded Reload
	ld	s6, 32(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Ltmp39:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.file	5 "/mnt/d/riscv-dnn" "include/riscv_matrix.h"
	.file	6 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include" "string.h"
                                        # -- End function
	.hidden	A                               # @A
	.type	A,@object
	.section	.matA,"aw",@progbits
	.globl	A
	.p2align	6
A:
	.zero	256
	.size	A, 256

	.type	A_i8,@object                    # @A_i8
	.section	.rodata,"a",@progbits
	.p2align	6
A_i8:
	.ascii	"d\371=\003(A\026s\230\210$\244\357R0r\362\277\257\317\360^\237\354\355\305\321S\272\301\306\350z$\254\f\202\225\235\207\262]\274@\034VB\t\031Q\314\324U\363\366I\231\237\255\315\214\237\360\364\002z\016\2425\342\351\347\245g$\264}\000w\303\226\205f@\027\217^\307|\377\371\374&\235\027{\265?\252v\243\227U9!\313W\n\307l\327\306r9\375\251\320\322\210x\331\353\222\004|\312\336\235\017\354\206\037\235\3644FP\334H\034\fE\205j\342\355B\212\3557 \007%_\211\365\362\336\244\217\274\365\225$\347E\245Z\203\267{\027}M?\302\241\330\371W\205\024\322\002\352,\035\002x{\026@\377\215\267\245d\013\216Q\202\221d.\266B\257I\031_C\261`\016<M9\333\032\260H\372!\224a\270\247Z\032*\223\\\215W<`3\317\223\370\251\036\211\306\262kE\201\340Vv%\231\300{8"
	.size	A_i8, 256

	.hidden	B                               # @B
	.type	B,@object
	.section	.matB,"aw",@progbits
	.globl	B
	.p2align	6
B:
	.zero	256
	.size	B, 256

	.type	B_i8,@object                    # @B_i8
	.section	.rodata,"a",@progbits
	.p2align	6
B_i8:
	.ascii	"C\351]UR\177\245\310\227\370\t\267\3401\270#.X\222N?z\242v\344eK\246\220\212\305\373\361\330\231e\005L\254\354\240\023\033\026\036d\205\206\004\375],\255\363\344k\tsSS\251\366\364b1\222\214)\266\304\003\276\366-\007D\245c\320\266#_\355T:\320\310\220\376E\253S\333\365\245\252W\245\"\340\352A@\321\260\210\3660\366>b\255\264\017\213\345w\0008\201\251\"Z\303\200\r\207\353\217\034'\233\325\335E\"\202D\374\341\323\206]9^\001C'\323\250`\356\350b7^\327\320\033!\356\225\243O\354\304[\327\364wi\013\t_\003\262sB\233\177R\223\336\276q\245\220\301\347\317\025\222ne\342\301\377k\344C`\254\2472\026F:\240p\241\252\340\271\221\001\353\210\372\350*A\022B\364\344\270\220\026\376\364\021V)2\2549o\022\235\335T\310\231\362Z\022\017\336!\245\022\234;\213#\264"
	.size	B_i8, 256

	.hidden	C                               # @C
	.type	C,@object
	.section	.matC,"aw",@progbits
	.globl	C
	.p2align	6
C:
	.zero	1024
	.size	C, 1024

	.type	C_i32,@object                   # @C_i32
	.section	.rodata,"a",@progbits
	.p2align	6
C_i32:
	.word	4294967242                      # 0xffffffca
	.word	24                              # 0x18
	.word	511                             # 0x1ff
	.word	901                             # 0x385
	.word	4294966365                      # 0xfffffc5d
	.word	4294966584                      # 0xfffffd38
	.word	646                             # 0x286
	.word	898                             # 0x382
	.word	4294966794                      # 0xfffffe0a
	.word	4294966919                      # 0xfffffe87
	.word	738                             # 0x2e2
	.word	4294967143                      # 0xffffff67
	.word	4294966842                      # 0xfffffe3a
	.word	656                             # 0x290
	.word	4294966810                      # 0xfffffe1a
	.word	4294967114                      # 0xffffff4a
	.word	288                             # 0x120
	.word	99                              # 0x63
	.word	4294966467                      # 0xfffffcc3
	.word	4294966351                      # 0xfffffc4f
	.word	732                             # 0x2dc
	.word	507                             # 0x1fb
	.word	676                             # 0x2a4
	.word	76                              # 0x4c
	.word	635                             # 0x27b
	.word	4294966955                      # 0xfffffeab
	.word	4294967201                      # 0xffffffa1
	.word	577                             # 0x241
	.word	4294966543                      # 0xfffffd0f
	.word	4294966902                      # 0xfffffe76
	.word	4294966544                      # 0xfffffd10
	.word	4294967203                      # 0xffffffa3
	.word	954                             # 0x3ba
	.word	4294966564                      # 0xfffffd24
	.word	4294967063                      # 0xffffff17
	.word	4294967102                      # 0xffffff3e
	.word	808                             # 0x328
	.word	4294966703                      # 0xfffffdaf
	.word	5                               # 0x5
	.word	4294966820                      # 0xfffffe24
	.word	4294966335                      # 0xfffffc3f
	.word	501                             # 0x1f5
	.word	4294966420                      # 0xfffffc94
	.word	4294966857                      # 0xfffffe49
	.word	4294967292                      # 0xfffffffc
	.word	4294967266                      # 0xffffffe2
	.word	4294966529                      # 0xfffffd01
	.word	962                             # 0x3c2
	.word	498                             # 0x1f2
	.word	924                             # 0x39c
	.word	4294966480                      # 0xfffffcd0
	.word	450                             # 0x1c2
	.word	4294966882                      # 0xfffffe62
	.word	82                              # 0x52
	.word	850                             # 0x352
	.word	4294966850                      # 0xfffffe42
	.word	452                             # 0x1c4
	.word	4294966617                      # 0xfffffd59
	.word	4294966941                      # 0xfffffe9d
	.word	940                             # 0x3ac
	.word	4294967138                      # 0xffffff62
	.word	32                              # 0x20
	.word	4294966882                      # 0xfffffe62
	.word	4294966527                      # 0xfffffcff
	.word	4294967145                      # 0xffffff69
	.word	247                             # 0xf7
	.word	4294967207                      # 0xffffffa7
	.word	554                             # 0x22a
	.word	4294967022                      # 0xfffffeee
	.word	226                             # 0xe2
	.word	546                             # 0x222
	.word	835                             # 0x343
	.word	4294967151                      # 0xffffff6f
	.word	4294966375                      # 0xfffffc67
	.word	437                             # 0x1b5
	.word	57                              # 0x39
	.word	745                             # 0x2e9
	.word	4294967215                      # 0xffffffaf
	.word	4294967032                      # 0xfffffef8
	.word	4294966420                      # 0xfffffc94
	.word	4294967210                      # 0xffffffaa
	.word	283                             # 0x11b
	.word	540                             # 0x21c
	.word	706                             # 0x2c2
	.word	4294966725                      # 0xfffffdc5
	.word	186                             # 0xba
	.word	609                             # 0x261
	.word	4294966816                      # 0xfffffe20
	.word	4294966985                      # 0xfffffec9
	.word	680                             # 0x2a8
	.word	163                             # 0xa3
	.word	19                              # 0x13
	.word	348                             # 0x15c
	.word	22                              # 0x16
	.word	962                             # 0x3c2
	.word	506                             # 0x1fa
	.word	4294966404                      # 0xfffffc84
	.word	4294966591                      # 0xfffffd3f
	.word	90                              # 0x5a
	.word	640                             # 0x280
	.word	4294966434                      # 0xfffffca2
	.word	367                             # 0x16f
	.word	519                             # 0x207
	.word	574                             # 0x23e
	.word	747                             # 0x2eb
	.word	4294966679                      # 0xfffffd97
	.word	111                             # 0x6f
	.word	605                             # 0x25d
	.word	4294967012                      # 0xfffffee4
	.word	4294966678                      # 0xfffffd96
	.word	4294967255                      # 0xffffffd7
	.word	4294966459                      # 0xfffffcbb
	.word	4294966736                      # 0xfffffdd0
	.word	711                             # 0x2c7
	.word	335                             # 0x14f
	.word	723                             # 0x2d3
	.word	680                             # 0x2a8
	.word	753                             # 0x2f1
	.word	4294966917                      # 0xfffffe85
	.word	4294967240                      # 0xffffffc8
	.word	235                             # 0xeb
	.word	4294966844                      # 0xfffffe3c
	.word	839                             # 0x347
	.word	4294966310                      # 0xfffffc26
	.word	677                             # 0x2a5
	.word	292                             # 0x124
	.word	4294966802                      # 0xfffffe12
	.word	440                             # 0x1b8
	.word	4294967122                      # 0xffffff52
	.word	671                             # 0x29f
	.word	997                             # 0x3e5
	.word	4294966860                      # 0xfffffe4c
	.word	4294967236                      # 0xffffffc4
	.word	4294966726                      # 0xfffffdc6
	.word	385                             # 0x181
	.word	279                             # 0x117
	.word	689                             # 0x2b1
	.word	610                             # 0x262
	.word	954                             # 0x3ba
	.word	928                             # 0x3a0
	.word	790                             # 0x316
	.word	4294966597                      # 0xfffffd45
	.word	4294966380                      # 0xfffffc6c
	.word	4294967260                      # 0xffffffdc
	.word	4294966986                      # 0xfffffeca
	.word	790                             # 0x316
	.word	594                             # 0x252
	.word	4294967141                      # 0xffffff65
	.word	151                             # 0x97
	.word	179                             # 0xb3
	.word	782                             # 0x30e
	.word	4294966345                      # 0xfffffc49
	.word	4294967275                      # 0xffffffeb
	.word	347                             # 0x15b
	.word	4294967202                      # 0xffffffa2
	.word	839                             # 0x347
	.word	902                             # 0x386
	.word	654                             # 0x28e
	.word	4294967225                      # 0xffffffb9
	.word	771                             # 0x303
	.word	4294966442                      # 0xfffffcaa
	.word	321                             # 0x141
	.word	4294966832                      # 0xfffffe30
	.word	4294966787                      # 0xfffffe03
	.word	359                             # 0x167
	.word	537                             # 0x219
	.word	777                             # 0x309
	.word	4294966719                      # 0xfffffdbf
	.word	744                             # 0x2e8
	.word	663                             # 0x297
	.word	4294966925                      # 0xfffffe8d
	.word	4294966421                      # 0xfffffc95
	.word	544                             # 0x220
	.word	651                             # 0x28b
	.word	4294967217                      # 0xffffffb1
	.word	4294966625                      # 0xfffffd61
	.word	4294966587                      # 0xfffffd3b
	.word	4294967046                      # 0xffffff06
	.word	515                             # 0x203
	.word	4294966929                      # 0xfffffe91
	.word	4294966359                      # 0xfffffc57
	.word	383                             # 0x17f
	.word	489                             # 0x1e9
	.word	4294966653                      # 0xfffffd7d
	.word	121                             # 0x79
	.word	4294967088                      # 0xffffff30
	.word	2                               # 0x2
	.word	4294966307                      # 0xfffffc23
	.word	269                             # 0x10d
	.word	4294966821                      # 0xfffffe25
	.word	109                             # 0x6d
	.word	4294967138                      # 0xffffff62
	.word	220                             # 0xdc
	.word	4294966507                      # 0xfffffceb
	.word	4294967024                      # 0xfffffef0
	.word	266                             # 0x10a
	.word	535                             # 0x217
	.word	4294967057                      # 0xffffff11
	.word	4294966345                      # 0xfffffc49
	.word	451                             # 0x1c3
	.word	9                               # 0x9
	.word	308                             # 0x134
	.word	4294966614                      # 0xfffffd56
	.word	4294967158                      # 0xffffff76
	.word	767                             # 0x2ff
	.word	735                             # 0x2df
	.word	4294966928                      # 0xfffffe90
	.word	264                             # 0x108
	.word	4294966464                      # 0xfffffcc0
	.word	621                             # 0x26d
	.word	4294966832                      # 0xfffffe30
	.word	4294966979                      # 0xfffffec3
	.word	932                             # 0x3a4
	.word	87                              # 0x57
	.word	749                             # 0x2ed
	.word	4294966688                      # 0xfffffda0
	.word	516                             # 0x204
	.word	993                             # 0x3e1
	.word	4294966450                      # 0xfffffcb2
	.word	4294966782                      # 0xfffffdfe
	.word	4294966589                      # 0xfffffd3d
	.word	4294966809                      # 0xfffffe19
	.word	4294966918                      # 0xfffffe86
	.word	4294966442                      # 0xfffffcaa
	.word	796                             # 0x31c
	.word	4294966811                      # 0xfffffe1b
	.word	843                             # 0x34b
	.word	527                             # 0x20f
	.word	4294966641                      # 0xfffffd71
	.word	396                             # 0x18c
	.word	547                             # 0x223
	.word	4294966553                      # 0xfffffd19
	.word	4294966555                      # 0xfffffd1b
	.word	4294967048                      # 0xffffff08
	.word	4294966433                      # 0xfffffca1
	.word	4294967138                      # 0xffffff62
	.word	4294967256                      # 0xffffffd8
	.word	330                             # 0x14a
	.word	144                             # 0x90
	.word	4294967208                      # 0xffffffa8
	.word	4294966736                      # 0xfffffdd0
	.word	173                             # 0xad
	.word	4294967206                      # 0xffffffa6
	.word	680                             # 0x2a8
	.word	398                             # 0x18e
	.word	453                             # 0x1c5
	.word	144                             # 0x90
	.word	4294967026                      # 0xfffffef2
	.word	4294966859                      # 0xfffffe4b
	.word	4294967193                      # 0xffffff99
	.word	144                             # 0x90
	.word	4294967031                      # 0xfffffef7
	.word	4294966588                      # 0xfffffd3c
	.word	4294966515                      # 0xfffffcf3
	.word	4294966383                      # 0xfffffc6f
	.word	4294966702                      # 0xfffffdae
	.size	C_i32, 1024

	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.half	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.quad	0
	.quad	0
.Ldebug_loc1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.half	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.half	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.quad	0
	.quad	0
.Ldebug_loc2:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.half	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.quad	0
	.quad	0
.Ldebug_loc3:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.half	1                               # Loc expr size
	.byte	101                             # DW_OP_reg21
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.half	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc5:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.half	1                               # Loc expr size
	.byte	98                              # DW_OP_reg18
	.quad	0
	.quad	0
.Ldebug_loc6:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.half	3                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	136                             # 136
	.byte	1                               # 
	.quad	0
	.quad	0
.Ldebug_loc7:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.half	3                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	128                             # 128
	.byte	1                               # 
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.half	3                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	129                             # 129
	.byte	1                               # 
	.quad	0
	.quad	0
.Ldebug_loc9:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.half	3                               # Loc expr size
	.byte	144                             # DW_OP_regx
	.byte	136                             # 136
	.byte	1                               # 
	.quad	0
	.quad	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
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
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
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
	.byte	14                              # DW_FORM_strp
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
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	47                              # DW_AT_upper_bound
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.ascii	"\227B"                         # DW_AT_GNU_all_call_sites
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
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
	.byte	21                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
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
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	23                              # DW_FORM_sec_offset
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	23                              # DW_FORM_sec_offset
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
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
	.byte	30                              # Abbreviation Code
	.ascii	"\211\202\001"                  # DW_TAG_GNU_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
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
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.half	4                               # DWARF version number
	.word	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x4f8 DW_TAG_compile_unit
	.word	.Linfo_string0                  # DW_AT_producer
	.half	12                              # DW_AT_language
	.word	.Linfo_string1                  # DW_AT_name
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.word	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x16 DW_TAG_variable
	.word	.Linfo_string3                  # DW_AT_name
	.word	64                              # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	64                              # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	A
	.byte	3                               # Abbrev [3] 0x40:0xd DW_TAG_array_type
	.word	77                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x45:0x7 DW_TAG_subrange_type
	.word	95                              # DW_AT_type
	.half	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4d:0xb DW_TAG_typedef
	.word	88                              # DW_AT_type
	.word	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x58:0x7 DW_TAG_base_type
	.word	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x5f:0x7 DW_TAG_base_type
	.word	.Linfo_string6                  # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x66:0x16 DW_TAG_variable
	.word	.Linfo_string7                  # DW_AT_name
	.word	64                              # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	64                              # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	B
	.byte	2                               # Abbrev [2] 0x7c:0x16 DW_TAG_variable
	.word	.Linfo_string8                  # DW_AT_name
	.word	146                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	64                              # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	C
	.byte	3                               # Abbrev [3] 0x92:0xd DW_TAG_array_type
	.word	159                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x97:0x7 DW_TAG_subrange_type
	.word	95                              # DW_AT_type
	.half	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x9f:0xb DW_TAG_typedef
	.word	170                             # DW_AT_type
	.word	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xaa:0x7 DW_TAG_base_type
	.word	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xb1:0x16 DW_TAG_variable
	.word	.Linfo_string11                 # DW_AT_name
	.word	199                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	64                              # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	A_i8
	.byte	3                               # Abbrev [3] 0xc7:0xd DW_TAG_array_type
	.word	212                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xcc:0x7 DW_TAG_subrange_type
	.word	95                              # DW_AT_type
	.half	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xd4:0x5 DW_TAG_const_type
	.word	77                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd9:0x16 DW_TAG_variable
	.word	.Linfo_string12                 # DW_AT_name
	.word	199                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	64                              # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	B_i8
	.byte	8                               # Abbrev [8] 0xef:0x16 DW_TAG_variable
	.word	.Linfo_string13                 # DW_AT_name
	.word	261                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	64                              # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	C_i32
	.byte	3                               # Abbrev [3] 0x105:0xd DW_TAG_array_type
	.word	274                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10a:0x7 DW_TAG_subrange_type
	.word	95                              # DW_AT_type
	.half	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x112:0x5 DW_TAG_const_type
	.word	159                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x117:0x10f DW_TAG_subprogram
	.word	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	170                             # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x123:0xb DW_TAG_formal_parameter
	.word	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.word	550                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x12e:0xb DW_TAG_formal_parameter
	.word	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.word	550                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x139:0xb DW_TAG_formal_parameter
	.word	.Linfo_string8                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.word	555                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x144:0xb DW_TAG_formal_parameter
	.word	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x14f:0xb DW_TAG_formal_parameter
	.word	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x15a:0xb DW_TAG_formal_parameter
	.word	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x165:0xb DW_TAG_variable
	.word	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x170:0xb DW_TAG_variable
	.word	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x17b:0xb DW_TAG_variable
	.word	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x186:0xb DW_TAG_variable
	.word	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.word	560                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x191:0xb DW_TAG_variable
	.word	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.word	560                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x19c:0xb DW_TAG_variable
	.word	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.word	560                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a7:0xb DW_TAG_variable
	.word	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.word	560                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1b2:0x4c DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1b3:0xb DW_TAG_variable
	.word	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1be:0x3f DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1bf:0xb DW_TAG_variable
	.word	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1ca:0x32 DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1cb:0xb DW_TAG_variable
	.word	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.word	565                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d6:0x25 DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1d7:0xb DW_TAG_variable
	.word	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1e2:0x18 DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1e3:0xb DW_TAG_variable
	.word	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.word	605                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ee:0xb DW_TAG_variable
	.word	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.word	605                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1fe:0x27 DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x1ff:0xb DW_TAG_variable
	.word	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x20a:0x1a DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x20b:0xb DW_TAG_variable
	.word	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x216:0xd DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x217:0xb DW_TAG_variable
	.word	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.word	565                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x226:0x5 DW_TAG_pointer_type
	.word	212                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x22b:0x5 DW_TAG_pointer_type
	.word	159                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x230:0x5 DW_TAG_const_type
	.word	170                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x235:0xb DW_TAG_typedef
	.word	576                             # DW_AT_type
	.word	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x240:0x9 DW_TAG_typedef
	.word	585                             # DW_AT_type
	.word	.Linfo_string28                 # DW_AT_name
	.byte	16                              # Abbrev [16] 0x249:0x14 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	170                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x24e:0xe DW_TAG_subrange_type
	.word	95                              # DW_AT_type
	.byte	8                               # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	52
	.byte	27
	.byte	64
	.byte	30
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x25d:0xb DW_TAG_typedef
	.word	616                             # DW_AT_type
	.word	.Linfo_string33                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x268:0x9 DW_TAG_typedef
	.word	625                             # DW_AT_type
	.word	.Linfo_string32                 # DW_AT_name
	.byte	16                              # Abbrev [16] 0x271:0x14 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	88                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0x276:0xe DW_TAG_subrange_type
	.word	95                              # DW_AT_type
	.byte	8                               # DW_AT_upper_bound
	.byte	146
	.ascii	"\2428"
	.byte	0
	.byte	49
	.byte	27
	.byte	64
	.byte	30
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x285:0x4f DW_TAG_subprogram
	.word	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	170                             # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x291:0xb DW_TAG_formal_parameter
	.word	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.word	550                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x29c:0xb DW_TAG_formal_parameter
	.word	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.word	550                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a7:0xb DW_TAG_formal_parameter
	.word	.Linfo_string8                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.word	555                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2b2:0xb DW_TAG_formal_parameter
	.word	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2bd:0xb DW_TAG_formal_parameter
	.word	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c8:0xb DW_TAG_formal_parameter
	.word	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.word	170                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x2d4:0x8 DW_TAG_subprogram
	.word	.Linfo_string36                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x2dc:0x21 DW_TAG_subprogram
	.word	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x2e4:0xb DW_TAG_formal_parameter
	.word	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.word	765                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ef:0xd DW_TAG_lexical_block
	.byte	12                              # Abbrev [12] 0x2f0:0xb DW_TAG_variable
	.word	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.word	765                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2fd:0x7 DW_TAG_base_type
	.word	.Linfo_string39                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x304:0x1d5 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_GNU_all_call_sites
	.word	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.word	170                             # DW_AT_type
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x31d:0x194 DW_TAG_inlined_subroutine
	.word	645                             # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.word	.Ltmp38-.Ltmp5                  # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	110                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x331:0x9 DW_TAG_formal_parameter
	.word	.Ldebug_loc5                    # DW_AT_location
	.word	657                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x33a:0x9 DW_TAG_formal_parameter
	.word	.Ldebug_loc3                    # DW_AT_location
	.word	668                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x343:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	690                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x349:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	701                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x34f:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	712                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x355:0x15b DW_TAG_inlined_subroutine
	.word	279                             # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.word	.Ltmp38-.Ltmp5                  # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	99                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x369:0x9 DW_TAG_formal_parameter
	.word	.Ldebug_loc4                    # DW_AT_location
	.word	291                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x372:0x9 DW_TAG_formal_parameter
	.word	.Ldebug_loc2                    # DW_AT_location
	.word	302                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x37b:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	324                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x381:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	335                             # DW_AT_abstract_origin
	.byte	23                              # Abbrev [23] 0x387:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_const_value
	.word	346                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x38d:0x9 DW_TAG_variable
	.word	.Ldebug_loc0                    # DW_AT_location
	.word	357                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x396:0x9 DW_TAG_variable
	.word	.Ldebug_loc1                    # DW_AT_location
	.word	368                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x39f:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.word	379                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x3a5:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_const_value
	.word	390                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x3ab:0x7 DW_TAG_variable
	.asciz	"\300"                          # DW_AT_const_value
	.word	401                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x3b2:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_const_value
	.word	412                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x3b8:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_const_value
	.word	423                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x3be:0x7a DW_TAG_lexical_block
	.quad	.Ltmp5                          # DW_AT_low_pc
	.word	.Ltmp22-.Ltmp5                  # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x3cb:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	100
	.word	435                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x3d2:0x65 DW_TAG_lexical_block
	.quad	.Ltmp6                          # DW_AT_low_pc
	.word	.Ltmp20-.Ltmp6                  # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x3df:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	105
	.word	447                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x3e6:0x50 DW_TAG_lexical_block
	.word	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	24                              # Abbrev [24] 0x3eb:0x9 DW_TAG_variable
	.word	.Ldebug_loc6                    # DW_AT_location
	.word	459                             # DW_AT_abstract_origin
	.byte	29                              # Abbrev [29] 0x3f4:0x14 DW_TAG_inlined_subroutine
	.word	724                             # DW_AT_abstract_origin
	.quad	.Ltmp7                          # DW_AT_low_pc
	.word	.Ltmp9-.Ltmp7                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x408:0x2d DW_TAG_lexical_block
	.quad	.Ltmp11                         # DW_AT_low_pc
	.word	.Ltmp17-.Ltmp11                 # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x415:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	91
	.word	471                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x41c:0x18 DW_TAG_lexical_block
	.word	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	24                              # Abbrev [24] 0x421:0x9 DW_TAG_variable
	.word	.Ldebug_loc7                    # DW_AT_location
	.word	483                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x42a:0x9 DW_TAG_variable
	.word	.Ldebug_loc8                    # DW_AT_location
	.word	494                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x438:0x2a DW_TAG_inlined_subroutine
	.word	732                             # DW_AT_abstract_origin
	.quad	.Ltmp23                         # DW_AT_low_pc
	.word	.Ltmp26-.Ltmp23                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	71                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x44c:0x15 DW_TAG_lexical_block
	.quad	.Ltmp23                         # DW_AT_low_pc
	.word	.Ltmp26-.Ltmp23                 # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x459:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	91
	.word	752                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x462:0x4d DW_TAG_lexical_block
	.quad	.Ltmp29                         # DW_AT_low_pc
	.word	.Ltmp38-.Ltmp29                 # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x46f:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	98
	.word	511                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x476:0x38 DW_TAG_lexical_block
	.quad	.Ltmp30                         # DW_AT_low_pc
	.word	.Ltmp36-.Ltmp30                 # DW_AT_high_pc
	.byte	27                              # Abbrev [27] 0x483:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	88
	.word	523                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x48a:0x23 DW_TAG_lexical_block
	.word	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	24                              # Abbrev [24] 0x48f:0x9 DW_TAG_variable
	.word	.Ldebug_loc9                    # DW_AT_location
	.word	535                             # DW_AT_abstract_origin
	.byte	29                              # Abbrev [29] 0x498:0x14 DW_TAG_inlined_subroutine
	.word	724                             # DW_AT_abstract_origin
	.quad	.Ltmp31                         # DW_AT_low_pc
	.word	.Ltmp33-.Ltmp31                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	77                              # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x4b1:0xd DW_TAG_GNU_call_site
	.word	1241                            # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.byte	30                              # Abbrev [30] 0x4be:0xd DW_TAG_GNU_call_site
	.word	1241                            # DW_AT_abstract_origin
	.quad	.Ltmp2                          # DW_AT_low_pc
	.byte	30                              # Abbrev [30] 0x4cb:0xd DW_TAG_GNU_call_site
	.word	1241                            # DW_AT_abstract_origin
	.quad	.Ltmp3                          # DW_AT_low_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x4d9:0x1b DW_TAG_subprogram
	.word	.Linfo_string40                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	1268                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	32                              # Abbrev [32] 0x4e4:0x5 DW_TAG_formal_parameter
	.word	1268                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4e9:0x5 DW_TAG_formal_parameter
	.word	1269                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4ee:0x5 DW_TAG_formal_parameter
	.word	1275                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x4f4:0x1 DW_TAG_pointer_type
	.byte	14                              # Abbrev [14] 0x4f5:0x5 DW_TAG_pointer_type
	.word	1274                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4fa:0x1 DW_TAG_const_type
	.byte	6                               # Abbrev [6] 0x4fb:0x7 DW_TAG_base_type
	.word	.Linfo_string41                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.0 (git@github.com:riscv-stc/llvm-project.git 70d1e5ec4b9a3dcaf4e8731c83333c5f98618e27)" # string offset=0
.Linfo_string1:
	.asciz	"test.c"                        # string offset=106
.Linfo_string2:
	.asciz	"/mnt/d/riscv-dnn/test/ops/matmul_reuse" # string offset=113
.Linfo_string3:
	.asciz	"A"                             # string offset=152
.Linfo_string4:
	.asciz	"signed char"                   # string offset=154
.Linfo_string5:
	.asciz	"int8_t"                        # string offset=166
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=173
.Linfo_string7:
	.asciz	"B"                             # string offset=193
.Linfo_string8:
	.asciz	"C"                             # string offset=195
.Linfo_string9:
	.asciz	"int"                           # string offset=197
.Linfo_string10:
	.asciz	"int32_t"                       # string offset=201
.Linfo_string11:
	.asciz	"A_i8"                          # string offset=209
.Linfo_string12:
	.asciz	"B_i8"                          # string offset=214
.Linfo_string13:
	.asciz	"C_i32"                         # string offset=219
.Linfo_string14:
	.asciz	"matmul_batch1"                 # string offset=225
.Linfo_string15:
	.asciz	"m"                             # string offset=239
.Linfo_string16:
	.asciz	"n"                             # string offset=241
.Linfo_string17:
	.asciz	"k"                             # string offset=243
.Linfo_string18:
	.asciz	"tile_k"                        # string offset=245
.Linfo_string19:
	.asciz	"tile_n"                        # string offset=252
.Linfo_string20:
	.asciz	"tile_m"                        # string offset=259
.Linfo_string21:
	.asciz	"dataSize"                      # string offset=266
.Linfo_string22:
	.asciz	"ldc_bytes"                     # string offset=275
.Linfo_string23:
	.asciz	"ldb_bytes"                     # string offset=285
.Linfo_string24:
	.asciz	"lda_bytes"                     # string offset=295
.Linfo_string25:
	.asciz	"i"                             # string offset=305
.Linfo_string26:
	.asciz	"j"                             # string offset=307
.Linfo_string27:
	.asciz	"acc1"                          # string offset=309
.Linfo_string28:
	.asciz	"__rvv_int32m16_t"              # string offset=314
.Linfo_string29:
	.asciz	"mint32_t"                      # string offset=331
.Linfo_string30:
	.asciz	"kk"                            # string offset=340
.Linfo_string31:
	.asciz	"tr0"                           # string offset=343
.Linfo_string32:
	.asciz	"__rvv_int8m16_t"               # string offset=347
.Linfo_string33:
	.asciz	"mint8_t"                       # string offset=363
.Linfo_string34:
	.asciz	"tr1"                           # string offset=371
.Linfo_string35:
	.asciz	"matmul"                        # string offset=375
.Linfo_string36:
	.asciz	"SET_MBA0_I32"                  # string offset=382
.Linfo_string37:
	.asciz	"debug_delay_cycles"            # string offset=395
.Linfo_string38:
	.asciz	"cycles"                        # string offset=414
.Linfo_string39:
	.asciz	"unsigned int"                  # string offset=421
.Linfo_string40:
	.asciz	"memcpy"                        # string offset=434
.Linfo_string41:
	.asciz	"long unsigned int"             # string offset=441
.Linfo_string42:
	.asciz	"main"                          # string offset=459
	.ident	"clang version 14.0.0 (git@github.com:riscv-stc/llvm-project.git 70d1e5ec4b9a3dcaf4e8731c83333c5f98618e27)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym A
	.addrsig_sym A_i8
	.addrsig_sym B
	.addrsig_sym B_i8
	.addrsig_sym C
	.addrsig_sym C_i32
	.section	.debug_line,"",@progbits
.Lline_table_start0:
