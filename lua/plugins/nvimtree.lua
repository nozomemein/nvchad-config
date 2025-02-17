-- overdide the default settings
-- https://github.com/NvChad/NvChad/blob/6f25b2739684389ca69ea8229386c098c566c408/lua/nvchad/configs/nvimtree.lua
-- Also see: https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt#L378-L654

return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  opts = function()
    local defaults = require "nvchad.configs.nvimtree"
    return vim.tbl_deep_extend("force", defaults, {
      view = {
        side = "right",
      }
    })
  end,
}
