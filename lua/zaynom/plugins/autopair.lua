return {
	"windwp/nvim-autopairs",
	opts = {
    check_ts = true,
		fast_wrap = {
			map = "<M-e>",
			chars = { "{", "[", "(", '"', "'" },
			pattern = [=[[%'%"%>%]%)%}%,]]=],
			end_key = "$",
			before_key = "h",
			after_key = "l",
			cursor_pos_before = true,
			keys = "qwertyuiopzxcvbnmasdfghjkl",
			manual_position = true,
			highlight = "Search",
			highlight_grey = "Comment",
		},
		disable_filetype = { "TelescopePrompt", "vim" },
	},
	config = function(_, opts)
		require("nvim-autopairs").setup(opts)

		-- setup cmp for autopairs
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
-- return {
--   "windwp/nvim-autopairs",
--   event = "InsertEnter",
--   -- config = true,
--   -- use opts = {} for passing setup options
--   -- this is equalent to setup({}) function
--   -- opts = {
--   config = function()
--     -- If you want insert `(` after select function or method item
--     local cmp = require("cmp")
--
--     local cmp_autopairs = require("nvim-autopairs.completion.cmp")
--     cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
--   end,
--   -- },
-- }
