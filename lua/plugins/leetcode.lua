return {
  "kawre/leetcode.nvim",
  cmd = "Leet",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("leetcode").setup()
  end,
}
