pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include raycast.lua

function _init()
 poke(0x5f2d, 1)
 
 cursor = {
  x = stat(32),
  y = stat(33),
  angle = 0,
  draw = true
 }

 player = {
  x = 40,
  y = 120
 }

 angle = 0
 raycoords = {}
 x_increment = 0
 y_increment = 0

 frame_count = 0
 loop_count = 0
end

function _update60()
 cursor.x = stat(32)
 cursor.y = stat(33)

 if btn(0) then
  player.x -= 1
 elseif btn(1) then
  player.x += 1
 end
 
 raycoords = raycast(player.x, player.y, cursor.x, cursor.y, 0, 0)
end

function _draw()
 cls()
 map(0, 0)
 print("move with ⬅️ and ➡️", 50, 60, 7)
 print("aim with mouse", 7)

 pset(player.x, player.y, 7)
 pset(cursor.x, cursor.y, 7)

 flag = false
 count = 0
 while not flag and count < #raycoords do
  count += 1
  if fget(mget(raycoords[count][1]/8, raycoords[count][2]/8), 0) then
   flag = true
   pset(raycoords[count][1], raycoords[count][2], 8)
  else
   pset(raycoords[count][1], raycoords[count][2], 7)
  end
 end

 print(angle)
end

function within_bounds(x, y)
 return (0 <= x) and (x <= 128) and (0 <= y) and (y <= 128)
end

function tan(x)
 return sin(x)/cos(x)
end
__gfx__
00000000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000cccccccc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0100010001000100010001000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000