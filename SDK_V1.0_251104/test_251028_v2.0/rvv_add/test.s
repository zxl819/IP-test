	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfh1p0_zfhmin1p0_zca1p0_zcd1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"test.c"
	.file	0 "/mnt/d/riscv-dnn/test/comb_inst/RVV_add" "test.c" md5 0x8ea34313dbacb929d98824828aea48c0
	.file	1 "/home/xl2025/opt/riscv/riscv64-unknown-elf/include/machine" "_default_types.h" md5 0xf7024d0682a918b41f94e8be9cd90461
	.file	2 "." "uart.c" md5 0xeb53b0e97dbae1c08380e9b8909e1d25
	.text
	.hidden	write_reg_u8                    # -- Begin function write_reg_u8
	.globl	write_reg_u8
	.p2align	1
	.type	write_reg_u8,@function
write_reg_u8:                           # @write_reg_u8
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: write_reg_u8:addr <- $x10
	#DEBUG_VALUE: write_reg_u8:value <- $x11
	#DEBUG_VALUE: write_reg_u8:loc_addr <- $x10
	.loc	2 10 15 prologue_end            # ./uart.c:10:15
	sb	a1, 0(a0)
	.loc	2 11 1                          # ./uart.c:11:1
	ret
.Ltmp0:
.Lfunc_end0:
	.size	write_reg_u8, .Lfunc_end0-write_reg_u8
	.cfi_endproc
                                        # -- End function
	.hidden	read_reg_u8                     # -- Begin function read_reg_u8
	.globl	read_reg_u8
	.p2align	1
	.type	read_reg_u8,@function
read_reg_u8:                            # @read_reg_u8
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: read_reg_u8:addr <- $x10
	.loc	2 15 12 prologue_end            # ./uart.c:15:12
	lbu	a0, 0(a0)
.Ltmp1:
	.loc	2 15 5 is_stmt 0                # ./uart.c:15:5
	ret
.Ltmp2:
.Lfunc_end1:
	.size	read_reg_u8, .Lfunc_end1-read_reg_u8
	.cfi_endproc
                                        # -- End function
	.hidden	is_transmit_empty               # -- Begin function is_transmit_empty
	.globl	is_transmit_empty
	.p2align	1
	.type	is_transmit_empty,@function
is_transmit_empty:                      # @is_transmit_empty
.Lfunc_begin2:
	.loc	2 19 0 is_stmt 1                # ./uart.c:19:0
	.cfi_startproc
# %bb.0:
	lui	a0, 65536
.Ltmp3:
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 prologue_end            # ./uart.c:15:12 @[ ./uart.c:20:12 ]
	lbu	a0, 20(a0)
.Ltmp4:
	.loc	2 20 5                          # ./uart.c:20:5
	andi	a0, a0, 32
	ret
.Ltmp5:
.Lfunc_end2:
	.size	is_transmit_empty, .Lfunc_end2-is_transmit_empty
	.cfi_endproc
	.file	3 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "stdint.h" md5 0xa47a6a6c7fcbc62776237de6abac9549
                                        # -- End function
	.hidden	is_transmit_empty_altera        # -- Begin function is_transmit_empty_altera
	.globl	is_transmit_empty_altera
	.p2align	1
	.type	is_transmit_empty_altera,@function
is_transmit_empty_altera:               # @is_transmit_empty_altera
.Lfunc_begin3:
	.loc	2 24 0                          # ./uart.c:24:0
	.cfi_startproc
# %bb.0:
	lui	a0, 65536
.Ltmp6:
	#DEBUG_VALUE: read_reg_u8:addr <- 268435463
	.loc	2 15 12 prologue_end            # ./uart.c:15:12 @[ ./uart.c:25:14 ]
	lbu	zero, 7(a0)
.Ltmp7:
	#DEBUG_VALUE: read_reg_u8:addr <- 268435462
	.loc	2 15 12 is_stmt 0               # ./uart.c:15:12 @[ ./uart.c:25:47 ]
	lbu	a0, 6(a0)
.Ltmp8:
	.loc	2 25 5 is_stmt 1                # ./uart.c:25:5
	ret
.Ltmp9:
.Lfunc_end3:
	.size	is_transmit_empty_altera, .Lfunc_end3-is_transmit_empty_altera
	.cfi_endproc
                                        # -- End function
	.hidden	is_receive_empty                # -- Begin function is_receive_empty
	.globl	is_receive_empty
	.p2align	1
	.type	is_receive_empty,@function
is_receive_empty:                       # @is_receive_empty
.Lfunc_begin4:
	.loc	2 29 0                          # ./uart.c:29:0
	.cfi_startproc
# %bb.0:
	lui	a0, 65536
.Ltmp10:
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 prologue_end            # ./uart.c:15:12 @[ ./uart.c:31:18 ]
	lbu	a0, 20(a0)
	not	a0, a0
.Ltmp11:
	.loc	2 31 16                         # ./uart.c:31:16
	andi	a0, a0, 1
	.loc	2 31 9 is_stmt 0                # ./uart.c:31:9
	ret
.Ltmp12:
.Lfunc_end4:
	.size	is_receive_empty, .Lfunc_end4-is_receive_empty
	.cfi_endproc
                                        # -- End function
	.hidden	write_serial                    # -- Begin function write_serial
	.globl	write_serial
	.p2align	1
	.type	write_serial,@function
write_serial:                           # @write_serial
.Lfunc_begin5:
	.loc	2 38 0 is_stmt 1                # ./uart.c:38:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: write_serial:a <- $x10
	lui	a1, 65536
.Ltmp13:
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: write_serial:a <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 prologue_end            # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 ] ]
	lbu	a2, 20(a1)
.Ltmp14:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 ]
	andi	a2, a2, 32
.Ltmp15:
	.loc	2 40 9                          # ./uart.c:40:9
	beqz	a2, .LBB5_1
.Ltmp16:
# %bb.2:
	#DEBUG_VALUE: write_serial:a <- $x10
	.loc	2 0 9 is_stmt 0                 # ./uart.c:0:9
	lui	a1, 65536
.Ltmp17:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x10
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15 is_stmt 1               # ./uart.c:10:15 @[ ./uart.c:44:5 ]
	sb	a0, 0(a1)
.Ltmp18:
	.loc	2 45 1                          # ./uart.c:45:1
	ret
.Ltmp19:
.Lfunc_end5:
	.size	write_serial, .Lfunc_end5-write_serial
	.cfi_endproc
                                        # -- End function
	.hidden	read_serial                     # -- Begin function read_serial
	.globl	read_serial
	.p2align	1
	.type	read_serial,@function
read_serial:                            # @read_serial
.Lfunc_begin6:
	.loc	2 48 0                          # ./uart.c:48:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: read_serial:res <- $x10
	lui	a1, 65536
.Ltmp20:
	.loc	2 15 12 prologue_end            # ./uart.c:15:12 @[ ./uart.c:31:18 @[ ./uart.c:49:8 ] ]
	lbu	a2, 20(a1)
.Ltmp21:
	.loc	2 31 48 is_stmt 0               # ./uart.c:31:48 @[ ./uart.c:49:8 ]
	andi	a2, a2, 1
.Ltmp22:
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 49 8 is_stmt 1                # ./uart.c:49:8
	bnez	a2, .LBB6_2
.Ltmp23:
# %bb.1:
	#DEBUG_VALUE: read_serial:res <- $x10
	.loc	2 0 8 is_stmt 0                 # ./uart.c:0:8
	li	a0, 0
.Ltmp24:
	.loc	2 55 1 is_stmt 1                # ./uart.c:55:1
	ret
.LBB6_2:
.Ltmp25:
	#DEBUG_VALUE: read_serial:res <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435456
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:53:12 ]
	lbu	a1, 0(a1)
.Ltmp26:
	.loc	2 53 10                         # ./uart.c:53:10
	sb	a1, 0(a0)
	li	a0, 1
.Ltmp27:
	.loc	2 55 1                          # ./uart.c:55:1
	ret
.Ltmp28:
.Lfunc_end6:
	.size	read_serial, .Lfunc_end6-read_serial
	.cfi_endproc
                                        # -- End function
	.hidden	init_uart                       # -- Begin function init_uart
	.globl	init_uart
	.p2align	1
	.type	init_uart,@function
init_uart:                              # @init_uart
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: init_uart:freq <- $x10
	#DEBUG_VALUE: init_uart:baud <- $x11
	.loc	2 59 37 prologue_end            # ./uart.c:59:37
	slli	a1, a1, 4
.Ltmp29:
	.loc	2 59 29 is_stmt 0               # ./uart.c:59:29
	divuw	a0, a0, a1
.Ltmp30:
	#DEBUG_VALUE: init_uart:divisor <- $x10
	.loc	2 0 29                          # ./uart.c:0:29
	lui	a1, 65536
	li	a2, 128
.Ltmp31:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435460
	#DEBUG_VALUE: write_reg_u8:value <- 0
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435460
	.loc	2 10 15 is_stmt 1               # ./uart.c:10:15 @[ ./uart.c:61:5 ]
	sb	zero, 4(a1)
.Ltmp32:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435468
	#DEBUG_VALUE: write_reg_u8:value <- -128
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435468
	.loc	2 10 15 is_stmt 0               # ./uart.c:10:15 @[ ./uart.c:62:5 ]
	sb	a2, 12(a1)
	li	a2, 3
.Ltmp33:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x10
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:63:5 ]
	sb	a0, 0(a1)
.Ltmp34:
	.loc	2 64 42                         # ./uart.c:64:42
	srli	a0, a0, 8
.Ltmp35:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435460
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435460
	#DEBUG_VALUE: write_reg_u8:value <- $x10
	.loc	2 10 15 is_stmt 1               # ./uart.c:10:15 @[ ./uart.c:64:5 ]
	sb	a0, 4(a1)
	li	a0, 199
.Ltmp36:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435468
	#DEBUG_VALUE: write_reg_u8:value <- 3
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435468
	.loc	2 10 15 is_stmt 0               # ./uart.c:10:15 @[ ./uart.c:65:5 ]
	sb	a2, 12(a1)
	li	a2, 32
.Ltmp37:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435464
	#DEBUG_VALUE: write_reg_u8:value <- -57
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435464
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:66:5 ]
	sb	a0, 8(a1)
.Ltmp38:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435472
	#DEBUG_VALUE: write_reg_u8:value <- 32
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435472
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:67:5 ]
	sb	a2, 16(a1)
.Ltmp39:
	.loc	2 68 1 is_stmt 1                # ./uart.c:68:1
	ret
.Ltmp40:
.Lfunc_end7:
	.size	init_uart, .Lfunc_end7-init_uart
	.cfi_endproc
                                        # -- End function
	.hidden	print_uart                      # -- Begin function print_uart
	.globl	print_uart
	.p2align	1
	.type	print_uart,@function
print_uart:                             # @print_uart
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: print_uart:str <- $x10
	#DEBUG_VALUE: print_uart:cur <- $x10
	.loc	2 73 12 prologue_end            # ./uart.c:73:12
	lbu	a1, 0(a0)
	.loc	2 73 5 is_stmt 0                # ./uart.c:73:5
	beqz	a1, .LBB8_4
.Ltmp41:
# %bb.1:
	#DEBUG_VALUE: print_uart:cur <- $x10
	#DEBUG_VALUE: print_uart:str <- $x10
	.loc	2 0 5                           # ./uart.c:0:5
	lui	a2, 65536
	#DEBUG_VALUE: print_uart:cur <- $x10
.Ltmp42:
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: print_uart:cur <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:75:9 ] ] ]
	lbu	a3, 20(a2)
.Ltmp43:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:75:9 ] ]
	andi	a3, a3, 32
.Ltmp44:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:75:9 ]
	beqz	a3, .LBB8_2
.Ltmp45:
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	#DEBUG_VALUE: print_uart:cur <- $x10
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x11
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:75:9 ] ]
	sb	a1, 0(a2)
.Ltmp46:
	.loc	2 73 12 is_stmt 0               # ./uart.c:73:12
	lbu	a1, 1(a0)
.Ltmp47:
	.loc	2 76 9 is_stmt 1                # ./uart.c:76:9
	addi	a0, a0, 1
.Ltmp48:
	#DEBUG_VALUE: print_uart:cur <- $x10
	.loc	2 73 5                          # ./uart.c:73:5
	bnez	a1, .LBB8_2
.Ltmp49:
.LBB8_4:
	#DEBUG_VALUE: print_uart:cur <- $x10
	.loc	2 78 1                          # ./uart.c:78:1
	ret
.Ltmp50:
.Lfunc_end8:
	.size	print_uart, .Lfunc_end8-print_uart
	.cfi_endproc
                                        # -- End function
	.hidden	bin_to_hex                      # -- Begin function bin_to_hex
	.globl	bin_to_hex
	.p2align	1
	.type	bin_to_hex,@function
bin_to_hex:                             # @bin_to_hex
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: bin_to_hex:inp <- $x10
	#DEBUG_VALUE: bin_to_hex:res <- $x11
	.loc	2 85 14 prologue_end            # ./uart.c:85:14
	andi	a2, a0, 15
.Lpcrel_hi0:
	auipc	a3, %pcrel_hi(bin_to_hex_table)
	addi	a3, a3, %pcrel_lo(.Lpcrel_hi0)
	add	a2, a2, a3
	lbu	a2, 0(a2)
	.loc	2 86 14 is_stmt 0               # ./uart.c:86:14
	srli	a0, a0, 4
.Ltmp51:
	.loc	2 85 12 is_stmt 1               # ./uart.c:85:12
	sb	a2, 1(a1)
	.loc	2 86 14                         # ./uart.c:86:14
	add	a0, a0, a3
	lbu	a0, 0(a0)
	.loc	2 86 12 is_stmt 0               # ./uart.c:86:12
	sb	a0, 0(a1)
	.loc	2 87 5 is_stmt 1                # ./uart.c:87:5
	ret
.Ltmp52:
.Lfunc_end9:
	.size	bin_to_hex, .Lfunc_end9-bin_to_hex
	.cfi_endproc
                                        # -- End function
	.hidden	print_uart_int                  # -- Begin function print_uart_int
	.globl	print_uart_int
	.p2align	1
	.type	print_uart_int,@function
print_uart_int:                         # @print_uart_int
.Lfunc_begin10:
	.loc	2 91 0                          # ./uart.c:91:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	li	a4, 3
	lui	a1, 65536
.Ltmp53:
	#DEBUG_VALUE: print_uart_int:i <- 3
.Lpcrel_hi1:
	auipc	a2, %pcrel_hi(bin_to_hex_table)
	addi	a6, a2, %pcrel_lo(.Lpcrel_hi1)
.Ltmp54:
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
                                        #     Child Loop BB10_4 Depth 2
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	mv	a3, a4
.Ltmp55:
	#DEBUG_VALUE: print_uart_int:i <- $x13
	.loc	2 95 35 prologue_end            # ./uart.c:95:35
	slli	a4, a4, 3
	.loc	2 95 29 is_stmt 0               # ./uart.c:95:29
	srlw	a4, a0, a4
.Ltmp56:
	#DEBUG_VALUE: cur <- $x14
	#DEBUG_VALUE: bin_to_hex:inp <- $x14
	#DEBUG_VALUE: bin_to_hex:res <- undef
	.loc	2 85 35                         # ./uart.c:85:35 @[ ./uart.c:97:9 ]
	andi	a5, a4, 15
	.loc	2 86 36                         # ./uart.c:86:36 @[ ./uart.c:97:9 ]
	slli	a4, a4, 56
.Ltmp57:
	.loc	2 85 14                         # ./uart.c:85:14 @[ ./uart.c:97:9 ]
	add	a5, a5, a6
	.loc	2 86 36                         # ./uart.c:86:36 @[ ./uart.c:97:9 ]
	srli	a4, a4, 60
	.loc	2 86 14                         # ./uart.c:86:14 @[ ./uart.c:97:9 ]
	add	a2, a6, a4
	.loc	2 85 14 is_stmt 1               # ./uart.c:85:14 @[ ./uart.c:97:9 ]
	lbu	a4, 0(a5)
.Ltmp58:
	#DEBUG_VALUE: hex <- [DW_OP_LLVM_fragment 8 8] undef
	.loc	2 86 14                         # ./uart.c:86:14 @[ ./uart.c:97:9 ]
	lbu	a5, 0(a2)
.Ltmp59:
	#DEBUG_VALUE: hex <- [DW_OP_LLVM_fragment 0 8] undef
	#DEBUG_VALUE: write_serial:a <- undef
.LBB10_2:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: print_uart_int:i <- $x13
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:98:9 ] ] ]
	lbu	a2, 20(a1)
.Ltmp60:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:98:9 ] ]
	andi	a2, a2, 32
.Ltmp61:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:98:9 ]
	beqz	a2, .LBB10_2
.Ltmp62:
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	#DEBUG_VALUE: print_uart_int:i <- $x13
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x15
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:98:9 ] ]
	sb	a5, 0(a1)
.Ltmp63:
	#DEBUG_VALUE: write_serial:a <- $x14
.LBB10_4:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: write_serial:a <- $x14
	#DEBUG_VALUE: print_uart_int:i <- $x13
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:99:9 ] ] ]
	lbu	a2, 20(a1)
.Ltmp64:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:99:9 ] ]
	andi	a2, a2, 32
.Ltmp65:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:99:9 ]
	beqz	a2, .LBB10_4
.Ltmp66:
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	#DEBUG_VALUE: write_serial:a <- $x14
	#DEBUG_VALUE: print_uart_int:i <- $x13
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x14
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:99:9 ] ]
	sb	a4, 0(a1)
.Ltmp67:
	.loc	2 93 26                         # ./uart.c:93:26
	addiw	a4, a3, -1
.Ltmp68:
	#DEBUG_VALUE: print_uart_int:i <- $x14
	.loc	2 93 5                          # ./uart.c:93:5
	bnez	a3, .LBB10_1
.Ltmp69:
# %bb.6:
	#DEBUG_VALUE: print_uart_int:i <- $x14
	#DEBUG_VALUE: print_uart_int:addr <- $x10
	.loc	2 101 1                         # ./uart.c:101:1
	ret
.Ltmp70:
.Lfunc_end10:
	.size	print_uart_int, .Lfunc_end10-print_uart_int
	.cfi_endproc
                                        # -- End function
	.hidden	print_uart_addr                 # -- Begin function print_uart_addr
	.globl	print_uart_addr
	.p2align	1
	.type	print_uart_addr,@function
print_uart_addr:                        # @print_uart_addr
.Lfunc_begin11:
	.loc	2 104 0                         # ./uart.c:104:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	li	a4, 7
	lui	a1, 65536
.Ltmp71:
	#DEBUG_VALUE: print_uart_addr:i <- 7
.Lpcrel_hi2:
	auipc	a2, %pcrel_hi(bin_to_hex_table)
	addi	a6, a2, %pcrel_lo(.Lpcrel_hi2)
.Ltmp72:
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_2 Depth 2
                                        #     Child Loop BB11_4 Depth 2
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	mv	a3, a4
.Ltmp73:
	#DEBUG_VALUE: print_uart_addr:i <- $x13
	.loc	2 108 35 prologue_end           # ./uart.c:108:35
	slli	a4, a4, 3
	.loc	2 108 29 is_stmt 0              # ./uart.c:108:29
	srl	a4, a0, a4
.Ltmp74:
	#DEBUG_VALUE: cur <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x14
	#DEBUG_VALUE: bin_to_hex:inp <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x14
	#DEBUG_VALUE: bin_to_hex:res <- undef
	.loc	2 85 35                         # ./uart.c:85:35 @[ ./uart.c:110:9 ]
	andi	a5, a4, 15
	.loc	2 86 36                         # ./uart.c:86:36 @[ ./uart.c:110:9 ]
	slli	a4, a4, 56
.Ltmp75:
	.loc	2 85 14                         # ./uart.c:85:14 @[ ./uart.c:110:9 ]
	add	a5, a5, a6
	.loc	2 86 36                         # ./uart.c:86:36 @[ ./uart.c:110:9 ]
	srli	a4, a4, 60
	.loc	2 86 14                         # ./uart.c:86:14 @[ ./uart.c:110:9 ]
	add	a2, a6, a4
	.loc	2 85 14 is_stmt 1               # ./uart.c:85:14 @[ ./uart.c:110:9 ]
	lbu	a4, 0(a5)
.Ltmp76:
	#DEBUG_VALUE: hex <- [DW_OP_LLVM_fragment 8 8] undef
	.loc	2 86 14                         # ./uart.c:86:14 @[ ./uart.c:110:9 ]
	lbu	a5, 0(a2)
.Ltmp77:
	#DEBUG_VALUE: hex <- [DW_OP_LLVM_fragment 0 8] undef
	#DEBUG_VALUE: write_serial:a <- undef
.LBB11_2:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: print_uart_addr:i <- $x13
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:111:9 ] ] ]
	lbu	a2, 20(a1)
.Ltmp78:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:111:9 ] ]
	andi	a2, a2, 32
.Ltmp79:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:111:9 ]
	beqz	a2, .LBB11_2
.Ltmp80:
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	#DEBUG_VALUE: print_uart_addr:i <- $x13
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x15
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:111:9 ] ]
	sb	a5, 0(a1)
.Ltmp81:
	#DEBUG_VALUE: write_serial:a <- $x14
.LBB11_4:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: write_serial:a <- $x14
	#DEBUG_VALUE: print_uart_addr:i <- $x13
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:112:9 ] ] ]
	lbu	a2, 20(a1)
.Ltmp82:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:112:9 ] ]
	andi	a2, a2, 32
.Ltmp83:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:112:9 ]
	beqz	a2, .LBB11_4
.Ltmp84:
# %bb.5:                                #   in Loop: Header=BB11_1 Depth=1
	#DEBUG_VALUE: write_serial:a <- $x14
	#DEBUG_VALUE: print_uart_addr:i <- $x13
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x14
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:112:9 ] ]
	sb	a4, 0(a1)
.Ltmp85:
	.loc	2 106 26                        # ./uart.c:106:26
	addi	a4, a3, -1
.Ltmp86:
	#DEBUG_VALUE: print_uart_addr:i <- $x14
	.loc	2 106 5                         # ./uart.c:106:5
	bnez	a3, .LBB11_1
.Ltmp87:
# %bb.6:
	#DEBUG_VALUE: print_uart_addr:i <- $x14
	#DEBUG_VALUE: print_uart_addr:addr <- $x10
	.loc	2 114 1                         # ./uart.c:114:1
	ret
.Ltmp88:
.Lfunc_end11:
	.size	print_uart_addr, .Lfunc_end11-print_uart_addr
	.cfi_endproc
                                        # -- End function
	.hidden	print_uart_byte                 # -- Begin function print_uart_byte
	.globl	print_uart_byte
	.p2align	1
	.type	print_uart_byte,@function
print_uart_byte:                        # @print_uart_byte
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: print_uart_byte:byte <- $x10
	#DEBUG_VALUE: bin_to_hex:inp <- $x10
	.loc	2 85 14 prologue_end            # ./uart.c:85:14 @[ ./uart.c:119:5 ]
	andi	a1, a0, 15
.Lpcrel_hi3:
	auipc	a2, %pcrel_hi(bin_to_hex_table)
	.loc	2 86 14 is_stmt 0               # ./uart.c:86:14 @[ ./uart.c:119:5 ]
	srli	a0, a0, 4
.Ltmp89:
	.loc	2 85 14                         # ./uart.c:85:14 @[ ./uart.c:119:5 ]
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi3)
	add	a1, a1, a2
	.loc	2 86 14                         # ./uart.c:86:14 @[ ./uart.c:119:5 ]
	add	a2, a2, a0
	.loc	2 85 14 is_stmt 1               # ./uart.c:85:14 @[ ./uart.c:119:5 ]
	lbu	a0, 0(a1)
.Ltmp90:
	#DEBUG_VALUE: print_uart_byte:hex <- [DW_OP_LLVM_fragment 8 8] undef
	.loc	2 86 14                         # ./uart.c:86:14 @[ ./uart.c:119:5 ]
	lbu	a2, 0(a2)
.Ltmp91:
	#DEBUG_VALUE: print_uart_byte:hex <- [DW_OP_LLVM_fragment 0 8] undef
	#DEBUG_VALUE: write_serial:a <- undef
	.loc	2 0 14 is_stmt 0                # ./uart.c:0:14
	lui	a1, 65536
.Ltmp92:
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:120:5 ] ] ]
	lbu	a3, 20(a1)
.Ltmp93:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:120:5 ] ]
	andi	a3, a3, 32
.Ltmp94:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:120:5 ]
	beqz	a3, .LBB12_1
.Ltmp95:
# %bb.2:
	.loc	2 0 9 is_stmt 0                 # ./uart.c:0:9
	lui	a3, 65536
.Ltmp96:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x12
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15 is_stmt 1               # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:120:5 ] ]
	sb	a2, 0(a3)
.Ltmp97:
	#DEBUG_VALUE: write_serial:a <- $x10
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: write_serial:a <- $x10
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:121:5 ] ] ]
	lbu	a2, 20(a1)
.Ltmp98:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:121:5 ] ]
	andi	a2, a2, 32
.Ltmp99:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:121:5 ]
	beqz	a2, .LBB12_3
.Ltmp100:
# %bb.4:
	#DEBUG_VALUE: write_serial:a <- $x10
	.loc	2 0 9 is_stmt 0                 # ./uart.c:0:9
	lui	a1, 65536
.Ltmp101:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x10
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15 is_stmt 1               # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:121:5 ] ]
	sb	a0, 0(a1)
.Ltmp102:
	.loc	2 122 1                         # ./uart.c:122:1
	ret
.Ltmp103:
.Lfunc_end12:
	.size	print_uart_byte, .Lfunc_end12-print_uart_byte
	.cfi_endproc
                                        # -- End function
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	1
	.type	main,@function
main:                                   # @main
.Lfunc_begin13:
	.loc	0 37 0                          # test.c:37:0
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
.Ltmp104:
	#DEBUG_VALUE: main:vl <- 8
.Lpcrel_hi4:
	.loc	0 50 9 prologue_end             # test.c:50:9
	auipc	a0, %pcrel_hi(.L__const.main.data_a)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi4)
	vsetivli	zero, 8, e32, m1, ta, ma
	vle32.v	v8, (a0)
.Ltmp105:
	#DEBUG_VALUE: main:a <- undef
.Lpcrel_hi5:
	.loc	0 51 9                          # test.c:51:9
	auipc	a0, %pcrel_hi(.L__const.main.data_b)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi5)
	vle32.v	v9, (a0)
.Ltmp106:
	#DEBUG_VALUE: main:b <- undef
	.loc	0 0 9 is_stmt 0                 # test.c:0:9
	addi	a0, sp, 8
	.loc	0 54 14 is_stmt 1               # test.c:54:14
	vadd.vv	v8, v8, v9
.Ltmp107:
	#DEBUG_VALUE: main:result <- undef
	.loc	0 58 5 is_stmt 0                # test.c:58:5
	vse32.v	v8, (a0)
	lui	a0, 244
	addi	a0, a0, 576
	#DEBUG_VALUE: debug_delay_cycles:cycles <- 1000000
	#DEBUG_VALUE: i <- 0
.Ltmp108:
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: debug_delay_cycles:cycles <- 1000000
	#DEBUG_VALUE: main:vl <- 8
	#DEBUG_VALUE: i <- [DW_OP_consts 1000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x10
	.loc	0 12 26 is_stmt 1               # test.c:12:26 @[ test.c:60:5 ]
	addiw	a0, a0, -1
.Ltmp109:
	.loc	0 13 5                          # test.c:13:5 @[ test.c:60:5 ]
	#APP
	nop
	#NO_APP
.Ltmp110:
	#DEBUG_VALUE: i <- [DW_OP_consts 1000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x10
	.loc	0 12 3                          # test.c:12:3 @[ test.c:60:5 ]
	bnez	a0, .LBB13_1
.Ltmp111:
# %bb.2:
	#DEBUG_VALUE: main:vl <- 8
	.loc	0 0 3 is_stmt 0                 # test.c:0:3
	lui	a1, 65536
	li	a2, 128
	li	a3, 27
	li	a4, 3
.Ltmp112:
	#DEBUG_VALUE: init_uart:freq <- 50000000
	#DEBUG_VALUE: init_uart:baud <- 115200
	#DEBUG_VALUE: init_uart:divisor <- 27
	#DEBUG_VALUE: write_reg_u8:addr <- 268435460
	#DEBUG_VALUE: write_reg_u8:value <- 0
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435460
	.loc	2 10 15 is_stmt 1               # ./uart.c:10:15 @[ ./uart.c:61:5 @[ test.c:61:5 ] ]
	sb	zero, 4(a1)
.Ltmp113:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435468
	#DEBUG_VALUE: write_reg_u8:value <- -128
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435468
	.loc	2 10 15 is_stmt 0               # ./uart.c:10:15 @[ ./uart.c:62:5 @[ test.c:61:5 ] ]
	sb	a2, 12(a1)
	li	a5, 199
.Ltmp114:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- 27
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:63:5 @[ test.c:61:5 ] ]
	sb	a3, 0(a1)
	li	a3, 32
.Ltmp115:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435460
	#DEBUG_VALUE: write_reg_u8:value <- 0
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435460
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:64:5 @[ test.c:61:5 ] ]
	sb	zero, 4(a1)
.Ltmp116:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435468
	#DEBUG_VALUE: write_reg_u8:value <- 3
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435468
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:65:5 @[ test.c:61:5 ] ]
	sb	a4, 12(a1)
	li	a2, 82
.Ltmp117:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435464
	#DEBUG_VALUE: write_reg_u8:value <- -57
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435464
	#DEBUG_VALUE: print_uart:str <- undef
	#DEBUG_VALUE: print_uart:cur <- undef
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:66:5 @[ test.c:61:5 ] ]
	sb	a5, 8(a1)
.Lpcrel_hi6:
	auipc	a4, %pcrel_hi(.L.str)
.Ltmp118:
	#DEBUG_VALUE: write_reg_u8:addr <- 268435472
	#DEBUG_VALUE: write_reg_u8:value <- 32
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435472
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:67:5 @[ test.c:61:5 ] ]
	sb	a3, 16(a1)
	addi	a3, a4, %pcrel_lo(.Lpcrel_hi6)
	li	a4, 14
.Ltmp119:
	#DEBUG_VALUE: print_uart:cur <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: main:vl <- 8
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:62:5 ] ] ] ]
	lbu	a5, 20(a1)
.Ltmp120:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:62:5 ] ] ]
	andi	a5, a5, 32
.Ltmp121:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:75:9 @[ test.c:62:5 ] ]
	beqz	a5, .LBB13_3
.Ltmp122:
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	#DEBUG_VALUE: main:vl <- 8
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x12
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:75:9 @[ test.c:62:5 ] ] ]
	sb	a2, 0(a1)
.Ltmp123:
	.loc	2 76 9                          # ./uart.c:76:9 @[ test.c:62:5 ]
	addi	a0, a0, 1
.Ltmp124:
	.loc	2 73 12                         # ./uart.c:73:12 @[ test.c:62:5 ]
	add	a2, a3, a0
.Ltmp125:
	#DEBUG_VALUE: print_uart:cur <- $x12
	lbu	a2, 0(a2)
.Ltmp126:
	.loc	2 73 5 is_stmt 0                # ./uart.c:73:5 @[ test.c:62:5 ]
	bne	a0, a4, .LBB13_3
.Ltmp127:
# %bb.5:
	#DEBUG_VALUE: main:vl <- 8
.Lpcrel_hi7:
	.loc	0 64 5 is_stmt 1                # test.c:64:5
	auipc	a0, %pcrel_hi(.L.str.1)
.Lpcrel_hi8:
	auipc	a1, %pcrel_hi(.L__const.main.data_a)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi7)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi8)
	call	print_i32_array
.Ltmp128:
.Lpcrel_hi9:
	.loc	0 65 5                          # test.c:65:5
	auipc	a0, %pcrel_hi(.L.str.2)
.Lpcrel_hi10:
	auipc	a1, %pcrel_hi(.L__const.main.data_b)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi9)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi10)
	call	print_i32_array
.Ltmp129:
.Lpcrel_hi11:
	.loc	0 66 5                          # test.c:66:5
	auipc	a0, %pcrel_hi(.L.str.3)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi11)
	addi	a1, sp, 8
	call	print_i32_array
.Ltmp130:
	.loc	0 74 5                          # test.c:74:5
	li	a0, 0
	.loc	0 74 5 epilogue_begin is_stmt 0 # test.c:74:5
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	.cfi_restore ra
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Ltmp131:
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc
                                        # -- End function
	.p2align	1                               # -- Begin function print_i32_array
	.type	print_i32_array,@function
print_i32_array:                        # @print_i32_array
.Lfunc_begin14:
	.loc	0 28 0 is_stmt 1                # test.c:28:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: print_i32_array:name <- $x10
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_uart:str <- $x10
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
.Ltmp132:
	#DEBUG_VALUE: print_uart:cur <- $x10
	.loc	2 73 12 prologue_end            # ./uart.c:73:12 @[ test.c:29:5 ]
	lbu	a3, 0(a0)
	lui	a2, 65536
	.loc	2 73 5 is_stmt 0                # ./uart.c:73:5 @[ test.c:29:5 ]
	beqz	a3, .LBB14_3
.Ltmp133:
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: print_uart:cur <- $x10
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:29:5 ] ] ] ]
	lbu	a4, 20(a2)
.Ltmp134:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:29:5 ] ] ]
	andi	a4, a4, 32
.Ltmp135:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:75:9 @[ test.c:29:5 ] ]
	beqz	a4, .LBB14_1
.Ltmp136:
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	#DEBUG_VALUE: print_uart:cur <- $x10
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x13
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:75:9 @[ test.c:29:5 ] ] ]
	sb	a3, 0(a2)
.Ltmp137:
	.loc	2 73 12 is_stmt 0               # ./uart.c:73:12 @[ test.c:29:5 ]
	lbu	a3, 1(a0)
.Ltmp138:
	.loc	2 76 9 is_stmt 1                # ./uart.c:76:9 @[ test.c:29:5 ]
	addi	a0, a0, 1
.Ltmp139:
	#DEBUG_VALUE: print_uart:cur <- $x10
	.loc	2 73 5                          # ./uart.c:73:5 @[ test.c:29:5 ]
	bnez	a3, .LBB14_1
.Ltmp140:
.LBB14_3:
	#DEBUG_VALUE: print_uart:cur <- $x10
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	2 0 5 is_stmt 0                 # ./uart.c:0:5
	li	a0, 0
	li	a5, 58
.Lpcrel_hi12:
	auipc	a3, %pcrel_hi(.L.str.4)
	addi	a3, a3, %pcrel_lo(.Lpcrel_hi12)
	li	a4, 3
	#DEBUG_VALUE: print_uart:cur <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
.Ltmp141:
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:30:5 ] ] ] ]
	lbu	s0, 20(a2)
.Ltmp142:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:30:5 ] ] ]
	andi	s0, s0, 32
.Ltmp143:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:75:9 @[ test.c:30:5 ] ]
	beqz	s0, .LBB14_4
.Ltmp144:
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x15
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:75:9 @[ test.c:30:5 ] ] ]
	sb	a5, 0(a2)
.Ltmp145:
	.loc	2 76 9                          # ./uart.c:76:9 @[ test.c:30:5 ]
	addi	a0, a0, 1
.Ltmp146:
	.loc	2 73 12                         # ./uart.c:73:12 @[ test.c:30:5 ]
	add	a5, a3, a0
.Ltmp147:
	#DEBUG_VALUE: print_uart:cur <- $x15
	lbu	a5, 0(a5)
.Ltmp148:
	.loc	2 73 5 is_stmt 0                # ./uart.c:73:5 @[ test.c:30:5 ]
	bne	a0, a4, .LBB14_4
.Ltmp149:
# %bb.6:
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	2 0 5                           # ./uart.c:0:5
	li	t3, 0
	lui	t4, 65536
	li	a6, 48
	li	t1, 7
	li	t2, 8
	li	a7, 32
	li	t0, 45
	lui	a0, 838861
	mv	s2, sp
	li	t5, 10
	addi	a0, a0, -819
	slli	s3, a0, 32
	li	t6, 15
	j	.LBB14_8
.Ltmp150:
.LBB14_7:                               #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	addi	t3, t3, 1
.Ltmp151:
	#DEBUG_VALUE: i <- $x28
	.loc	0 31 5 is_stmt 1                # test.c:31:5
	beq	t3, t2, .LBB14_23
.Ltmp152:
.LBB14_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
                                        #     Child Loop BB14_13 Depth 2
                                        #     Child Loop BB14_15 Depth 2
                                        #       Child Loop BB14_16 Depth 3
                                        #     Child Loop BB14_19 Depth 2
                                        #     Child Loop BB14_21 Depth 2
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: i <- $x28
	.loc	0 32 21 is_stmt 0               # test.c:32:21
	slli	a3, t3, 2
	add	a3, a3, a1
	lw	s1, 0(a3)
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: print_dec32:v <- undef
	#DEBUG_VALUE: print_dec32:i <- 0
	beqz	s1, .LBB14_19
.Ltmp153:
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: print_dec32:i <- 0
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	0 23 11 is_stmt 1               # test.c:23:11 @[ test.c:32:9 ]
	bgez	s1, .LBB14_12
.Ltmp154:
.LBB14_10:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: print_dec32:i <- 0
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:23:18 @[ test.c:32:9 ] ] ] ] ]
	lbu	a3, 20(a2)
.Ltmp155:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:23:18 @[ test.c:32:9 ] ] ] ]
	andi	a3, a3, 32
.Ltmp156:
	.loc	2 40 9                          # ./uart.c:40:9 @[ test.c:18:40 @[ test.c:23:18 @[ test.c:32:9 ] ] ]
	beqz	a3, .LBB14_10
.Ltmp157:
# %bb.11:                               #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: print_dec32:i <- 0
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- 45
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ test.c:18:40 @[ test.c:23:18 @[ test.c:32:9 ] ] ] ]
	sb	t0, 0(t4)
.Ltmp158:
	.loc	0 23 38                         # test.c:23:38 @[ test.c:32:9 ]
	negw	s1, s1
.Ltmp159:
	#DEBUG_VALUE: print_dec32:v <- $x9
.LBB14_12:                              #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: print_dec32:i <- 0
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	0 0 38 is_stmt 0                # test.c:0:38
	li	a3, 0
.Ltmp160:
.LBB14_13:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	mv	a0, s1
	mv	s0, a3
.Ltmp161:
	#DEBUG_VALUE: print_dec32:v <- $x10
	#DEBUG_VALUE: print_dec32:i <- $x8
	.loc	0 24 78 is_stmt 1               # test.c:24:78 @[ test.c:32:9 ]
	slli	a4, s1, 32
	.loc	0 24 46                         # test.c:24:46 @[ test.c:32:9 ]
	addi	a3, a3, 1
.Ltmp162:
	#DEBUG_VALUE: print_dec32:i <- $x13
	.loc	0 24 78                         # test.c:24:78 @[ test.c:32:9 ]
	mulhu	a4, a4, s3
	srli	s1, a4, 35
.Ltmp163:
	#DEBUG_VALUE: print_dec32:v <- $x9
	.loc	0 24 68 is_stmt 0               # test.c:24:68 @[ test.c:32:9 ]
	slli	a5, s1, 1
	slli	a4, s1, 3
	add	a4, a4, a5
	sub	a4, a0, a4
	.loc	0 24 52 is_stmt 1               # test.c:24:52 @[ test.c:32:9 ]
	ori	a4, a4, 48
	.loc	0 24 41 is_stmt 0               # test.c:24:41 @[ test.c:32:9 ]
	add	a5, s2, s0
	.loc	0 24 50                         # test.c:24:50 @[ test.c:32:9 ]
	sb	a4, 0(a5)
.Ltmp164:
	.loc	0 24 5 is_stmt 1                # test.c:24:5 @[ test.c:32:9 ]
	bltu	a0, t5, .LBB14_15
.Ltmp165:
# %bb.14:                               #   in Loop: Header=BB14_13 Depth=2
	#DEBUG_VALUE: print_dec32:i <- $x13
	#DEBUG_VALUE: print_dec32:v <- $x9
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	0 24 5                          # test.c:24:5 @[ test.c:32:9 ]
	bltu	s0, t6, .LBB14_13
.Ltmp166:
.LBB14_15:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_16 Depth 3
	#DEBUG_VALUE: print_dec32:v <- $x9
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: print_dec32:i <- $x13
	.loc	0 25 13                         # test.c:25:13 @[ test.c:32:9 ]
	addi	a3, a3, -1
.Ltmp167:
	#DEBUG_VALUE: print_dec32:i <- $x13
	.loc	0 25 27 is_stmt 0               # test.c:25:27 @[ test.c:32:9 ]
	add	a0, s2, a3
	lbu	a4, 0(a0)
	#DEBUG_VALUE: uart_putc:c <- undef
	#DEBUG_VALUE: write_serial:a <- undef
.Ltmp168:
.LBB14_16:                              #   Parent Loop BB14_8 Depth=1
                                        #     Parent Loop BB14_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: print_dec32:i <- $x13
	#DEBUG_VALUE: print_dec32:v <- $x9
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:25:17 @[ test.c:32:9 ] ] ] ] ]
	lbu	a0, 20(a2)
.Ltmp169:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:25:17 @[ test.c:32:9 ] ] ] ]
	andi	a0, a0, 32
.Ltmp170:
	.loc	2 40 9                          # ./uart.c:40:9 @[ test.c:18:40 @[ test.c:25:17 @[ test.c:32:9 ] ] ]
	beqz	a0, .LBB14_16
.Ltmp171:
# %bb.17:                               #   in Loop: Header=BB14_15 Depth=2
	#DEBUG_VALUE: print_dec32:i <- $x13
	#DEBUG_VALUE: print_dec32:v <- $x9
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x14
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ test.c:18:40 @[ test.c:25:17 @[ test.c:32:9 ] ] ] ]
	sb	a4, 0(t4)
.Ltmp172:
	#DEBUG_VALUE: print_dec32:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $x13
	.loc	0 25 5                          # test.c:25:5 @[ test.c:32:9 ]
	bnez	a3, .LBB14_15
.Ltmp173:
# %bb.18:                               #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	0 33 19                         # test.c:33:19
	bne	t3, t1, .LBB14_21
	j	.LBB14_7
.Ltmp174:
.LBB14_19:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: print_dec32:i <- 0
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:22:19 @[ test.c:32:9 ] ] ] ] ]
	lbu	a3, 20(a2)
.Ltmp175:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:22:19 @[ test.c:32:9 ] ] ] ]
	andi	a3, a3, 32
	beqz	a3, .LBB14_19
.Ltmp176:
# %bb.20:                               #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: print_dec32:i <- 0
	#DEBUG_VALUE: print_dec32:buf <- [DW_OP_deref] $x2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- 48
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ test.c:18:40 @[ test.c:22:19 @[ test.c:32:9 ] ] ] ]
	sb	a6, 0(t4)
.Ltmp177:
	.loc	0 33 19                         # test.c:33:19
	beq	t3, t1, .LBB14_7
.Ltmp178:
.LBB14_21:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12                         # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:33:24 ] ] ] ]
	lbu	a0, 20(a2)
.Ltmp179:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ test.c:18:40 @[ test.c:33:24 ] ] ]
	andi	a0, a0, 32
.Ltmp180:
	.loc	2 40 9                          # ./uart.c:40:9 @[ test.c:18:40 @[ test.c:33:24 ] ]
	beqz	a0, .LBB14_21
.Ltmp181:
# %bb.22:                               #   in Loop: Header=BB14_8 Depth=1
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- 32
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ test.c:18:40 @[ test.c:33:24 ] ] ]
	sb	a7, 0(t4)
	j	.LBB14_7
.Ltmp182:
.LBB14_23:
	#DEBUG_VALUE: i <- $x28
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: print_i32_array:a <- $x11
	.loc	2 0 15 is_stmt 0                # ./uart.c:0:15
	li	a0, 0
	li	a4, 13
	lui	a1, 65536
.Ltmp183:
.Lpcrel_hi13:
	auipc	a3, %pcrel_hi(.L.str.5)
	addi	a3, a3, %pcrel_lo(.Lpcrel_hi13)
	li	a5, 2
	#DEBUG_VALUE: print_uart:cur <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
.Ltmp184:
.LBB14_24:                              # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: read_reg_u8:addr <- 268435476
	.loc	2 15 12 is_stmt 1               # ./uart.c:15:12 @[ ./uart.c:20:12 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:35:5 ] ] ] ]
	lbu	s0, 20(a2)
.Ltmp185:
	.loc	2 20 42                         # ./uart.c:20:42 @[ ./uart.c:40:16 @[ ./uart.c:75:9 @[ test.c:35:5 ] ] ]
	andi	s0, s0, 32
.Ltmp186:
	.loc	2 40 9                          # ./uart.c:40:9 @[ ./uart.c:75:9 @[ test.c:35:5 ] ]
	beqz	s0, .LBB14_24
.Ltmp187:
# %bb.25:                               #   in Loop: Header=BB14_24 Depth=1
	#DEBUG_VALUE: print_i32_array:n <- 8
	#DEBUG_VALUE: write_reg_u8:addr <- 268435456
	#DEBUG_VALUE: write_reg_u8:value <- $x14
	#DEBUG_VALUE: write_reg_u8:loc_addr <- 268435456
	.loc	2 10 15                         # ./uart.c:10:15 @[ ./uart.c:44:5 @[ ./uart.c:75:9 @[ test.c:35:5 ] ] ]
	sb	a4, 0(a1)
.Ltmp188:
	.loc	2 76 9                          # ./uart.c:76:9 @[ test.c:35:5 ]
	addi	a0, a0, 1
.Ltmp189:
	.loc	2 73 12                         # ./uart.c:73:12 @[ test.c:35:5 ]
	add	a4, a3, a0
.Ltmp190:
	#DEBUG_VALUE: print_uart:cur <- $x14
	lbu	a4, 0(a4)
.Ltmp191:
	.loc	2 73 5 is_stmt 0                # ./uart.c:73:5 @[ test.c:35:5 ]
	bne	a0, a5, .LBB14_24
.Ltmp192:
# %bb.26:
	#DEBUG_VALUE: print_i32_array:n <- 8
	.loc	0 36 1 epilogue_begin is_stmt 1 # test.c:36:1
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
.Ltmp193:
.Lfunc_end14:
	.size	print_i32_array, .Lfunc_end14-print_i32_array
	.cfi_endproc
                                        # -- End function
	.hidden	bin_to_hex_table                # @bin_to_hex_table
	.type	bin_to_hex_table,@object
	.data
	.globl	bin_to_hex_table
bin_to_hex_table:
	.ascii	"0123456789ABCDEF"
	.size	bin_to_hex_table, 16

	.type	.L__const.main.data_a,@object   # @__const.main.data_a
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.main.data_a:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.size	.L__const.main.data_a, 32

	.type	.L__const.main.data_b,@object   # @__const.main.data_b
	.p2align	2, 0x0
.L__const.main.data_b:
	.word	8                               # 0x8
	.word	7                               # 0x7
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	4                               # 0x4
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.main.data_b, 32

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Result UART:\r\n"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"data_a"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"data_b"
	.size	.L.str.2, 7

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"result"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	":\r\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\r\n"
	.size	.L.str.5, 3

	.file	4 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "/home/xl2025/opt/riscv-llvm/lib/clang/22/include" "riscv_vector.h" md5 0x255ceebde96f450c22e334dcdb0f3a56
	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	25                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	7                               # 7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	11                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	192                             # 1000000
	.byte	132                             # 
	.byte	61                              # 
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	192                             # 1000000
	.byte	132                             # 
	.byte	61                              # 
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp190-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	53                              # DW_TAG_volatile_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	28                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	42                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0xe24 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.half	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.word	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.word	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	7                               # DW_AT_low_pc
	.word	.Lfunc_end14-.Lfunc_begin0      # DW_AT_high_pc
	.word	.Laddr_table_base0              # DW_AT_addr_base
	.word	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.word	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	42                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.word	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3e:0xc DW_TAG_array_type
	.word	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x43:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4a:0x8 DW_TAG_typedef
	.word	82                              # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x52:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x56:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x5a:0xa DW_TAG_variable
	.word	100                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x64:0xc DW_TAG_array_type
	.word	112                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x69:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	15                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x70:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x74:0xa DW_TAG_variable
	.word	126                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               # Abbrev [4] 0x7e:0xc DW_TAG_array_type
	.word	112                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x83:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x8a:0xa DW_TAG_variable
	.word	126                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	8                               # Abbrev [8] 0x94:0xa DW_TAG_variable
	.word	126                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	8                               # Abbrev [8] 0x9e:0xa DW_TAG_variable
	.word	168                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	4                               # Abbrev [4] 0xa8:0xc DW_TAG_array_type
	.word	112                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xad:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb4:0xa DW_TAG_variable
	.word	190                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	4                               # Abbrev [4] 0xbe:0xc DW_TAG_array_type
	.word	112                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc3:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xca:0x5 DW_TAG_pointer_type
	.word	207                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcf:0x5 DW_TAG_volatile_type
	.word	74                              # DW_AT_type
	.byte	2                               # Abbrev [2] 0xd4:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xd8:0x22 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	445                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xe4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xeb:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	91
	.word	457                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0xf2:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	90
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xfa:0x13 DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	269                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x106:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x10d:0x11 DW_TAG_subprogram
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	74                              # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x115:0x8 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.word	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x11e:0x9 DW_TAG_typedef
	.word	295                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.half	302                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x127:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x12b:0x25 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	437                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x137:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.word	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x144:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x150:0x40 DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	43                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.word	112                             # DW_AT_type
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x15f:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.word	.Ltmp7-.Ltmp6                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x16c:0xa DW_TAG_formal_parameter
	.ascii	"\207\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x177:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.word	.Ltmp8-.Ltmp7                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x184:0xa DW_TAG_formal_parameter
	.ascii	"\206\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x190:0x25 DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	573                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x19c:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.word	.Ltmp11-.Ltmp10                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	31                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x1a9:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x1b5:0x8 DW_TAG_subprogram
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	22                              # Abbrev [22] 0x1bd:0x1d DW_TAG_subprogram
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x1c1:0x8 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.word	286                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1c9:0x8 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.word	74                              # DW_AT_type
	.byte	23                              # Abbrev [23] 0x1d1:0x8 DW_TAG_variable
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.word	202                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1da:0x63 DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.word	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	988                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x1e6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	992                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x1ed:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.word	.Ltmp15-.Ltmp13                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x1fa:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.word	.Ltmp14-.Ltmp13                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x207:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x213:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.word	.Ltmp18-.Ltmp17                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x220:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x22a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x231:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x23d:0x8 DW_TAG_subprogram
	.byte	17                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x245:0x4c DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.word	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	44                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.word	212                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x254:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.word	1167                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x25d:0x1b DW_TAG_inlined_subroutine
	.word	573                             # DW_AT_abstract_origin
	.byte	20                              # DW_AT_low_pc
	.word	.Ltmp22-.Ltmp20                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x26a:0xd DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	20                              # DW_AT_low_pc
	.word	.Ltmp21-.Ltmp20                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	31                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x278:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	21                              # DW_AT_low_pc
	.word	.Ltmp26-.Ltmp25                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	53                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x285:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x291:0x14b DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.word	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	1977                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x29d:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.word	1981                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x2a3:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.word	1989                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x2a9:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.word	1997                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x2af:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	23                              # DW_AT_low_pc
	.word	.Ltmp32-.Ltmp31                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x2bc:0xa DW_TAG_formal_parameter
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2c6:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2cc:0xa DW_TAG_variable
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x2d7:0x31 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	24                              # DW_AT_low_pc
	.word	.Ltmp33-.Ltmp32                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x2e4:0xa DW_TAG_formal_parameter
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2ee:0xf DW_TAG_formal_parameter
	.ascii	"\200\377\377\377\377\377\377\377\377\001" # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x2fd:0xa DW_TAG_variable
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x308:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	25                              # DW_AT_low_pc
	.word	.Ltmp34-.Ltmp33                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	63                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x315:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x31f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x326:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x331:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	26                              # DW_AT_low_pc
	.word	.Ltmp36-.Ltmp35                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	64                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x33e:0xa DW_TAG_formal_parameter
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x348:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x34f:0xa DW_TAG_variable
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x35a:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	27                              # DW_AT_low_pc
	.word	.Ltmp37-.Ltmp36                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	65                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x367:0xa DW_TAG_formal_parameter
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x371:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x377:0xa DW_TAG_variable
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x382:0x31 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	28                              # DW_AT_low_pc
	.word	.Ltmp38-.Ltmp37                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x38f:0xa DW_TAG_formal_parameter
	.ascii	"\210\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x399:0xf DW_TAG_formal_parameter
	.ascii	"\307\377\377\377\377\377\377\377\377\001" # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3a8:0xa DW_TAG_variable
	.ascii	"\210\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x3b3:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	29                              # DW_AT_low_pc
	.word	.Ltmp39-.Ltmp38                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	67                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x3c0:0xa DW_TAG_formal_parameter
	.ascii	"\220\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x3ca:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x3d0:0xa DW_TAG_variable
	.ascii	"\220\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x3dc:0xd DW_TAG_subprogram
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x3e0:0x8 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.word	112                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x3e9:0x77 DW_TAG_subprogram
	.byte	30                              # DW_AT_low_pc
	.word	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	2014                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x3f5:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.word	2018                            # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x3fb:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	90
	.word	2026                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x402:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.word	.Ltmp46-.Ltmp42                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x40f:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.word	.Ltmp44-.Ltmp42                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x41c:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	31                              # DW_AT_low_pc
	.word	.Ltmp43-.Ltmp42                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x429:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x435:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	32                              # DW_AT_low_pc
	.word	.Ltmp46-.Ltmp45                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x442:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x44c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	91
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x453:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x460:0x1a DW_TAG_subprogram
	.byte	33                              # DW_AT_low_pc
	.word	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.word	1146                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x46c:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.word	1150                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x472:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	91
	.word	1158                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x47a:0x15 DW_TAG_subprogram
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x47e:0x8 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.word	74                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x486:0x8 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.word	1167                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x48f:0x5 DW_TAG_pointer_type
	.word	74                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0x494:0x10c DW_TAG_subprogram
	.byte	34                              # DW_AT_low_pc
	.word	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	45                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x49f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.word	2006                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x4a9:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4b2:0xed DW_TAG_lexical_block
	.byte	35                              # DW_AT_low_pc
	.word	.Ltmp67-.Ltmp55                 # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x4b8:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.word	74                              # DW_AT_type
	.byte	23                              # Abbrev [23] 0x4c1:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.word	3544                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x4c9:0x14 DW_TAG_inlined_subroutine
	.word	1146                            # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.word	.Ltmp59-.Ltmp56                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	97                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x4d6:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.word	1150                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x4dd:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.word	.Ltmp63-.Ltmp59                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	98                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x4ea:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.word	.Ltmp61-.Ltmp59                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x4f7:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.word	.Ltmp60-.Ltmp59                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x504:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x510:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	38                              # DW_AT_low_pc
	.word	.Ltmp63-.Ltmp62                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x51d:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x527:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x52e:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x53a:0x64 DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	39                              # DW_AT_low_pc
	.word	.Ltmp67-.Ltmp63                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	99                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x547:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.word	992                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x54e:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	39                              # DW_AT_low_pc
	.word	.Ltmp65-.Ltmp63                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x55b:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	39                              # DW_AT_low_pc
	.word	.Ltmp64-.Ltmp63                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x568:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x574:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	40                              # DW_AT_low_pc
	.word	.Ltmp67-.Ltmp66                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x581:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x58b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x592:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5a0:0x10c DW_TAG_subprogram
	.byte	41                              # DW_AT_low_pc
	.word	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	46                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x5ab:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.word	3556                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x5b5:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.word	212                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x5be:0xed DW_TAG_lexical_block
	.byte	42                              # DW_AT_low_pc
	.word	.Ltmp85-.Ltmp73                 # DW_AT_high_pc
	.byte	31                              # Abbrev [31] 0x5c4:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.word	74                              # DW_AT_type
	.byte	23                              # Abbrev [23] 0x5cd:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.word	3544                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x5d5:0x14 DW_TAG_inlined_subroutine
	.word	1146                            # DW_AT_abstract_origin
	.byte	43                              # DW_AT_low_pc
	.word	.Ltmp77-.Ltmp74                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	110                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x5e2:0x6 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.word	1150                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x5e9:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	44                              # DW_AT_low_pc
	.word	.Ltmp81-.Ltmp77                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	111                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x5f6:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	44                              # DW_AT_low_pc
	.word	.Ltmp79-.Ltmp77                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x603:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	44                              # DW_AT_low_pc
	.word	.Ltmp78-.Ltmp77                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x610:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x61c:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	45                              # DW_AT_low_pc
	.word	.Ltmp81-.Ltmp80                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x629:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x633:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x63a:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x646:0x64 DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	46                              # DW_AT_low_pc
	.word	.Ltmp85-.Ltmp81                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	112                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x653:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.word	992                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x65a:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	46                              # DW_AT_low_pc
	.word	.Ltmp83-.Ltmp81                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x667:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	46                              # DW_AT_low_pc
	.word	.Ltmp82-.Ltmp81                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x674:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x680:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	47                              # DW_AT_low_pc
	.word	.Ltmp85-.Ltmp84                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x68d:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x697:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x69e:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6ac:0xf2 DW_TAG_subprogram
	.byte	48                              # DW_AT_low_pc
	.word	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	47                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x6b7:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.word	74                              # DW_AT_type
	.byte	23                              # Abbrev [23] 0x6c0:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.word	3544                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x6c8:0x14 DW_TAG_inlined_subroutine
	.word	1146                            # DW_AT_abstract_origin
	.byte	48                              # DW_AT_low_pc
	.word	.Ltmp92-.Lfunc_begin12          # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	119                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x6d5:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.word	1150                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x6dc:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	49                              # DW_AT_low_pc
	.word	.Ltmp97-.Ltmp92                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	120                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x6e9:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	49                              # DW_AT_low_pc
	.word	.Ltmp94-.Ltmp92                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x6f6:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	49                              # DW_AT_low_pc
	.word	.Ltmp93-.Ltmp92                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x703:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x70f:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	50                              # DW_AT_low_pc
	.word	.Ltmp97-.Ltmp96                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x71c:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x726:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x72d:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x739:0x64 DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	51                              # DW_AT_low_pc
	.word	.Ltmp102-.Ltmp97                # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	121                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x746:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	992                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x74d:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	51                              # DW_AT_low_pc
	.word	.Ltmp99-.Ltmp97                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x75a:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	51                              # DW_AT_low_pc
	.word	.Ltmp98-.Ltmp97                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x767:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x773:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	52                              # DW_AT_low_pc
	.word	.Ltmp102-.Ltmp101               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x780:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x78a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x791:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x79e:0x17 DW_TAG_subprogram
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x7a2:0x8 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.word	1973                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x7aa:0xa DW_TAG_lexical_block
	.byte	23                              # Abbrev [23] 0x7ab:0x8 DW_TAG_variable
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.word	1973                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x7b5:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x7b9:0x1d DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x7bd:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.word	2006                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x7c5:0x8 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.word	2006                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x7cd:0x8 DW_TAG_variable
	.byte	31                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.word	2006                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7d6:0x8 DW_TAG_typedef
	.word	1973                            # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x7de:0x15 DW_TAG_subprogram
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x7e2:0x8 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.word	2035                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x7ea:0x8 DW_TAG_variable
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.word	2035                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x7f3:0x5 DW_TAG_pointer_type
	.word	2040                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x7f8:0x5 DW_TAG_const_type
	.word	112                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x7fd:0x245 DW_TAG_subprogram
	.byte	53                              # DW_AT_low_pc
	.word	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x80c:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.word	3564                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x817:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_const_value
	.byte	54                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.word	3576                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x820:0x8 DW_TAG_variable
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	3584                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x828:0x8 DW_TAG_variable
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	3584                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x830:0x8 DW_TAG_variable
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.word	3584                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x838:0x8 DW_TAG_variable
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.word	3564                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x840:0x8 DW_TAG_variable
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.word	3564                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x848:0x27 DW_TAG_inlined_subroutine
	.word	1950                            # DW_AT_abstract_origin
	.byte	54                              # DW_AT_low_pc
	.word	.Ltmp111-.Ltmp108               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x855:0x8 DW_TAG_formal_parameter
	.ascii	"\300\204="                     # DW_AT_const_value
	.word	1954                            # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x85d:0x11 DW_TAG_lexical_block
	.byte	54                              # DW_AT_low_pc
	.word	.Ltmp111-.Ltmp108               # DW_AT_high_pc
	.word	1962                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x867:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.word	1963                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x86f:0x14f DW_TAG_inlined_subroutine
	.word	1977                            # DW_AT_abstract_origin
	.byte	55                              # DW_AT_low_pc
	.word	.Ltmp119-.Ltmp112               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x87c:0x9 DW_TAG_formal_parameter
	.ascii	"\200\341\353\027"              # DW_AT_const_value
	.word	1981                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x885:0x8 DW_TAG_formal_parameter
	.ascii	"\200\204\007"                  # DW_AT_const_value
	.word	1989                            # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x88d:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_const_value
	.word	1997                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x893:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	55                              # DW_AT_low_pc
	.word	.Ltmp113-.Ltmp112               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x8a0:0xa DW_TAG_formal_parameter
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x8aa:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x8b0:0xa DW_TAG_variable
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x8bb:0x31 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	56                              # DW_AT_low_pc
	.word	.Ltmp114-.Ltmp113               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x8c8:0xa DW_TAG_formal_parameter
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x8d2:0xf DW_TAG_formal_parameter
	.ascii	"\200\377\377\377\377\377\377\377\377\001" # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x8e1:0xa DW_TAG_variable
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x8ec:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	57                              # DW_AT_low_pc
	.word	.Ltmp115-.Ltmp114               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	63                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x8f9:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x903:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x909:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x914:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	58                              # DW_AT_low_pc
	.word	.Ltmp116-.Ltmp115               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	64                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x921:0xa DW_TAG_formal_parameter
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x92b:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x931:0xa DW_TAG_variable
	.ascii	"\204\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x93c:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	59                              # DW_AT_low_pc
	.word	.Ltmp117-.Ltmp116               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	65                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x949:0xa DW_TAG_formal_parameter
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x953:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x959:0xa DW_TAG_variable
	.ascii	"\214\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x964:0x31 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	60                              # DW_AT_low_pc
	.word	.Ltmp118-.Ltmp117               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x971:0xa DW_TAG_formal_parameter
	.ascii	"\210\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x97b:0xf DW_TAG_formal_parameter
	.ascii	"\307\377\377\377\377\377\377\377\377\001" # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x98a:0xa DW_TAG_variable
	.ascii	"\210\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x995:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	61                              # DW_AT_low_pc
	.word	.Ltmp119-.Ltmp118               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	67                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x9a2:0xa DW_TAG_formal_parameter
	.ascii	"\220\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x9ac:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x9b2:0xa DW_TAG_variable
	.ascii	"\220\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x9be:0x71 DW_TAG_inlined_subroutine
	.word	2014                            # DW_AT_abstract_origin
	.byte	62                              # DW_AT_low_pc
	.word	.Ltmp127-.Ltmp119               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x9cb:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.word	2026                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x9d1:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	62                              # DW_AT_low_pc
	.word	.Ltmp123-.Ltmp119               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x9de:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	62                              # DW_AT_low_pc
	.word	.Ltmp121-.Ltmp119               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x9eb:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	62                              # DW_AT_low_pc
	.word	.Ltmp120-.Ltmp119               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x9f8:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xa04:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	63                              # DW_AT_low_pc
	.word	.Ltmp123-.Ltmp122               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xa11:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xa1b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xa22:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xa2f:0x6 DW_TAG_call_site
	.word	2626                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0xa35:0x6 DW_TAG_call_site
	.word	2626                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	39                              # Abbrev [39] 0xa3b:0x6 DW_TAG_call_site
	.word	2626                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xa42:0x358 DW_TAG_subprogram
	.byte	67                              # DW_AT_low_pc
	.word	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	82
                                        # DW_AT_call_all_calls
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	3                               # DW_AT_calling_convention
	.byte	26                              # Abbrev [26] 0xa4e:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.word	2035                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0xa57:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.word	3621                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0xa60:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa69:0x78 DW_TAG_inlined_subroutine
	.word	2014                            # DW_AT_abstract_origin
	.byte	68                              # DW_AT_low_pc
	.word	.Ltmp140-.Ltmp132               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	29                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0xa76:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.word	2018                            # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0xa7c:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	90
	.word	2026                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0xa83:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	69                              # DW_AT_low_pc
	.word	.Ltmp137-.Ltmp133               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xa90:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	69                              # DW_AT_low_pc
	.word	.Ltmp135-.Ltmp133               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xa9d:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	69                              # DW_AT_low_pc
	.word	.Ltmp134-.Ltmp133               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xaaa:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xab6:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	70                              # DW_AT_low_pc
	.word	.Ltmp137-.Ltmp136               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xac3:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xacd:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xad4:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xae1:0x71 DW_TAG_inlined_subroutine
	.word	2014                            # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.word	.Ltmp149-.Ltmp141               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	30                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0xaee:0x6 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.word	2026                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0xaf4:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.word	.Ltmp145-.Ltmp141               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xb01:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.word	.Ltmp143-.Ltmp141               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xb0e:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.word	.Ltmp142-.Ltmp141               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xb1b:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xb27:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	72                              # DW_AT_low_pc
	.word	.Ltmp145-.Ltmp144               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xb34:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xb3e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xb45:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0xb52:0x1d6 DW_TAG_lexical_block
	.byte	73                              # DW_AT_low_pc
	.word	.Ltmp182-.Ltmp150               # DW_AT_high_pc
	.byte	36                              # Abbrev [36] 0xb58:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	108
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0xb62:0x15b DW_TAG_inlined_subroutine
	.word	3482                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	32                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0xb6b:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.word	3486                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0xb71:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.word	3494                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0xb77:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.word	3502                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0xb7d:0x6a DW_TAG_inlined_subroutine
	.word	3531                            # DW_AT_abstract_origin
	.byte	74                              # DW_AT_low_pc
	.word	.Ltmp158-.Ltmp154               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xb8a:0x5c DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	74                              # DW_AT_low_pc
	.word	.Ltmp158-.Ltmp154               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	18                              # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xb97:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	74                              # DW_AT_low_pc
	.word	.Ltmp156-.Ltmp154               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xba4:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	74                              # DW_AT_low_pc
	.word	.Ltmp155-.Ltmp154               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xbb1:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xbbd:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	75                              # DW_AT_low_pc
	.word	.Ltmp158-.Ltmp157               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xbca:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xbd4:0x6 DW_TAG_formal_parameter
	.byte	45                              # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xbda:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xbe7:0x6b DW_TAG_inlined_subroutine
	.word	3531                            # DW_AT_abstract_origin
	.byte	76                              # DW_AT_low_pc
	.word	.Ltmp172-.Ltmp168               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xbf4:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	76                              # DW_AT_low_pc
	.word	.Ltmp172-.Ltmp168               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	18                              # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xc01:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	76                              # DW_AT_low_pc
	.word	.Ltmp170-.Ltmp168               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xc0e:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	76                              # DW_AT_low_pc
	.word	.Ltmp169-.Ltmp168               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xc1b:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xc27:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	77                              # DW_AT_low_pc
	.word	.Ltmp172-.Ltmp171               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xc34:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xc3e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xc45:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xc52:0x6a DW_TAG_inlined_subroutine
	.word	3531                            # DW_AT_abstract_origin
	.byte	78                              # DW_AT_low_pc
	.word	.Ltmp177-.Ltmp174               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	22                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xc5f:0x5c DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	78                              # DW_AT_low_pc
	.word	.Ltmp177-.Ltmp174               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	18                              # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xc6c:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	78                              # DW_AT_low_pc
	.word	.Ltmp176-.Ltmp174               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xc79:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	78                              # DW_AT_low_pc
	.word	.Ltmp175-.Ltmp174               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xc86:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xc92:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	79                              # DW_AT_low_pc
	.word	.Ltmp177-.Ltmp176               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xc9f:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xca9:0x6 DW_TAG_formal_parameter
	.byte	48                              # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xcaf:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xcbd:0x6a DW_TAG_inlined_subroutine
	.word	3531                            # DW_AT_abstract_origin
	.byte	80                              # DW_AT_low_pc
	.word	.Ltmp182-.Ltmp178               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	33                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xcca:0x5c DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	80                              # DW_AT_low_pc
	.word	.Ltmp182-.Ltmp178               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	18                              # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xcd7:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	80                              # DW_AT_low_pc
	.word	.Ltmp180-.Ltmp178               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xce4:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	80                              # DW_AT_low_pc
	.word	.Ltmp179-.Ltmp178               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xcf1:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xcfd:0x28 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	81                              # DW_AT_low_pc
	.word	.Ltmp182-.Ltmp181               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xd0a:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xd14:0x6 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_const_value
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xd1a:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xd28:0x71 DW_TAG_inlined_subroutine
	.word	2014                            # DW_AT_abstract_origin
	.byte	82                              # DW_AT_low_pc
	.word	.Ltmp192-.Ltmp184               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	35                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0xd35:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.word	2026                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0xd3b:0x5d DW_TAG_inlined_subroutine
	.word	988                             # DW_AT_abstract_origin
	.byte	82                              # DW_AT_low_pc
	.word	.Ltmp188-.Ltmp184               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xd48:0x26 DW_TAG_inlined_subroutine
	.word	437                             # DW_AT_abstract_origin
	.byte	82                              # DW_AT_low_pc
	.word	.Ltmp186-.Ltmp184               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0xd55:0x18 DW_TAG_inlined_subroutine
	.word	269                             # DW_AT_abstract_origin
	.byte	82                              # DW_AT_low_pc
	.word	.Ltmp185-.Ltmp184               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	20                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xd62:0xa DW_TAG_formal_parameter
	.ascii	"\224\200\200\200\001"          # DW_AT_const_value
	.word	277                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xd6e:0x29 DW_TAG_inlined_subroutine
	.word	445                             # DW_AT_abstract_origin
	.byte	83                              # DW_AT_low_pc
	.word	.Ltmp188-.Ltmp187               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0xd7b:0xa DW_TAG_formal_parameter
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	449                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xd85:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.word	457                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0xd8c:0xa DW_TAG_variable
	.ascii	"\200\200\200\200\001"          # DW_AT_const_value
	.word	465                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xd9a:0x1d DW_TAG_subprogram
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0xd9e:0x8 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.word	3511                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xda6:0x8 DW_TAG_variable
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.word	3519                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xdae:0x8 DW_TAG_variable
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.word	212                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xdb7:0x8 DW_TAG_typedef
	.word	212                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xdbf:0xc DW_TAG_array_type
	.word	112                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xdc4:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xdcb:0xd DW_TAG_subprogram
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0xdcf:0x8 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.word	112                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xdd8:0xc DW_TAG_array_type
	.word	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xddd:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xde4:0x8 DW_TAG_typedef
	.word	295                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xdec:0xc DW_TAG_array_type
	.word	3511                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0xdf1:0x6 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xdf8:0x8 DW_TAG_typedef
	.word	295                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xe00:0x9 DW_TAG_typedef
	.word	3593                            # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.half	258                             # DW_AT_decl_line
	.byte	43                              # Abbrev [43] 0xe09:0x6 DW_TAG_typedef
	.word	3599                            # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	44                              # Abbrev [44] 0xe0f:0x16 DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.word	212                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0xe14:0x10 DW_TAG_subrange_type
	.word	86                              # DW_AT_type
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
	.byte	9                               # Abbrev [9] 0xe25:0x5 DW_TAG_pointer_type
	.word	3626                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xe2a:0x5 DW_TAG_const_type
	.word	3511                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.word	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.half	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.word	1                               # Offset entry count
.Lrnglists_table_base0:
	.word	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.word	260                             # Length of String Offsets Set
	.half	5
	.half	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)" # string offset=0
.Linfo_string1:
	.asciz	"test.c"                        # string offset=104
.Linfo_string2:
	.asciz	"/mnt/d/riscv-dnn/test/comb_inst/RVV_add" # string offset=111
.Linfo_string3:
	.asciz	"bin_to_hex_table"              # string offset=151
.Linfo_string4:
	.asciz	"unsigned char"                 # string offset=168
.Linfo_string5:
	.asciz	"uint8_t"                       # string offset=182
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=190
.Linfo_string7:
	.asciz	"char"                          # string offset=210
.Linfo_string8:
	.asciz	"int"                           # string offset=215
.Linfo_string9:
	.asciz	"read_reg_u8"                   # string offset=219
.Linfo_string10:
	.asciz	"addr"                          # string offset=231
.Linfo_string11:
	.asciz	"unsigned long"                 # string offset=236
.Linfo_string12:
	.asciz	"uintptr_t"                     # string offset=250
.Linfo_string13:
	.asciz	"is_transmit_empty"             # string offset=260
.Linfo_string14:
	.asciz	"write_reg_u8"                  # string offset=278
.Linfo_string15:
	.asciz	"value"                         # string offset=291
.Linfo_string16:
	.asciz	"loc_addr"                      # string offset=297
.Linfo_string17:
	.asciz	"is_receive_empty"              # string offset=306
.Linfo_string18:
	.asciz	"write_serial"                  # string offset=323
.Linfo_string19:
	.asciz	"a"                             # string offset=336
.Linfo_string20:
	.asciz	"bin_to_hex"                    # string offset=338
.Linfo_string21:
	.asciz	"inp"                           # string offset=349
.Linfo_string22:
	.asciz	"res"                           # string offset=353
.Linfo_string23:
	.asciz	"debug_delay_cycles"            # string offset=357
.Linfo_string24:
	.asciz	"cycles"                        # string offset=376
.Linfo_string25:
	.asciz	"unsigned int"                  # string offset=383
.Linfo_string26:
	.asciz	"i"                             # string offset=396
.Linfo_string27:
	.asciz	"init_uart"                     # string offset=398
.Linfo_string28:
	.asciz	"freq"                          # string offset=408
.Linfo_string29:
	.asciz	"uint32_t"                      # string offset=413
.Linfo_string30:
	.asciz	"baud"                          # string offset=422
.Linfo_string31:
	.asciz	"divisor"                       # string offset=427
.Linfo_string32:
	.asciz	"print_uart"                    # string offset=435
.Linfo_string33:
	.asciz	"str"                           # string offset=446
.Linfo_string34:
	.asciz	"cur"                           # string offset=450
.Linfo_string35:
	.asciz	"print_dec32"                   # string offset=454
.Linfo_string36:
	.asciz	"v"                             # string offset=466
.Linfo_string37:
	.asciz	"int32_t"                       # string offset=468
.Linfo_string38:
	.asciz	"buf"                           # string offset=476
.Linfo_string39:
	.asciz	"uart_putc"                     # string offset=480
.Linfo_string40:
	.asciz	"c"                             # string offset=490
.Linfo_string41:
	.asciz	"DW_ATE_unsigned_32"            # string offset=492
.Linfo_string42:
	.asciz	"DW_ATE_unsigned_64"            # string offset=511
.Linfo_string43:
	.asciz	"is_transmit_empty_altera"      # string offset=530
.Linfo_string44:
	.asciz	"read_serial"                   # string offset=555
.Linfo_string45:
	.asciz	"print_uart_int"                # string offset=567
.Linfo_string46:
	.asciz	"print_uart_addr"               # string offset=582
.Linfo_string47:
	.asciz	"print_uart_byte"               # string offset=598
.Linfo_string48:
	.asciz	"main"                          # string offset=614
.Linfo_string49:
	.asciz	"print_i32_array"               # string offset=619
.Linfo_string50:
	.asciz	"hex"                           # string offset=635
.Linfo_string51:
	.asciz	"uint64_t"                      # string offset=639
.Linfo_string52:
	.asciz	"byte"                          # string offset=648
.Linfo_string53:
	.asciz	"result_data"                   # string offset=653
.Linfo_string54:
	.asciz	"vl"                            # string offset=665
.Linfo_string55:
	.asciz	"size_t"                        # string offset=668
.Linfo_string56:
	.asciz	"__rvv_int32m1_t"               # string offset=675
.Linfo_string57:
	.asciz	"vint32m1_t"                    # string offset=691
.Linfo_string58:
	.asciz	"b"                             # string offset=702
.Linfo_string59:
	.asciz	"result"                        # string offset=704
.Linfo_string60:
	.asciz	"data_a"                        # string offset=711
.Linfo_string61:
	.asciz	"data_b"                        # string offset=718
.Linfo_string62:
	.asciz	"name"                          # string offset=725
.Linfo_string63:
	.asciz	"n"                             # string offset=730
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.half	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	bin_to_hex_table
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp3
	.quad	.Lfunc_begin3
	.quad	.Ltmp6
	.quad	.Ltmp7
	.quad	.Lfunc_begin4
	.quad	.Ltmp10
	.quad	.Lfunc_begin5
	.quad	.Ltmp13
	.quad	.Ltmp17
	.quad	.Lfunc_begin6
	.quad	.Ltmp20
	.quad	.Ltmp25
	.quad	.Lfunc_begin7
	.quad	.Ltmp31
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp36
	.quad	.Ltmp37
	.quad	.Ltmp38
	.quad	.Lfunc_begin8
	.quad	.Ltmp42
	.quad	.Ltmp45
	.quad	.Lfunc_begin9
	.quad	.Lfunc_begin10
	.quad	.Ltmp55
	.quad	.Ltmp56
	.quad	.Ltmp59
	.quad	.Ltmp62
	.quad	.Ltmp63
	.quad	.Ltmp66
	.quad	.Lfunc_begin11
	.quad	.Ltmp73
	.quad	.Ltmp74
	.quad	.Ltmp77
	.quad	.Ltmp80
	.quad	.Ltmp81
	.quad	.Ltmp84
	.quad	.Lfunc_begin12
	.quad	.Ltmp92
	.quad	.Ltmp96
	.quad	.Ltmp97
	.quad	.Ltmp101
	.quad	.Lfunc_begin13
	.quad	.Ltmp108
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	.Ltmp114
	.quad	.Ltmp115
	.quad	.Ltmp116
	.quad	.Ltmp117
	.quad	.Ltmp118
	.quad	.Ltmp119
	.quad	.Ltmp122
	.quad	.Ltmp128
	.quad	.Ltmp129
	.quad	.Ltmp130
	.quad	.Lfunc_begin14
	.quad	.Ltmp132
	.quad	.Ltmp133
	.quad	.Ltmp136
	.quad	.Ltmp141
	.quad	.Ltmp144
	.quad	.Ltmp150
	.quad	.Ltmp154
	.quad	.Ltmp157
	.quad	.Ltmp168
	.quad	.Ltmp171
	.quad	.Ltmp174
	.quad	.Ltmp176
	.quad	.Ltmp178
	.quad	.Ltmp181
	.quad	.Ltmp184
	.quad	.Ltmp187
.Ldebug_addr_end0:
	.ident	"clang version 22.0.0git (git@github.com:llvm/llvm-project.git 6af1247ecb950ae0e31499bb681afc9537985b7f)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
