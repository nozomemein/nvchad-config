require "nvchad.mappings"
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- general
map("i", "jj", "<ESC>")
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>Q", ":qa<CR>", { desc = "Quit Nvchad" })
map("n", "|", "<Cmd>vsplit<CR>", { desc = "Vertical Split" })
map("n", "\\", "<Cmd>split<CR>", { desc = "Horizontal Split" })
map("n", "]b", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "[b", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

-- Movement enhancements
map("n", "<S-l>", "$")
map("n", "<S-h>", "^")


-- lazy plugin manager
map("n", "<leader>pi", function() require("lazy").install() end, { desc = "Install Plugin" })


-- mason installer
map("n", "<leader>pm", "<cmd>Mason<CR>", { desc = "Open Mason Installer" })

-- lazygit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })

-- lazydocker
map("n", "<leader>ld", "<cmd>Lazydocker<CR>", { desc = "LazyDocker" })


-- LSP
-- This overrids default mappings of Nvchad in theory.
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/lspconfig.lua
-- However, it seems default mappings are not working, so I will keep this.
map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true, desc = "Show hover" })
map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true, desc = "Jump to definition" })
map('n', '<leader>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = "Open code actions" })
map('x', '<leader>ca', '<Cmd>lua vim.lsp.buf.range_code_action()<CR>', { noremap = true, silent = true, desc = "Open code actions for selected range" })



-- diffview
map("n", "<leader>gdo", "<cmd>DiffviewOpen<CR>", { desc = "DiffviewOpen" })
map("n", "<leader>gdc", "<cmd>DiffviewClose<CR>", { desc = "DiffviewClose" })
map("n", "<leader>gdb", "<cmd>DiffviewFileHistory<CR>", { desc = "Diffview on current branch" })
map("n", "<leader>gdf", "<cmd>DiffviewFileHistory %<CR>", { desc = "Diffview on current file" })

-- neotest
map("n", "<leader>nr", "<Cmd>lua require('neotest').run.run()<CR>", { desc = "Run the nearest test" })
map("n", "<leader>nf", "<Cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run the tests of current file" })
map("n", "<leader>nR", "<Cmd>lua require('neotest').run.run(vim.fn.getcwd())<CR>", { desc = "Run all tests" })
map("n", "<leader>ns", "<Cmd>lua require('neotest').stop()<CR>", { desc = "Stop the tests" })
map("n", "<leader>no", "<Cmd>lua require('neotest').output.open({ enter = true })<CR>", { desc = "Open output" })
map("n", "<leader>ns", "<Cmd>lua require('neotest').summary.toggle()<CR>", { desc = "Open summary" })


-- RSpec commands
map("n", "<leader>rn", ":RSpecNearest<CR>", { desc = "Run nearest spec", silent = true })
map("n", "<leader>rf", ":RSpecCurrentFile<CR>", { desc = "Run current file spec", silent = true })
map("n", "<leader>rr", ":RSpecRerun<CR>", { desc = "Rerun spec", silent = true })
map("n", "<leader>rF", ":RSpecOnlyFailures<CR>", { desc = "Run only failed spec", silent = true })
map("n", "<leader>rs", ":RSpecShowLastResult<CR>", { desc = "Show spec results", silent = true })

-- Flutter
map("n", "<leader>rl", ":FlutterLspRestart<CR>", { desc = "Restart Flutter LSP" })

-- dial.nvim
map("n", "<C-a>", function()
  require("dial.map").manipulate("increment", "normal")
end, { desc = "Increment number under cursor" })

map("n", "<C-x>", function()
  require("dial.map").manipulate("decrement", "normal")
end, { desc = "Decrement number under cursor" })

map("v", "<C-a>", function()
  require("dial.map").manipulate("increment", "visual")
end, { desc = "Increment number under visual" })

map("v", "<C-x>", function()
  require("dial.map").manipulate("decrement", "visual")
end, { desc = "Decrement number under visual" })

-- treesj
map("n", "<leader>mt", "<cmd>lua require('treesj').toggle()<CR>", { desc = "Toggle Treesj" })

-- Copilot in insert mode
map("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true, replace_keycodes = false })

-- Paste without yanking in visual mode
map("x", "p", '"_dP', { desc = "Paste without yanking", silent = true })
