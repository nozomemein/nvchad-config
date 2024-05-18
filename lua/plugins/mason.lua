-- see nvim-lspconfig for more info on server configurations
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      opts = {
        ensure_installed = {
          "lua_ls",
          "solargraph",
          "typescript-language-server",
          "gopls",
          "terraform-ls",
          "rust-analyzer"
        }
      }
    }
  end,
}
