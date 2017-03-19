all : list mem2 samp
list : list.asm
	yasm -f elf64 -g dwarf2 -l list.lst list.asm
mem2 : mem2.o
	ld -o mem2 mem2.o
mem2.o : mem2.asm
	yasm -f elf64 -g dwarf2 -l mem2.lst mem2.asm
samp : samp.o
	ld -o samp samp.o
samp.o : samp.asm
	yasm -f elf64 -g dwarf2 -l samp.lst samp.asm
