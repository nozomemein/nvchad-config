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
map("n", "<leader>pm", "<cmd>Mason<CR>", {desc = "Open Mason Installer"})





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

