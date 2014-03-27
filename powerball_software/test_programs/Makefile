clean:
	rm -rf *o test test_trap_vel

test_trap_vel:
	gcc -Werror -O3 -std=gnu99 test_trap_vel.c ../include/trap_vel.c -L/usr/local/lib -lreflex -lsns -lamino -lblas -llapack -o test_trap_vel

all:
	gcc -Wall -gnu-std=99 -lreflex -lsns -lamino -lblas -llapack -O3 test.c -o test
