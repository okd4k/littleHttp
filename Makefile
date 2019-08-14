CXX = g++
CXXFLAGS = -Wall -g -std=c++11

littlehttp: littlehttp.o littletcp.o littledns.o
	$(CXX) $(CXXFLAGS) -o littlehttp littledns.o littletcp.o littlehttp.o

littlehttp.o: littlehttp.cc 
	$(CXX) $(CXXFLAGS) -c littlehttp.cc littlehttp.h

littledns.o: littledns.cc
	$(CXX) $(CXXFLAGS) -c littledns.cc littledns.h

littletcp.o: littletcp.cc
	$(CXX) $(CXXFLAGS) -c littletcp.cc littletcp.h


all: littlehttp

clean:
	rm littlehttp.o littletcp.o littledns.o
