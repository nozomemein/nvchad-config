return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "solargraph",
      "typescript-language-server",
      "gopls"
    }
  }
}
