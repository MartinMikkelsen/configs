#C
CC = gcc
CFLAGS = -Wall -O1 -std=gnu11
CFLAGS += $(shell gsl-config --cflags)
LDLIBS += $(shell gsl-config --libs)

main: main.o 

clean:
	$(RM) main *.o *.txt *.ppl *.pdf *.log

#Python

all:out.txt
	cat $<

out.txt: main.py
	python3 $< > $@

clean:
	rm -rf __pycache__ out.txt

#C++
CXX      = clang++
#CXX      = g++
CXXFLAGS += -Wall -std=c++17 -O1 -I/usr/local/include
LDLIBS   = -lstdc++ -lm -L/usr/local/lib/ -lgc

out.data:main
	./$< > $@

main: main.o 
clean:
	find -type f -executable -delete
	$(RM) *.o

#Csharp

all: out.txt
	cat $<
out.txt: main.exe
	mono $< > $@
main.exe: main.cs cmath.dll
	mcs $< -reference:$(word 2,$^)
clean:
	$(RM) *.dll *.exe out*
