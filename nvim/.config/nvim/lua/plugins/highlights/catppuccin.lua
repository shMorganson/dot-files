local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup{
  transparent_background = false,
  term_colors = true,
  styles = {
	  comments = "italic",
	  functions = "italic",
	  keywords = "italic",
	  strings = "NONE",
	  variables = "italic",
  },
  integrations = {
	  treesitter = true,
	  native_lsp = {
		  enabled = true,
		  virtual_text = {
			  errors = "italic",
			  hints = "italic",
			  warnings = "italic",
			  information = "italic",
      },
      underlines = {
        errors = "underline",
        hints = "underline",
        warnings = "underline",
        information = "underline",
      },
    },
    cmp = true,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = false,
    },
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    markdown = true,
    symbols_outline = true,
  },
}
