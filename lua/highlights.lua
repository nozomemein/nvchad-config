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
local M = {}

M.override = {
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
}

return M
