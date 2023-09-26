local wezterm = require 'wezterm'
local act = wezterm.action
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})

    -- window:gui_window():maximize()
    window:gui_window():set_position(100,50)
    window:gui_window():set_inner_size(3000,2000)
    window:gui_window():perform_action(act.ActivateTab(0), pane)
end)

return {}
