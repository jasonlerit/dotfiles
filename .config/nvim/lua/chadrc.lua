-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = true,
}

M.ui = {
  cmp = {
    style = "atom_colored",
  },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

return M
