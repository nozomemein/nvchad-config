return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup {
        fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
        root_patterns = { ".git", "pubspec.yaml" }
      }
    end,
  },
}
