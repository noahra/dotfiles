return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Choose the Mocha flavor
			transparent_background = false, -- Set to true for transparency
		})

		-- Apply the colorscheme
		vim.cmd("colorscheme catppuccin")
	end,
}
