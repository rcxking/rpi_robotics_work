clean:
	rm -rf *o remote ach_get_test home

remote:
	gcc -Werror -O3 -std=gnu99 remote.c -L/usr/local/lib -lsns -lamino -lsocanmatic -lach -llapack -lblas -o remote 

achget:
	gcc -Werror -O3 -std=gnu99 ach_get_test.c -L/usr/local/lib -lsns -lamino -lsocanmatic -lach -llapack -lblas -o ach_get_test	

home:
	gcc -Werror -O3 -std=gnu99 home.c -L/usr/local/lib -lsns -lamino -lsocanmatic -lach -llapack -lblas -o home
