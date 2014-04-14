clean:
	rm -rf *o test test_trap_vel trajectory

test_trap_vel:
	g++ -Wall -O3  test_trap_vel.cpp ../include/trajectory.cpp ../include/trap_vel.cpp -L/usr/local/lib -I /usr/include/eigen3/ -lreflex -lsns -lamino -lblas -llapack -o test_trap_vel

trajectory:
	g++ -Wall  -O3 ../include/trajectory.cpp -I /usr/include/eigen3/ trajectory.cpp -o trajectory

all:
	gcc -Wall -gnu-std=99 -lreflex -lsns -lamino -lblas -llapack -O3 test.c -o test
