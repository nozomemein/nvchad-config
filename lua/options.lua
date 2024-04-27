require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local o = vim.o
-- nvim-ufo settings
-- fold levelを99に設定しないと、ファイルを開いたときにfoldされてしまう
o.foldlevel = 99
o.foldlevelstart = 99

local autocmd = vim.api.nvim_create_autocmd
-- highlight yank contents
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { highlight = "IncSearch", timeout = 100 }
  end,
})
