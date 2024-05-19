return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            local ls = require("luasnip")
            ls.lsp_expand(args.body)
            vim.keymap.set({ "i" }, "<C-K>", function()
              ls.expand()
            end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-L>", function()
              ls.jump(1)
            end, { silent = true })
            vim.keymap.set({ "i", "s" }, "<C-J>", function()
              ls.jump(-1)
            end, { silent = true })
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp", filetypes = { "javascript", "typescript" } },
          { name = "luasnip",  filetypes = { "javascript", "typescript" } }, -- For luasnip users.
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
