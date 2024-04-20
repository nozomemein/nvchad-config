require "nvchad.mappings"
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Movement enhancements
map("i", "jj", "<ESC>")
map("n", "<S-l>", "$")
map("n", "<S-h>", "^")
--
-- mason installer
map("n", "<leader>pi", "<cmd>Mason<CR>", {desc = "Open Mason Installer"})

-- Flutter and RSpec commands
map("n", "<leader>rl", ":FlutterLspRestart<CR>", { desc = "Restart Flutter LSP" })
map("n", "<leader>rn", ":RSpecNearest<CR>", { desc = "Run nearest spec", silent = true })
map("n", "<leader>rf", ":RSpecCurrentFile<CR>", { desc = "Run current file spec", silent = true })
map("n", "<leader>rr", ":RSpecRerun<CR>", { desc = "Rerun spec", silent = true })
map("n", "<leader>rF", ":RSpecOnlyFailures<CR>", { desc = "Run only failed spec", silent = true })
map("n", "<leader>rs", ":RSpecShowLastResult<CR>", { desc = "Show spec results", silent = true })

-- Copilot in insert mode
map("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true, replace_keycodes = false })

-- Paste without yanking in visual mode
map("x", "p", '"_dP', { desc = "Paste without yanking", silent = true })

