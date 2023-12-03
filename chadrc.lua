---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  telescope = {
     style = "bordered"
  }, -- borderless / bordered

  theme = "tokyodark",
  theme_toggle = { "tokyodark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    separator_style = "arrow",
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
