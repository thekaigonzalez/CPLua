//
// Created by kai on 7/14/21.
//
#include "Engine/CompilerEngine.h"


int luaCopmeirl(lua_State* L) {
    std::string first = luaL_checkstring(L, 1);
    std::string outname = luaL_checkstring(L,2);
    CP_CompileLua(first , outname);
    return 1;
}

extern "C" {
    int luaopen_compilerapi(lua_State* L)
    {
        lua_register(L, "Compile", luaCopmeirl);
        return 1;
    }
}