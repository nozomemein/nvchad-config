-- Rspec adapter
local function get_rspec_adapter()
  return require("neotest-rspec")({
    rspec_cmd = function()
      return vim.tbl_flatten({
        "docker",
        "compose",
        "exec",
        "-i",
        "-w", "/myapp",
        "-e", "RAILS_ENV=test",
        "puma",
        "bundle",
        "exec",
        "rspec"
      })
    end,
    transform_spec_path = function(path)
      local prefix = require('neotest-rspec').root(path)
      return string.sub(path, string.len(prefix) + 2, -1)
    end,
    results_path = "tmp/rspec.output"
  })
end


return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "olimorris/neotest-rspec",
    },
    config = function()
      require("neotest").setup({
        -- rspec adapter
        adapters = {
          get_rspec_adapter(),
          -- add here if you want to use other adapters
          -- get_xxx_adapter(),
        },
      })
    end
  }
}
