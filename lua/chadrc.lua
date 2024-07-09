-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

-- local colors = require("base46").get_theme_tb "base_30"
---@type ChadrcConfig
local M = {}

-- local highlights = require "highlights"
local colors = {
  blue = "#7aa2f7",
  green = "#9ece6a",
  red = "#f7768e",
  orange = "#ff9e64",
  yellow = "#e0af68",
  purple = "#bb9af7",
  cyan = "#7dcfff",
  grey = "#565f89",
  black = "#1a1b26",
  white = "#c0caf5",
  background = "#24283b",
}

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


  hl_override = {
    DiffAdd = {
      fg = colors.green,
      bg = colors.background,
    },

    DiffChange = {
      fg = colors.blue,
      bg = colors.background,
    },

    DiffDelete = {
      fg = colors.red,
      bg = colors.background,
    },

    DiffText = {
      fg = colors.yellow,
      bg = colors.background,
    },

    DiffAdded = {
      fg = colors.green,
      bg = colors.background,
    },

    DiffRemoved = {
      fg = colors.red,
      bg = colors.background,
    },

    DiffFile = {
      fg = colors.blue,
      bg = colors.background,
    },

    DiffNewFile = {
      fg = colors.green,
      bg = colors.background,
    },

    DiffOldFile = {
      fg = colors.red,
      bg = colors.background,
    },
  },

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
