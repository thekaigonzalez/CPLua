require "compilerapi"

local argparse = require "argparse"

local parser = argparse("luacc", "Compiles lua into an executable Linux file.")

parser:flag("-v --version", "sends version information")
      :count "*"
      :target "verbosity"

parser:argument("FILE", "The file to compile. This is required.")

parser:option("-o --output", "The Output directory. Both the executable and extension are placed here. Default: ./a.out", "./a.out")


local args = parser:parse()
if (args["verbosity"]) == 1 then
    print("initial release")
end
Compile(args["FILE"], args["output"])

