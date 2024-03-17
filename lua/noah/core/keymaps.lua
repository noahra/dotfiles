-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

---------------------
-- nvim-dap Keymaps -------------------

-- Add breakpoint
keymap.set("n", "<leader>db", function() require('dap').toggle_breakpoint() end, { desc = "Toggle breakpoint" })

-- Step over
keymap.set("n", "<leader>do", function() require('dap').step_over() end, { desc = "Step over" })

-- Step into
keymap.set("n", "<leader>di", function() require('dap').step_into() end, { desc = "Step into" })

-- Step out
keymap.set("n", "<leader>du", function() require('dap').step_out() end, { desc = "Step out" })

-- Open debugging sidebar
keymap.set("n", "<leader>dus", function()
  require('dap.ui.widgets').sidebar(require('dap.ui.widgets').scopes).open()
end, { desc = "Open debugging sidebar" })

-- Debug Go test
keymap.set("n", "<leader>dgt", function() require('dap-go').debug_test() end, { desc = "Debug Go test" })

-- Debug last Go test
keymap.set("n", "<leader>dgl", function() require('dap-go').debug_last() end, { desc = "Debug last Go test" })

