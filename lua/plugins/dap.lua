local dap_dependencies = {
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "theHamsta/nvim-dap-virtual-text",
  "nvim-neotest/nvim-nio"
}

return {
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    dependencies = dap_dependencies,
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    dependencies = dap_dependencies,
    config = function()
      require('dapui').setup()
    end
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy = false,
    dependencies = dap_dependencies,
    config = function()
      require("nvim-dap-virtual-text").setup()
    end
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    lazy = false,
    dependencies = dap_dependencies,
    config = function()
      require('dap-go').setup()
    end
  }
}

-- Example for adding Ruby DAP adapter in the future
-- {
--   "your/ruby-dap-adapter",
--   ft = "ruby",
--   lazy = false,
--   dependencies = dap_dependencies,
--   config = function()
--     require('your_ruby_dap_adapter').setup()
--   end
-- }
