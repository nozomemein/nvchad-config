require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local o = vim.o

-- general settings
o.expandtab = true   -- Use spaces instead of tabs
o.tabstop = 2        -- Number of spaces tabs count for
o.shiftwidth = 2     -- Number of spaces to use for autoindent
o.softtabstop = 2    -- Number of spaces a tab counts for in insert mode
o.autoindent = true  -- Copy indent from current line when starting a new line
o.smartindent = true -- Makes indenting smart
o.number = true      -- Show line numbers
o.relativenumber = false -- Show relative line numbers
o.hlsearch = true    -- Highlight search results
o.ignorecase = true  -- Case insensitive searching
o.laststatus = 2     -- Always display the status line
o.incsearch = true   -- Incremental search

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
