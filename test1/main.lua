function love.load()
	-- window init
	width, height = 850, 350
	love.window.setMode(width, height)
	-- game init
	x, y, xdirection, ydirection = 50, 50, 1, 1
	love.graphics.setColor(255,0,0)
	-- console init
	com = love.thread.getChannel("com")
	cli = love.thread.newThread("cli.lua")
	cli:start()
end

function love.update(dt)
	-- game logic
	x = x + x*dt*xdirection
	y = y + y*dt*ydirection
	if(x >= width-50) then xdirection = -1 end
	if(x <= 50) then xdirection = 1 end
	if(y >= height-50) then ydirection = -1 end
	if(y <= 50) then ydirection = 1 end
	-- console loop
	com_current = com:pop()
	if(com_current) then print(com_current) end
end

function love.draw()
	love.graphics.point(x,y)
end