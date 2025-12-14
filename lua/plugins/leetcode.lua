return {
  "kawre/leetcode.nvim",
  cmd = "Leet",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("leetcode").setup({
      lang = "rust",
      hooks = {
        ---@type fun(question: lc.ui.Question)[]
        ["question_enter"] = {
          function()
            -- os.execute "sleep 1"
            local file_extension = vim.fn.expand "%:e"
            if file_extension == "rs" then
              local bash_script = vim.fn.stdpath("config") .. "/scripts/leetcode/init_rust.sh"
              local success, error_message = os.execute(bash_script)
              if success then
                print "Successfully updated rust-project.json"
                vim.cmd "LspRestart rust_analyzer"
              else
                print("Failed update rust-project.json. Error: " .. error_message)
              end
            end
          end,
        },
      }
    })
  end,
}
