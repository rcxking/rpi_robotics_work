clean:
	rm -rf *o remote ach_get_test

remote:
	gcc -Werror -O3 -std=gnu99 remote.c -o remote 

achget:
	gcc -Werror -O3 -std=gnu99 ach_get_test.c -L/usr/local/lib -lsns -lamino -lsocanmatic -lach -llapack -lblas -o ach_get_test	
