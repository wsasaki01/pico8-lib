function collide(x1, y1, w1, h1, x2, y2, w2, h2)
    -- check collision between two rectangles
        -- calculate centre coords for both rectangles
        local centre1 = {x=x1+(w1/2), y=(y1+(h1/2))}
        local centre2 = {x2+(w2/2), y=(y2+(h2/2))}
        
        -- calculate distance between centres
        local width = abs(centre2.x-centre1.x)
        local height = abs(centre2.y-centre1.y)
    
        -- calculate maximum width and height between both centres
        max_width = (w1/2) + (w2/2)
        max_height = (h1/2) + (h2/2)
    
        -- if the distance between centres is less than maximums, return true
        if width <= max_width and height <= max_height then
            return true
        else
            return false
        end
    end