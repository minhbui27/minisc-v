#
# File: Makefile
# Description: Makefile for compiling for minisc.
#

AUX = -T aux/link.ld
BARE = -static -nostdlib -nostartfiles -march=rv64imafdc -O0

all: clean

# Create .elf from .S
%.elf: %.S
	riscv64-unknown-elf-gcc ${BARE} $< ${AUX} -o $@

clean:
	rm -rf *.elf **/*.elf
