require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!


local autocmd = vim.api.nvim_create_autocmd
-- highlight yank contents
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { highlight = "IncSearch", timeout = 100 }
  end,
})
