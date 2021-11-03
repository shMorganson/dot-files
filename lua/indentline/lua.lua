vim.cmd [[packadd indent-blankline.nvim]]

local opt = vim.opt

opt.listchars = {
  space = "⋅",
}

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_end_of_line = false,
  buftype_exclude = {"terminal", "minimap", "packer"},
  filetype_exclude = {'help', 'packer'}
}
