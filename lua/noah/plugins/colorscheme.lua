return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			transparent_background = false, -- Set to true for transparency
		})

		-- Apply the colorscheme
		vim.cmd("colorscheme rose-pine")
	end,
}
