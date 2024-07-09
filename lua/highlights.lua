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
    fg = colors.purple,
    bg = colors.background,
  },

  DiffChange = {
    fg = colors.purple,
    bg = colors.background,
  },

  DiffDelete = {
    fg = colors.purple,
    bg = colors.background,
  },

  DiffText = {
    fg = colors.purple,
    bg = colors.background,
  },

  DiffAdded = {
    fg = colors.purple,
    bg = colors.background,
  },

  DiffRemoved = {
    fg = colors.purple,
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

function M.setup()
  for group, opts in pairs(M.override) do
    local cmd = 'highlight ' .. group
    if opts.fg then
      cmd = cmd .. ' guifg=' .. opts.fg
    end
    if opts.bg then
      cmd = cmd .. ' guibg=' .. opts.bg
    end
    vim.cmd(cmd)
  end
end

return M
