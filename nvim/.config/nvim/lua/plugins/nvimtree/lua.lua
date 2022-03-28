local nvimtree_status_ok, nvimtree = pcall(require, "nvim-tree")
if not nvimtree_status_ok then
  print("nvim-tree is either broken or not installed.")
  return
end

-- Variables needed for accessing vim api
local g = vim.g

-- Settings for nvim-tree
g.nvim_tree_refresh_wait = 300
g.nvim_tree_git_hl = 0
g.nvim_tree_root_folder_modifier = ':~'
g.nvim_tree_icon_padding = ' '
g.nvim_tree_symlink_arrow = ' >> '
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_create_in_closed_folder = 0

g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  --folder_arrows = 1
}

g.nvim_tree_icons = {
  default = "",
  symlink = "",
    git = {
      unstaged = "✗",
      staged = "✓",
      unmerged = "",
      renamed = "➜",
      untracked = "★",
      deleted = "",
      ignored = "◌"
    },
    folder = {
      arrow_open = "",
      arrow_closed = "",
      default = " ",
      open = " ",
      empty = " ",
      empty_open = " ",
      symlink = " ",
      symlink_open = " ",
    },
}

local get_lua_cb = function(cb_name)
  return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = true,
  update_cwd          = true,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  --diagnostics = {
  --  enable = true,
  --  icons = {
  --    hint = "",
  --    info = "",
  --    warning = "",
  --    error = "",
  --  }
  --},
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
 },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  open_file = {
    quit_on_open = false,
    resize_window = false,
    window_picker = {
      enable = true,
      chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
      exclude = {
      filetype = { "notify", "packer", "fugitive", "fugitiveblame", },
      buftype  = { "nofile", "terminal", "help", },
      }
    }
  }
}
