FLAG = -Wall

isort.o : isort.c libs.h
	gcc $(FLAG) -c isort.c

txtfind.o : txtfind.c  libs.h
	gcc $(FLAG) -c txtfind.c

isort : isort.o 
	gcc $(FLAG) -o isort isort.o 

txtfind : txtfind.o
	gcc $(FLAG) -o txtfind txtfind.o

.PHONY : all

all: isort txtfind 

.PHONY : clean

clean:  
	rm -f *.o