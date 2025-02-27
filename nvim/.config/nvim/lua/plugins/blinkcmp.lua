return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'L3MON4D3/LuaSnip',
    },
    opts = {
      keymap = { preset = 'default' },
      appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
      -- snippets = { preset  = 'luasnip' }
      },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
   },
  }
}
