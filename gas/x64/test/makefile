all : exit peak op ts arg

exit : exit.o
	ld -o exit exit.o
exit.o : exit.s
	as -o exit.o exit.s
peak.o : peak.s
	as -o peak.o peak.s
peak : peak.o
	ld -o peak peak.o
#siz : siz.o
#	ld -o siz siz.o
#siz.o : siz.s
#	as -o siz.o siz.s
op : op.o
	ld -o op op.o
op.o : op.s
	as -o op.o op.s
ts : ts.o
	ld -o ts ts.o
ts.o : ts.s
	as -o ts.o ts.s
arg : arg.o
	ld -o arg arg.o
arg.o : arg.s
	as -o arg.o arg.s
