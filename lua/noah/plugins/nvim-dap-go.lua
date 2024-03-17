return {
  "leoluz/nvim-dap-go",
  ft = "go", -- Load this plugin only for Go files
  dependencies = { "mfussenegger/nvim-dap" }, -- Specify dependencies as a list
  config = function()
    require("dap-go").setup()
    end
}