return {
  "leoluz/nvim-dap-go",
  ft = "go", -- Load this plugin only for Go files
  dependencies = { "mfussenegger/nvim-dap" }, -- Specify dependencies as a list
  config = function()
    -- The 'config' function is used for setting up the plugin after it's loaded.
    -- If 'opts' was being used to pass specific configurations to 'dap-go.setup',
    -- with lazy.nvim, you might directly include those configurations here,
    -- or if 'opts' is managed externally, ensure it's accessible at this point.
    require("dap-go").setup()
    end
}