//
// Created by kai on 7/14/21.
//
#include "Engine/CompilerEngine.h"


int main(int argc, char * * argv) {
    std::string first = argv[1];
    std::string outname = argv[2];
    std::string wd = argv[3];
    CP_CompileLua(first , outname, wd);
}