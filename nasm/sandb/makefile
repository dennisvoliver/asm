all : tst.o
	ld tst.o
tst.o : tst.asm
	nasm -f elf64 tst.asm
