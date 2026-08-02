-- SUPER KEY

local mainMod = "SUPER"

-- Applications

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("kitty"))

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"))

hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("lollypop"))

hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("chromium"))

--bind = $mainMod ,space, exec, pgrep wofi > /dev/null 2>&1 && killall wofi || wofi -S drun -c ~/dotfiles/wofi/config -s ~/dotfiles/wofi/style.css

--bind = $mainMod SHIFT, space,exec , ~/dotfiles/scripts/wofiBrowserSearch.sh --search

--bind = $mainMod CTRL, space, exec , ~/dotfiles/scripts/wofiBrowserSearch.sh --url

hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("albert show"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "space", hl.dsp.exec_cmd("albert show dd"))

hl.bind(mainMod .. " + CTRL" .. " + " .. "space", hl.dsp.exec_cmd("albert show"))

hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("~/dotfiles/scripts/wofiBrowserSearch --dict"))

-- Windows

hl.bind(mainMod .. " + Q", hl.dsp.window.close())

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("~/dotfiles/scripts/filemanager.sh"))

hl.bind(mainMod .. " + T", hl.dsp.window.float())

--bind = $mainMod CTRL SHIFT, T, exec, ~/dotfiles/hypr/scripts/toggleallfloat.sh

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + right", hl.dsp.resizeactive("100 0"))

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + left", hl.dsp.resizeactive("-100 0"))

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + up", hl.dsp.resizeactive("0 -100"))

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + down", hl.dsp.resizeactive("0 100"))

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("kitty nmtui"))

-- Actions

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))

hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("hyprshot --mode region --output-folder ~/Pictures/screenshots/"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "R", hl.dsp.exec_cmd("notify-send Color Picked was: $(hyprpicker --autocopy)"))

--bind = CTRL ALT, 0xffff, exec, wlogout #control alt delete

hl.bind(mainMod .. " + CTRL" .. " + " .. "H", hl.dsp.exec_cmd("~/dotfiles/hypr/scripts/keybindings.sh"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "B", hl.dsp.exec_cmd("~/dotfiles/waybar/launch.sh"))

hl.bind(mainMod .. " + CTRL" .. " + " .. "W", hl.dsp.exec_cmd("~/dotfiles/scripts/restarteww.sh"))

hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("~/dotfiles/scripts/endServices.sh"))

hl.bind(mainMod .. " + CTRL + SHIFT" .. " + " .. "B", hl.dsp.exec_cmd("~/dotfiles/scripts/reload.sh"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "R", hl.dsp.exec_cmd("~/dotfiles/hypr/scripts/loadconfig.sh"))

hl.bind(mainMod .. " + CTRL" .. " + " .. "F", hl.dsp.exec_cmd("~/dotfiles/scripts/filemanager.sh"))

hl.bind(mainMod .. " + CTRL" .. " + " .. "V", hl.dsp.exec_cmd("~/dotfiles/scripts/cliphist.sh d"))

hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("~/dotfiles/scripts/cliphist.sh"))

hl.bind(mainMod .. " + CTRL" .. " + " .. "T", hl.dsp.exec_cmd("~/dotfiles/waybar/themeswitcher.sh"))

--bind = $mainMod CTRL SHIFT, A,exec,  ~/dotfiles/hypr/scripts/ToggleLaptopScreen.sh

hl.bind("CTRL + ALT + " .. "space", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("CTRL + ALT + " .. "left", hl.dsp.exec_cmd("playerctl previous"))

hl.bind("CTRL + ALT + " .. "right", hl.dsp.exec_cmd("playerctl next"))

hl.bind("KP_Up", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))

hl.bind("KP_Down", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))

hl.bind("ALT + SHIFT + CTRL + " .. "S", hl.dsp.exec_cmd("~/dotfiles/scripts/sleep.sh"))

hl.bind(mainMod .. " + f2", hl.dsp.exec_cmd("brightnessctl -q s 0%"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "f2", hl.dsp.exec_cmd("hyprctl hyprsunset temperature -1000"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "f3", hl.dsp.exec_cmd("hyprctl hyprsunset temperature +1000"))

hl.bind(mainMod .. " + f3", hl.dsp.exec_cmd("brightnessctl -q s 50%"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "f3", hl.dsp.exec_cmd("brightnessctl -q s 100%"))

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("obsidian"))

hl.bind(mainMod .. " + SHIFT + CTRL" .. " + " .. "T", hl.dsp.exec_cmd("~/dotfiles/scripts/toggleTrackPad.sh"))

hl.bind(mainMod .. " + f1", hl.dsp.exec_cmd("~/dotfiles/scripts/screenModeHandler.sh regular"))

hl.bind(mainMod .. " + SHIFT" .. " + " .. "f1", hl.dsp.exec_cmd("~/dotfiles/scripts/screenModeHandler.sh movie"))

hl.bind(mainMod .. " + CTRL" .. " + " .. "f1", hl.dsp.exec_cmd("~/dotfiles/scripts/screenModeHandler.sh night"))

-- Workspaces

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))

hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))

hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))

hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))

hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))

hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))

hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))

hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))

hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))

hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

hl.bind(mainMod .. " + SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + CTRL" .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + CTRL" .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + CTRL" .. " + " .. "down", hl.dsp.focus({ workspace = "empty" }))

hl.bind(mainMod .. " + CTRL" .. " + " .. 1, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 1"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 2, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 2"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 3, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 3"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 4, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 4"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 5, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 5"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 6, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 6"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 7, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 7"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 8, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 8"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 9, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 9"))

hl.bind(mainMod .. " + CTRL" .. " + " .. 0, hl.dsp.exec_cmd("python ~/dotfiles/hypr/scripts/swapWindows.py 10"))

-- Fn keys

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -q s +10%"))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -q s 10%-"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"))

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SOURCE@ toggle"))




local MAX_ZOOM =3 
local MIN_ZOOM = 1
local ZOOM_TOGGLE_FACTOR = 1.5 
---@param offset number 
---@return nil
local function zoom(multipler)
    local current = hl.get_config("cursor.zoom_factor")
    if multipler ~= nil then 
        current = current*multipler
    end
    current = math.max(MIN_ZOOM, math.min(MAX_ZOOM,current))
    hl.config( { cursor = { zoom_factor = current}})
end 
local function set_zoom(val)
    hl.config( { cursor = {zoom_factor = val}})
end

local ZOOM_INCREMENT = 0.1
local increase_zoom = function() zoom(1+ZOOM_INCREMENT) end
local decrease_zoom = function() zoom(1-ZOOM_INCREMENT) end
local reset_zoom = function() set_zoom(1) end


hl.bind(mainMod .. " + mouse_up", increase_zoom)

hl.bind(mainMod .. " + mouse_down", decrease_zoom)

hl.bind(mainMod .. " + equal",increase_zoom) 

hl.bind(mainMod .. " + minus", decrease_zoom) 

hl.bind(mainMod .. " + KP_ADD", increase_zoom) 
hl.bind(mainMod .. " + KP_SUBTRACT", decrease_zoom) 

hl.bind(mainMod .. " + SHIFT" .. " + " .. "mouse_up", reset_zoom) 
hl.bind(mainMod .. " + SHIFT" .. " + " .. "mouse_down", reset_zoom) 
hl.bind(mainMod .. " + SHIFT" .. " + " .. "minus", reset_zoom)

hl.bind(mainMod .. " + SHIFT" .. " + " .. "KP_SUBTRACT", reset_zoom)

hl.bind(mainMod .. " + SHIFT" .. " + " .. 0, reset_zoom)

--mouse side button 1
hl.bind(mainMod .. " + mouse:275", reset_zoom)


--mouse side button  2
hl.bind(mainMod .. " + mouse:276", reset_zoom)



