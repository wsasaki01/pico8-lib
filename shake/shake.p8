pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include shake.lua

function _init()
	cam={
		x=0, y=0,
	}

 shake_strength=0
end

function _update()
	if btnp(5) then
	shake_strength=1
	end
	
	shake(cam.x, cam.y)
end

function _draw()
	cls()
	map(0,0)
end
__gfx__
0000000099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000099999999cccccccceeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000101010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000202020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000303000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000003030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
