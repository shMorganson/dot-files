return {
  {
    'itsvinayak/nvim-notes.nvim',
    dependencies = {
      -- 'nvim-telescope/telescope.nvim', -- Add Telescope as a dependency
      -- 'folke/which-key.nvim', -- Add WhichKey as a dependency (optional)
    },
    config = function()
      require('notes').setup {
        -- Optional configurations
        path = '~/.notes', -- Custom path for notes (default is '~/.notes')
        log_enabled = true, -- Enable logging (default is false)
        log_level = 'INFO', -- Set log level to INFO
        filetype = 'txt', -- Sets the notes filetype default is 'md'
      }

    end,
  },
}
