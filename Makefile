
#CFLAGS= -g -std=c++11 -Wall -Wextra -O2 -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion \
		-Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align \
		-D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC \
		-D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover \
		-fstack-protector

CFLAGS= -g -std=c++11 -Wall -Wextra -O2 -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion \
		-Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align \
		-fsanitize=address -fsanitize=undefined -fno-sanitize-recover \
		-fstack-protector



CDEBUGFLAGS= -g -std=c++11 -Wall -Wextra -O0 -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion

all: a

a: main.cpp
	g++ $(CFLAGS) main.cpp -o a

d: main.cpp
	g++ $(CDEBUGFLAGS) main.cpp -o d

clear:
	rm input_file gen correctAnswer a a.out brute code myAnswer d

