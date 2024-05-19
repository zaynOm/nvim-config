return {
	"nvim-treesitter/nvim-treesitter",
	-- build = function()
	-- 	require("nvim-treesitter.install").update({ with_sync = true })()
	-- end,

	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "lua", "javascript", "typescript", "html", "css", "tsx", "python" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
