SDL2_CFLAGS = `pkgconf --cflags sdl2`
SDL2_LIBS = `pkgconf --libs sdl2`
nogui:
	gcc -Wall -Wextra -Ofast -o nanopond nanopond.c -lpthread
	gcc -D USE_PTHREADS_COUNT=4 -Wall -Wextra -Ofast -o nanopond-parallel nanopond.c -lpthread
debug-nogui:
	gcc -g -Wall -Wextra -Ofast -o nanopond nanopond.c -lpthread
	gcc -g -D USE_PTHREADS_COUNT=4 -Wall -Wextra -Ofast -o nanopond-parallel nanopond.c -lpthread

clean:
	rm -f *.o nanopond *.dSYM
