CC = gcc
FLAGS = -Wall
LD_FLAGS="-Wl,-R."
#PHONY all clean mymaths mymathd

all:mains maind
mymaths:libmyMath.a
mymathd:libmyMath.so

mains:main.o libmyMath.a
	$(CC) $(FLAGS) -L. -o $@ $^
maind:main.o libmyMath.so
	$(CC) $(FLAGS) $(LD_FLAGS) -L. -o $@ $^
main.o:main.c
	$(CC) $(FLAGS) -c $<
libmyMath.a:basicMath.o power.o
	ar -rc -o $@ $^
libmyMath.so:basicMathPIC.o powerPIC.o
	$(CC) $(FLAGS) -shared -o $@ $^ 
basicMath.o:basicMath.c myMath.h
	$(CC) $(FLAGS) -c $<
power.o:power.c myMath.h
	$(CC) $(FLAGS) -c $<
powerPIC.o:power.c myMath.h
	$(CC) $(FLAGS) -fPIC -c power.c -o $@
basicMathPIC.o:basicMath.c myMath.h
	$(CC) $(FLAGS) -fPIC -c basicMath.c -o $@
	
	
	
	
clean:
	rm *.o lib* mains maind
