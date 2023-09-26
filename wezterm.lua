local utils = require 'utils'

local startup = require 'startup'
local keys = require 'keys'
local ui = require 'ui'
local title = require 'title'

local other_opts = {
    use_ime = true,
    check_for_updates = true,
    check_for_updates_interval_seconds = 7 * 24 * 60 * 60,
    use_dead_keys = false,
    scrollback_lines = 1000000
}
return utils.merge({ other_opts, startup, keys, ui, title })
