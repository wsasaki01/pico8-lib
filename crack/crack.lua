function gen_crack(cx,cy,strand_cnt,max_seg_length)
    local out={{x=cx,y=cy}, {}}
    for i=1,strand_cnt do
        local s={}
        local dir=rnd(1)
        local x=cx
        local y=cy
        for i=1,flr(rnd(10))+1 do
            x+=cos(dir+rnd(0.25)-0.125)*rnd(max_seg_length)
            y+=sin(dir+rnd(0.25)-0.125)*rnd(max_seg_length)
            add(s,{x, y})
        end
        add(out[2],s)
    end
    return out
end

function draw_crack(crack,col)
    local c=crack[1]
    for s in all(crack[2]) do
        line(c.x,c.y,c.x,c.y,col)
        for ep in all(s) do
            line(ep[1],ep[2],col)
        end
    end
end