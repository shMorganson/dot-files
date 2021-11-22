vim.cmd [[packadd indent-blankline.nvim]]

local opt = vim.opt

opt.listchars = {
  space = "⋅",
}

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_end_of_line = false,
  indent_blankline_use_treesitter = true,
  buftype_exclude = {"terminal", "Minimap"},
  filetype_exclude = {'help', 'packer', 'nvim-lsp-installer',},
  indent_blankline_bufname_exclude = {'nvim-lsp-installer'}
}
