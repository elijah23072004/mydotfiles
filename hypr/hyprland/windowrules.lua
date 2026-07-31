hl.window_rule({
    match = {
        class = "rdesktop",
    },
    fullscreen = true,
})

hl.window_rule({
    tile = true,
    match = {
        class = "tile on",
    },
    -- TODO: review rule: "match:title chromium"
})

hl.window_rule({
    float  =true,
    match = {
        title = "blueman-manager",
    },
})

hl.window_rule({
    float=true,
    match = {
        title = "nm-connection-editor",
    },
})

hl.window_rule({
    float=true,
    match = {
        title = "qalculate-gtk",
    },
})

hl.window_rule({
    float=true,
    match = {
        title = "rofi",
    },
})

hl.window_rule({
    stay_focused=true,
    match = {
        class = "rofi",
    },
})

hl.window_rule({
    stay_focused=true,
    match = {
        class = "albert",
    },
})

hl.window_rule({
    tile=true,
    match = {
        class = "sdl-freerdp3",
    },
})




hl.layer_rule({
    match = {
        namespace = "waybar",
    },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.01,
})

-- this is so entirely transparent things aren't blurred.

-- Add blur to eww widgets

hl.layer_rule({
    match = {
        namespace = "eww",
    },
    blur = true,
    blur_popups = true,
})


