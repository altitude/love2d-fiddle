require("love.filesystem")
local lc = require("luacolors")
local com = love.thread.getChannel("com")

function cliInit()
	local logo = lc.off .. lc.bold .. lc.blue .. "Noolith" .. lc.off
	print("\nWelcome to " .. logo .. " console !\n")
	print(lc.off .. lc.yellow .. "Type :help for a list of commands")
	print("Type :help <command> to get informations about a command\n" .. lc.off)
end

function cliLoop()
	local input = io.read()
	local line = lc.off .. lc.blue .. input .. lc.off
	com:push(line)
	cliLoop()
end

function cliRun()

end

cliInit()
cliLoop()