return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.djlint,
				null_ls.builtins.formatting.prettier.with({
					extra_args = { "--single-quote" },
				}),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black.with({
					extra_args = { "--line-length=80" },
				}),
				null_ls.builtins.diagnostics.mypy.with({
					extra_args = function()
						local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
						return { "--python-executable", virtual .. "/bin/python3" }
					end,
				}),
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
