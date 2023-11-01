---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'gruvbox',
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
