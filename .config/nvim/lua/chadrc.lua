-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = true,

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  cmp = {
    style = "atom_colored",
  },
  -- hl_override = {
  --   Visual = {
  --     bg = "#42464e",
  --   },
  -- },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
