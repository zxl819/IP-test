# 使用方法：
#   make              # 构建 ELF 与 dump
#   make run          # 用 spike 运行
#   make clean

.PHONY: all run clean

SDK_ROOT := $(CURDIR)
RISCV_HOME := $(HOME)/opt/riscv
SYSROOT := $(RISCV_HOME)/riscv64-unknown-elf
CLANG_HOME := $(HOME)/opt/riscv-llvm/bin
CC  := $(CLANG_HOME)/clang
CXX := $(CLANG_HOME)/clang++
OBJDUMP := $(CLANG_HOME)/llvm-objdump

RV_MARCH := rv64gcv_zfh_zvfh
RELAX_DISABLE := -mno-relax

EX := rvv_add
EX_DIR := $(SDK_ROOT)/test_251028_v2.0/$(EX)
BUILD := build/$(EX)

INCS := -I$(SDK_ROOT)/include -I$(SDK_ROOT)/include/common -I$(SDK_ROOT)/include/common_spike -I$(EX_DIR) \
        -I$(SYSROOT)/include -I$(RISCV_HOME)/include -I$(SYSROOT)/riscv64-unknown-elf/include

CFLAGS := \
  --sysroot=$(SYSROOT) \
  --target=riscv64-unknown-elf -march=$(RV_MARCH) -mabi=lp64d \
  -menable-experimental-extensions -mcmodel=medany $(RELAX_DISABLE) \
  -mllvm -riscv-v-vector-bits-min=512 -mllvm -riscv-v-vector-bits-max=512 \
  -static -ffreestanding -fno-builtin -O1 -g -gdwarf-4 \
  -nostdlib -nostartfiles -nodefaultlibs \
  $(INCS)

# C++ 源（仅用于 dso.c），不引入标准库/异常/RTTI
CXXFLAGS := $(CFLAGS) -fno-exceptions -fno-rtti -fno-threadsafe-statics

LDSCRIPT := $(SDK_ROOT)/include/test_compact.ld
LDFLAGS := \
  --sysroot=$(SYSROOT) \
  --target=riscv64-unknown-elf -march=$(RV_MARCH) -mabi=lp64d \
  -L$(SYSROOT)/lib -L$(SYSROOT)/lib/rv64imafdc/lp64d \
  --gcc-toolchain=$(RISCV_HOME) \
  -static -nostdlib -nostartfiles -fuse-ld=lld \
  -Wl,--gc-sections -Wl \
  -T $(LDSCRIPT) -mcmodel=medany -g

# 从 gcc 工具链查找 libgcc 的实际文件路径
LIBGCC := $(shell $(RISCV_HOME)/bin/riscv64-unknown-elf-gcc -print-libgcc-file-name)

OBJS := \
  $(BUILD)/crt.o \
  $(BUILD)/syscalls.o \
  $(BUILD)/test.o 

#  $(BUILD)/dso.o   $(BUILD)/uart.o
ELF  := $(BUILD)/test.elf
DUMP := $(BUILD)/test.dump

all: $(ELF) $(DUMP)

$(BUILD):
	@mkdir -p $@

$(BUILD)/crt.o: $(SDK_ROOT)/include/common/crt.S | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD)/syscalls.o: $(SDK_ROOT)/include/common/syscalls.c | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

# $(BUILD)/syscall_stubs.o: $(SDK_ROOT)/include/common/syscall_stubs.c | $(BUILD)
# 	$(CC) $(CFLAGS) -c -o $@ $<

# # dso.c 是 C++ 源，单独用 clang++ 编译（不引入标准库）
# $(BUILD)/dso.o: $(SDK_ROOT)/include/common/dso.c | $(BUILD)
# 	$(CXX) $(CXXFLAGS) -c -o $@ $<

# 注意：请不要在 test.c 里 #include "uart.c"
$(BUILD)/test.o: $(EX_DIR)/test.c | $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

# $(BUILD)/uart.o: $(EX_DIR)/uart.c | $(BUILD)
# 	$(CC) $(CFLAGS) -c -o $@ $<

$(ELF): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS) $(LIBGCC)

$(DUMP): $(ELF)
	$(OBJDUMP) -d -S -C --no-show-raw-insn $< > $@

run: $(ELF)
	$(HOME)/opt/riscv-spike/bin/spike -d --log-commits --isa=rv64gcv_zfh_zvfh_zvl512b $< > $(BUILD)/spike.log 2>&1

clean:
	rm -rf $(BUILD)