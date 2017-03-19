all : pw

pw : pw.o
	ld -o pw pw.o
pw.o : pw.s
	as -o pw.o pw.s
