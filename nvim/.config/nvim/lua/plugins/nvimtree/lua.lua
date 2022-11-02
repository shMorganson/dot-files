local nvimtree_status_ok, nvimtree = pcall(require, "nvim-tree")
if not nvimtree_status_ok then
  print("nvim-tree is either broken or not installed.")
  return
end

local get_lua_cb = function(cb_name)
  return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

require'nvim-tree'.setup {
  disable_netrw       = true,
  create_in_closed_folder = false,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  hijack_cursor       = true,
  respect_buf_cwd = true,
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
    adaptive_size = false,
    width = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  renderer = {
    highlight_git = false,
    root_folder_modifier = ":~",
    highlight_opened_files = "icon",
    --indent_markers = {
    --  enable = true,
    --  icons = {
    --    corner = "└ ",
    --    edge = "│ ",
    --    none = " ",
    --  },
    --},
    icons = {
      webdev_colors = true,
      git_placement = "after",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = " ",
          open = "  ",
          empty = " ",
          empty_open = " ",
          symlink = " ",
          symlink_open = " ",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌"
        },
      },
    }
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "fugitive", "fugitiveblame", },
          buftype = { "nofile", "terminal", "help", },
        },
      },
    },
  },
}
