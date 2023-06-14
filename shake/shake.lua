function shake(cx, cy)
-- apply screen shake
    -- screen position
    local x = cx+20-rnd(40)
    local y = cy+20-rnd(40)

    -- apply strength
    x *= shake_strength
    y *= shake_strength

    -- move the camera
    camera(x, y)

    -- decay the shake scrength
    shake_strength *= 0.75
    if (shake_strength < 0.05) shake_strength = 0
end