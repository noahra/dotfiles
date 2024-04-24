return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local nvimtree = require("nvim-tree")

			-- recommended settings from nvim-tree documentation
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			-- change color for arrows in tree to light blue
			vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#f28749]])
			vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#f28749 ]])

			-- configure nvim-tree
			nvimtree.setup({
				view = {
					width = 35,
					relativenumber = true,
				},
				renderer = {
					indent_markers = {
						enable = true,
					},
					icons = {
						glyphs = {
							folder = {
								arrow_closed = "", -- arrow when folder is closed
								arrow_open = "", -- arrow when folder is open
							},
						},
					},
				},
				actions = {
					open_file = {
						window_picker = {
							enable = false,
						},
					},
				},
				filters = {
					custom = { ".DS_Store" },
				},
				git = {
					ignore = false,
				},
			})

			-- set keymaps for nvim-tree
			local keymap = vim.keymap -- for conciseness

			keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
			keymap.set(
				"n",
				"<leader>ef",
				"<cmd>NvimTreeFindFileToggle<CR>",
				{ desc = "Toggle file explorer on current file" }
			) -- toggle file explorer on current file
			keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
			keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
		end,
	},

	-- nvim-treesitter configuration for enhanced syntax highlighting (including Go support)
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- Automatically compile parsers
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "go" }, -- Ensure the Go parser is installed
				highlight = {
					enable = true, -- Enable syntax highlighting
				},
				indent = {
					enable = true, -- Enable better indentation for Go and other supported languages
				},
			})
		end,
	},
}

