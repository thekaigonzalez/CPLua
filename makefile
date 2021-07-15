all:
	g++ Source/CPLua.cpp -std=c++17 -ldl -llua5.3 -o Binaries/cplua