return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "slim-template/vim-slim",
    lazy = false,
  },
  {
    "tpope/vim-rails",
    lazy = false,
  },
  {
    "noprompt/vim-yardoc",
    lazy = false,
  },
  {
    lazy = false,
    "bronson/vim-trailing-whitespace",
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000000,
    opts = {},
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      require("gitsigns").setup {
        current_line_blame = true,
      }
    end,
  },
  -- NOTE: auto-settionが原因でsytaxが効かなくなるのでコメントアウト
  -- 解決するまでautosessionは使わない
  -- {
  --   "rmagatti/auto-session",
  --   lazy = false,
  --   config = function()
  --     require "configs.auto-session"
  --   end,
  -- },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    lazy = false,
    config = function()
      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { 'treesitter', 'indent' }
        end
      })
    end
  },
  { "sindrets/diffview.nvim", lazy = false },
  {
    "mogulla3/rspec.nvim",
    lazy = false,
    config = function()
      require("rspec").setup {
        -- Whether or not to open the quickfix window when the spec fails.
        open_quickfix_when_spec_failed = true,
      }
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules/", "vendor/" },
      }
    }
  },
  {
    "monaqa/dial.nvim",
  },
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    lazy = false,
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "mgierada/lazydocker.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function() require("lazydocker").setup {} end,
    lazy = false,
    event = "BufRead", -- or any other event you might want to use.
  },
}
