CC = g++
CFLAGS = -g -Wall -std=c++11

default: lab5

lab5: QS.o main.o
	$(CC) $(CFLAGS) -o lab5 QS.o main.o

QS.o: QS.cpp QS.h QSInterface.h 
	$(CC) $(CFLAGS) -c QS.cpp

main.o: main.cpp QS.h 
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) lab5 *.o *.~
