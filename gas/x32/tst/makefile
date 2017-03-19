all : op arg
op : op.o
	ld -o op op.o
op.o : op.s
	as -o op.o op.s
arg : arg.o
	ld -o arg arg.o
arg.o : arg.s
	as -o arg.o arg.s
