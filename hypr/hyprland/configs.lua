hl.config( { 
    input = {
        kb_layout = "gb",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = false,
            disable_while_typing = true,
        },
    },
    cursor = { no_hardware_cursors = true},
    animations = { enabled=true},


})

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 1,
        col = {
            active_border = "#181818",
            inactive_border = "#181818",
        },

        resize_on_border = true,

        layout = "dwindle",
        allow_tearing = false,
    }
})

hl.config({

    decoration ={
        rounding = 12,
        active_opacity = 1.0,
        inactive_opacity = 1,

        shadow= {
            enabled = true,
            range = 16,
            render_power = 5,
        },
        blur = {
            enabled = true,
            new_optimizations = true,
            size = 2,
            passes = 3,
            vibrancy = 0.1696,
        }}})
hl.config({
    dwindle = { preserve_split = true},
})

hl.config({     
    master ={
        new_status = "master"
    }
})
hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering= true,
        middle_click_paste = false,
    }})

