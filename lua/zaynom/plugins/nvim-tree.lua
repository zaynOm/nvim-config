return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			view = {
				side = "right",
			},
		})
		-- nvim-tree
		--vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')
		vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")
	end,
}
