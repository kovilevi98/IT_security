CC = g++
CFLAGS = -Wall

main: Main.o Caffer.o Ciffer.o Files.o Common.o
	$(CC) $(CFLAGS) Main.o Caffer.o Ciffer.o Files.o Common.o -o Main

main.o: Main.cpp
	$(CC) $(CFLAGS) -o Main.o -c Main.cpp

caffer.o: Caffer.cpp Caffer.h
	$(CC) $(CFLAGS) -o Caffer.o -c Caffer.cpp

files.o: Files.cpp Files.h
	$(CC) $(CFLAGS) -o Files.o -c Files.cpp

ciffer.o: Ciffer.cpp Ciffer.h
	$(CC) $(CFLAGS) -o Ciffer.o -c Ciffer.cpp

common.o: Common.cpp Common.h
	$(CC) $(CFLAGS) -o Common.o -c Common.cpp
