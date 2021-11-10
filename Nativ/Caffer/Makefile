CC = g++
CFLAGS = -Wall

main: main.o caffer.o ciffer.o files.o common.o
	$(CC) $(CFLAGS) main.o caffer.o ciffer.o files.o common.o -o main

main.o: main.cpp
	$(CC) $(CFLAGS) -o main.o -c main.cpp

caffer.o: caffer.cpp caffer.h
	$(CC) $(CFLAGS) -o caffer.o -c caffer.cpp

files.o: files.cpp files.h
	$(CC) $(CFLAGS) -o files.o -c files.cpp

ciffer.o: ciffer.cpp ciffer.h
	$(CC) $(CFLAGS) -o ciffer.o -c ciffer.cpp

common.o: common.cpp common.h
	$(CC) $(CFLAGS) -o common.o -c common.cpp
