gcd : gcd.o
	ld -o gcd gcd.o
gcd.o : gcd.asm
	yasm -f elf64 -g dwarf2 -l gcd.lst gcd.asm
