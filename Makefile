OPT=-pedantic -Wall -Wextra -Ofast -flto -march=native -pipe
OPT_DEBUG=-g3 -pedantic -Wall -Wextra -Wconversion -Wdouble-promotion -Wno-unused-parameter -Wno-unused-function -Wno-sign-conversion -fsanitize=address,undefined -fsanitize-trap
CFLAGS=
LIBS=
SRC=src/*.c
CC=gcc

main_debug: $(SRC)
	$(CC) $(OPT_DEBUG) -o main_debug $(SRC) $(LIBS) $(CFLAGS)

main: $(SRC)
	$(CC) $(OPT) -o main $(SRC) $(LIBS) $(CFLAGS)

