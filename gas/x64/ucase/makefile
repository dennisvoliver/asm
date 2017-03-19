all : ucase

ucase : ucase.o
	ld -o ucase ucase.o
ucase.o : ucase.s
	as  --gstabs -o ucase.o ucase.s
