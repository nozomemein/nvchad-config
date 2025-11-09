local configs = require("nvchad.configs.lspconfig")
local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local servers = { "html", "cssls", "solargraph", "clangd", "rust_analyzer", "gopls", "tailwindcss", "ts_ls" }

local common = {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

for _, server in ipairs(servers) do
  vim.lsp.config(server, common)
  vim.lsp.enable(server)
end

vim.lsp.config("ts_ls", vim.tbl_deep_extend("force", common, {
  -- settings = { ... },
}))
vim.lsp.enable("ts_ls")
