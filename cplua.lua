require "compilerapi"

local argparse = require "argparse"

local parser = argparse("cplua", "Compiles lua into an executable Linux file.")

parser:argument("FILE", "The file to compile. This is required.")

parser:option("-o --output", "The Output directory. Both the executable and extension are placed here. Default: ./a.out", "./a.out")

parser:flag("-v --version", "Version "):target("version-or-verbosity"):count("*")

local args = parser:parse()
if (args["version-or-verbosity"]) == 1 then
    print("initial release")
end
Compile(args["FILE"], args["output"])

