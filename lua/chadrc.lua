-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

-- local colors = require("base46").get_theme_tb "base_30"
---@type ChadrcConfig
local M = {}

local highlights = require "highlights"

M.ui = {
  theme = "tokyonight",
  -- nvdash (dashboard)
  telescope = { style = "bordered" }, -- borderless / bordered
  statusline = {
    theme = "vscode_colored",         -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },

  hl_override = highlights.hl_override,

  -- lazyload it when there are 1+ buffers
  tabufline = {
    show_numbers = false,
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },
  nvdash = {
    load_on_startup = true,

    header = {
      "                                   ",
      "███████ ███████ ███    ██ ███    ██",
      "   ███  ██      ████   ██ ████   ██",
      "  ███   █████   ██ ██  ██ ██ ██  ██",
      " ███    ██      ██  ██ ██ ██  ██ ██",
      "███████ ███████ ██   ████ ██   ████",
      "                                   ",
      " ███    ██ ██    ██ ██ ███    ███  ",
      " ████   ██ ██    ██ ██ ████  ████  ",
      " ██ ██  ██ ██    ██ ██ ██ ████ ██  ",
      " ██  ██ ██  ██  ██  ██ ██  ██  ██  ",
      " ██   ████   ████   ██ ██      ██  ",
      "                                   ",
    },

    buttons = {
      -- { "  Sessions", "Spc S", "Telescope session-lens" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Files", "Spc f f", "Telescope files" },
      { "󰈭  Find Word", "Spc f w", "<cmd>lua require 'telescope'.extensions.live_grep_args.live_grep_args()<CR>" },
      { "  Bookmarks", "Spc m a", "<cmd>lua require 'telescope'.extensions.vim_bookmarks.all()<cr>" },
    },
  },

}

return M
