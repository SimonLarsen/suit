-- This file is part of SUIT, copyright (c) 2016 Matthias Richter

local BASE = (...):match('(.-)[^%.]+$')

return function(core, img, ...)
	local opt, x,y = core.getOptionsAndSize(...)
	assert(img, "Needs image to draw")

	core:registerDraw(opt.draw or function(img,x,y, r,g,b,a)
		love.graphics.setColor(r,g,b,a)
		love.graphics.draw(img,x,y)
	end, img, x,y, love.graphics.getColor())
end
