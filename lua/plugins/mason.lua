return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      opts = {
        ensure_installed = {
          "lua_ls",
          "solargraph",
          "typescript-language-server",
          "gopls"
        }
      }
    }
  end,
}
