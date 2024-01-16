local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  print("indent_blankline is etiher broken or not installed.")
  return
end

-- Variables
local opt = vim.opt

-- Options
opt.list = true
 opt.listchars = {
   space = "⋅",
 }

-- Configuration for Indent_Blankline
require("ibl").setup ()
--   space_char_blankline = " ",
--   show_current_context = true,
--   show_current_context_start = false,
--   show_end_of_line = false,
--   indent_blankline_use_treesitter = true,
--   buftype_exclude = {"terminal", "nofile", 'vimwiki'},
--   filetype_exclude = {
--     'help',
--     'packer',
--     'nvim-lsp-installer',
--     'NvimTree',
--     'dashboard',
--     'vimwiki'
--   },
--   indent_blankline_bufname_exclude = {'nvim-lsp-installer', 'vimwiki'},
--   indent_blankline_context_patterns = {
--     "class",
--     "return",
--     "function",
--     "method",
--     "^if",
--     "^while",
--     "jsx_element",
--     "^for",
--     "^object",
--     "^table",
--     "block",
--     "arguments",
--     "if_statement",
--     "else_clause",
--     "jsx_element",
--     "jsx_self_closing_element",
--     "try_statement",
--     "catch_clause",
--     "import_statement",
--     "operation_type",
--   },
--   indent_blankline_show_first_indent_level = true,
-- )
