# ==========================
# = COMPILATION / ASSEMBLY =
# ==========================

# include directory
INCLUDE_DIRS := Tools/include
INCFLAGS     := $(foreach dir, $(INCLUDE_DIRS), -I "$(dir)")

# lyn reference
LYN_REFERENCE := Tools/ref/Definitions.o

# compilation flags
ARCH := -mcpu=arm7tdmi -mthumb -mthumb-interwork
CFLAGS := $(ARCH) $(INCFLAGS) -Wall -mtune=arm7tdmi -O3 -mlong-calls -std=c99
ASMFLAGS := $(ARCH) -I Tools/ref

$(LYN_REFERENCE):
	$(MAKE) -C Tools/ref Definitions.o

# C to ASM rule
%.asm: %.c
	$(CC) $(CFLAGS) -S $< -o $@

# OBJ to lyn output rule
%.lyn.event: %.o $(LYN_REFERENCE)
	$(LYN) $< $(LYN_REFERENCE) > $@

# ASM to OBJ rule
%.o: %.asm
	$(AS) $(ASMFLAGS) $< -o $@

%.dmp: %.o
	$(OBJCOPY) -S $< -O binary $@