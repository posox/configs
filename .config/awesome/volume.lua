local wibox = require("wibox")
local awful = require("awful")

volume_widget = wibox.widget.textbox()

volume_widget:set_align("right")
volume_widget:set_font("ubuntu regular 9")
volume_widget:buttons(awful.util.table.join(
                      awful.button({ }, 4, function () awful.util.spawn("amixer set Master 1+") end),
                      awful.button({ }, 5, function () awful.util.spawn("amixer set Master 1-") end)))

function update_volume(widget)
    local fd = io.popen("amixer sget Master")
    local status = fd:read("*all")
    fd:close()
    
    local volume = tonumber(string.match(status, "(%d?%d?%d)%%"))
    -- volume = string.format("% 3d", volume)
    
    status = string.match(status, "%[(o[^%]]*)%]")
    
    volume = "Vol: " .. volume .. "  |  "
    widget:set_markup(volume)
end

update_volume(volume_widget)

mytimer = timer({ timeout = 0.1 })
mytimer:connect_signal("timeout", function () update_volume(volume_widget) end)
mytimer:start()
