function shake(cx, cy)
-- apply screen shake
    -- apply movement to current camera position
    -- from -20 to 20
    local x = cx + 20-rnd(40)
    local y = cy + 20-rnd(40)

    -- apply strength
    x *= shake_strength
    y *= shake_strength

    -- move the camera to shaken position
    camera(x, y)

    -- decay shake strength
    shake_strength *= 0.75
    -- eliminate shake if strength gets low enough
    if (shake_strength < 0.05) shake_strength = 0
end