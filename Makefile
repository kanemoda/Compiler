OBJECTS = ./build/main.o ./build/compiler.o ./build/cprocess.o ./build/helpers/buffer.o ./build/helpers/vector.o ./build/helpers/vector_utils.o
INCLUDES = -I./
CC = gcc

all: ./main

./main: ${OBJECTS}
	${CC} ${OBJECTS} -g -o ./main

./build/main.o: main.c
	${CC} main.c ${INCLUDES} -g -c -o ./build/main.o

./build/compiler.o: ./compiler.c
	${CC} ./compiler.c ${INCLUDES} -g -c -o ./build/compiler.o

./build/cprocess.o: ./cprocess.c
	${CC} ./cprocess.c ${INCLUDES} -g -c -o ./build/cprocess.o

./build/helpers/buffer.o: ./helpers/buffer.c
	${CC} ./helpers/buffer.c ${INCLUDES} -g -c -o ./build/helpers/buffer.o

./build/helpers/vector.o: ./helpers/vector.c
	${CC} ./helpers/vector.c ${INCLUDES} -g -c -o ./build/helpers/vector.o

./build/helpers/vector_utils.o: ./helpers/vector_utils.c
	${CC} ./helpers/vector_utils.c ${INCLUDES} -g -c -o ./build/helpers/vector_utils.o

clean:
	rm -f ./main
	rm -f ${OBJECTS}
run:
	./main

