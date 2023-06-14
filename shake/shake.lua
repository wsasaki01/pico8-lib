function shake(cx,cy)
-- apply screen shake
 camera((cx+20-rnd(40))*sh_str, (cy+20-rnd(40))*sh_str)
 sh_str *= 0.75
 if (sh_str < 0.05) sh_str = 0
end