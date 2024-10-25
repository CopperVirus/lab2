all: main

main: arith.o main.o
	gcc -o main arith.o main.o

main.o: main.c arith.h
	gcc -c -o main.o main.c

arith.o: arith.h arith.c
	gcc -c -o arith.o arith.c

clean:
	rm -f main *.o
