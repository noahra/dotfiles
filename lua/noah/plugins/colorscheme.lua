return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			variant = "moon", -- 'auto'|'main'|'moon'|'dawn'
			transparent_background = false,
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
