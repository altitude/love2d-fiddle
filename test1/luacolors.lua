--[[ luaColors.lua by jose@josellausas.com 
	
	Allows for the usage of terminal colors with lua's print() function.
	Usage: print(luaColors.red .. "Hello Red World" .. luaColors.off) will print in red to terminal console.
]]

local luaColors = {}
--[[Whenever Lua sees a \ followed by a decimal number, 
it converts this decimal number into its ASCII equivalent.]]
luaColors.esc = '\27'

-- Defines the font colors
luaColors.black 	 	= luaColors.esc .. '[30m' 
luaColors.red 	 	 	= luaColors.esc .. '[31m'
luaColors.green 	 	= luaColors.esc .. '[32m'
luaColors.yellow 	 	= luaColors.esc .. '[33m'
luaColors.blue 	 		= luaColors.esc .. '[34m'
luaColors.magenta 	 	= luaColors.esc .. '[35m'
luaColors.cyan 	 		= luaColors.esc .. '[36m'
luaColors.white 	 	= luaColors.esc .. '[37m'


-- Defines the backgorund colors
luaColors.bg = {}

luaColors.bg.black    = luaColors.esc .. '[40m'
luaColors.bg.red 	  = luaColors.esc .. '[41m'
luaColors.bg.green    = luaColors.esc .. '[42m'
luaColors.bg.yellow   = luaColors.esc .. '[43m'
luaColors.bg.blue 	  = luaColors.esc .. '[44m'
luaColors.bg.magenta  = luaColors.esc .. '[45m'
luaColors.bg.cyan 	  = luaColors.esc .. '[46m'
luaColors.bg.white    = luaColors.esc .. '[47m'

-- Other attributes
luaColors.bold		  	= luaColors.esc .. '[1m'
luaColors.underline		= luaColors.esc .. '[4m'
luaColors.blink			= luaColors.esc .. '[5m'
luaColors.inverse		= luaColors.esc .. '[7m'
luaColors.strikeout    	= luaColors.esc .. '[8m'
luaColors.off		    = luaColors.esc .. '[0m'

luaColors.endl			= luaColors.esc .. '[0m\n'

luaColors.important = luaColors.esc .. '[1;44;37m'
luaColors.error    = luaColors.esc .. '[1;5;41;37m'


return luaColors;