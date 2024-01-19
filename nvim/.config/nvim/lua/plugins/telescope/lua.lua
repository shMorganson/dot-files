local telescope_status_ok, telescope = pcall(require, "telescope")
if not telescope_status_ok then
  print("telescope.nvim is etiher broken or is not installed.")
  return
end

-- Setup Telescope
require('telescope').setup{
  defaults = {
    border = true,
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    layout_config = { prompt_position = "top" },
    prompt_prefix = " ",
    sorting_strategy = "ascending",
    -- winblend = 15,
    dynamic_preview_title = true,
    selection_caret = " ",
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    git_status = {
      git_icons = {
        added = " ",
        changed = " ",
        copied = " ",
        deleted = " ",
        renamed = " ",
        unmerged = " ",
        untracked = " ",
      }
    }
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    media_files = {
        -- filetypes whitelist
        -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
        filetypes = {"png", "webp", "jpg", "jpeg", "mp4", "pdf"},
        find_cmd = "rg" -- find command (defaults to `fd`)
    },
    file_browser = {
      -- theme = "gruvbox",
      dir_icon = "",
      dir_icon_hl = "NvimTreeFolderIcon",
      hidden = true,
    },
    ui_select = {
      require("telescope.themes").get_dropdown {

      }
    },
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- Load Telescope Plugins
require("telescope").load_extension("ui-select")
require("telescope").load_extension("file_browser")
require("telescope").load_extension("notify")
require("telescope").load_extension("cder")
require('telescope').load_extension('neoclip')
