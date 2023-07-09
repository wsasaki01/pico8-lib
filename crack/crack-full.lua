function gen_crack(centre_x, centre_y, strand_cnt, max_seg_length)
    local output={{x=centre_x, y=centre_y}, {}}
    for i=1, strand_cnt do
        local strand={}

        -- generate a random direction
        local dir=rnd(1)

        -- store centre coords
        local x=centre_x
        local y=centre_y

        -- loop for random length up to 10
        for i=1, flr(rnd(10))+1 do
            -- increase x and y, generally towards the generated direction (with some variance)
            x+=cos(dir+rnd(0.25)-0.125)*rnd(max_seg_length)
            y+=sin(dir+rnd(0.25)-0.125)*rnd(max_seg_length)

            -- append this point to the list
            add(strand, {x, y})
        end

        -- once strand is generated, add it to output
        add(output[2], strand)
    end
    return output
end

function draw_crack(crack, col)
    -- store the centre coords from the crack table
    local centre=crack[1]

    -- loop through each strand of the crack
    for strand in all(crack[2]) do
        -- set the centre point
        line(centre.x, centre.y, centre.x, centre.y, col)

        -- for each endpoint, draw a line from the previous endpoint
        for endpoint in all(strand) do
            line(endpoint[1], endpoint[2], col)
        end
    end
end