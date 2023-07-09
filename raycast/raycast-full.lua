function raycast(x0, y0, x1, y1, cx, cy)
    --angle between origin and destination
    angle = atan2(x1-x0, y1-y0)

    --horizontal and vertical components to next pixel
    x_component = cos(angle)
    y_component = sin(angle)

    --list of visited coordinates
    --start from origin
    raycoords = {
        {x0, y0}
    }

    --if dist. to next pixel is positive, set increment to positive
    if x_component >= 0 then
        x_increment = 1
    else
        --else negative
        x_increment = -1
    end

    --repeat for y
    if y_component >= 0 then
        y_increment = 1
    else 
        y_increment = -1
    end

    --copy the origin coords to use in calculations
    local x = x0
    local y = y0

    --store the most recent visited pixel
    --at the start, this is the origin
    current = {x0, y0}

    --while within camera bounds...
    while
    (cx <= raycoords[#raycoords][1]) and
    (raycoords[#raycoords][1] <= cx+128) and
    (cy <= raycoords[#raycoords][2]) and
    (raycoords[#raycoords][2] <= cy+128) do
        --calculate the next horizontal and vertical coords
        next_vertical = current[1]+1
        next_horizontal = current[2]+1

        --calculate the distances to the next horizontal and vertical pixels
        x_dist = (next_vertical - x) / x_component
        y_dist = (next_horizontal - y) / y_component

        --if moving horizontally is next...
        if x_dist < y_dist then
            --move to the next pixel
            current[1] += x_increment

            --change the horizontal position
            y += tan(angle) * (next_vertical - x)

            --set the current x to the pixel we've moved to
            x = next_vertical
        --if moving vertically is next...
        else
            --move to the next pixel
            current[2] += y_increment

            --change the vertical position
            x += (next_horizontal - y) / tan(angle) 

            --set the current y to the pixel we've moved to
            y = next_horizontal
        end

        --copy the coords
        local submit = {}
        for coord in all(current) do
            add(submit, coord)
        end

        --add coords to the list
        add(raycoords, submit)
    end

    return raycoords
end

function tan(angle)
    return sin(angle)/cos(angle)
end