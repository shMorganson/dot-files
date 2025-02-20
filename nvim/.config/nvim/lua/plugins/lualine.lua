return {
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
	        options = {
        theme = "tokyonight"
        ,
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        globalstatus = true,
    },
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '', right = '' }, right_padding = 1 },
      },
      lualine_b = {
        { 'filename', separator = { left = '', right = '' }, },
      },
      lualine_c = { 'branch' },
      lualine_x = {
        {
          'diagnostics',

          -- Table of diagnostic sources, available sources are:
          --   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
          -- or a function that returns a table as such:
          --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
          sources = { 'nvim_diagnostic', 'nvim_lsp' },

          -- Displays diagnostics for the defined severity types
          sections = { 'error', 'warn', 'info', 'hint' },

          diagnostics_color = {
            -- Same values as the general color option can be used here.
            error = 'DiagnosticError', -- Changes diagnostics' error color.
            warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
            info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
            hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
          },
          symbols = {error = ' ', warn = '  ', info = ' ', hint = ' '},
          colored = true,           -- Displays diagnostics status in color if set to true.
          update_in_insert = true, -- Update diagnostics in insert mode.
          always_visible = false,   -- Show diagnostics even if there are none.
        }
      },
      lualine_y = { 'progress', 'fileformat', 'filetype'},
      lualine_z = {
        { 'location', separator = { left = '', right = '' }, left_padding = 1 },
      },
    },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},

        }
    end
},


-- -- Colors for the theme.
--local colors = {
--  blue   = '#286983',
--  cyan   = '#56949F',
--  black  = '#575279',
--  white  = '#FFFAF3',
--  red    = '#B4637A',
--  violet = '#907AA9',
-- grey   = '#CECACD',
--  green  = '#D7827E',
--}

--local anura_theme = {
--  normal = {
--    a = { fg = colors.white, bg = colors.blue },
--    b = { fg = colors.white, bg = colors.grey },
--    c = { fg = colors.grey, ctermbg = 0 },
--    },

--  command = { a = {fg = colors.white, bg = colors.violet} },
--    insert = { a = { fg = colors.white, bg = colors.green} },
--    visual = { a = { fg = colors.white, bg = colors.cyan } },
--    replace = { a = { fg = colors.white, bg = colors.red } },

--  inactive = {
--    a = { fg = colors.white, ctermbg = 0 },
--    b = { fg = colors.white, ctermbg = 0 },
--    c = { fg = colors.black, ctermbg = 0 },
--  },
--}
}
