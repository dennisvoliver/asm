hello : hello.o
	ld -o hello hello.o
hello.o : hello.asm
#	nasm -f elf64 -g -F dwarf -o hello.o hello.asm
#	yasm -f elf64 -g dwarf2 -o hello.o hello.asm
	nasm -f elf64	-o hello.o hello.asm
