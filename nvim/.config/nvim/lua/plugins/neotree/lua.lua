require("neo-tree").setup({
  close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = false,
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
    },
    never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
     ".DS_Store",
     "thumbs.db",
    },
    window = {
      bind_to_cwd = false, -- true creates a 2-way binding between vim's cwd and neo-tree's root
      sidebar = "left",   -- sidebar is when position = left or right
      mappings = {
        ["<F5>"] = "refresh",
        ["o"] = "open",
      },
    },
  },
  default_component_configs = {
    window = {
      position = "left",
      width = 10,
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
      -- then these will never be used.
      default = "*",
      highlight = "NeoTreeFileIcon",
    },
    git_status = {
      symbols = {
        -- Change type
        added     = "✚",
        deleted   = "✖",
        modified  = "",
        renamed   = "󰁕",
        -- Status type
        untracked = "",
        ignored   = "",
        unstaged  = "󰄱",
        staged    = "",
        conflict  = "",
      }
    }
  }
})
