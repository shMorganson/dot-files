vim.cmd [[packadd nvim-tree.lua]]

vim.o.termguicolors = true

local g = vim.g

g.nvim_tree_side = "left"
g.nvim_tree_width = 25
g.nvim_tree_auto_open = 0
g.nvim_tree_follow = 1
g.nvim_tree_follow_update_path = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = ':~'
g.nvim_tree_tab_open = 1
g.nvim_tree_auto_resize = 1
g.nvim_tree_disable_netrw = 1
g.nvim_tree_hijack_netrw = 1
g.nvim_tree_add_trailing = 1
g.nvim_tree_group_empty = 0
g.nvim_tree_lsp_diagnostics = 0
g.nvim_tree_disable_window_picker = 0
g.nvim_tree_hijack_cursor = 1
g.nvim_tree_icon_padding = ' '
g.nvim_tree_symlink_arrow = ' >> '
g.nvim_tree_update_cwd = 1
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_refresh_wait = 1000

g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1
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
       default = "",
       open = "",
       empty = "",
       empty_open = "",
       symlink = "",
       symlink_open = "",
     },

}

local get_lua_cb = function(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end
