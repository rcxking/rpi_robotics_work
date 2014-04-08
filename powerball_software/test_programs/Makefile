clean:
	rm -rf *o test test_trap_vel trajectory

test_trap_vel:
	gcc -Werror -O3 -std=gnu99 test_trap_vel.c ../include/trap_vel.c -L/usr/local/lib -lreflex -lsns -lamino -lblas -llapack -o test_trap_vel

trajectory:
	g++ -Wall  -O3 -I /usr/include/eigen3/ trajectory.cpp -o trajectory

all:
	gcc -Wall -gnu-std=99 -lreflex -lsns -lamino -lblas -llapack -O3 test.c -o test
