-- Setup nvim autopairs
local status_ok, buffline = pcall(require, "bufferline")
if not status_ok then
  print("Bufferline is etiher broken or not installed.")
  return
end

require('bufferline').setup {
  options = {
    indicator_icon = ' ',
    numbers = "buffer_id",
    diagnostics = "nvim-cmp",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
    local icon = level:match("error") and " " or " "
    return " " .. icon .. count
    end,
    show_buffer_close_icons = true,
    show_close_icon = false,
    offsets = {
      {
        filetype = 'nerdtree',
        text = '  File Explorer',
        highlight = 'Directory',
        text_align = 'left',
      },
    },

    modified_icon = ' ',
    separator_style = 'thin',

    custom_areas = {
      left = function()
        return {
          { text = '    ', guifg = '#029632',  },
        }
      end,
    },
  },
 -- Highlight for Inspired Github
    highlights = {
        background = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            guifg = { attribute = 'fg', highlight = 'LineNr' },
        },
       fill = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            guifg = { attribute = 'fg', highlight = 'EndOfBuffer' },
        },
        separator = {
            guifg = { attribute = 'fg', highlight = 'EndOfBuffer' },
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
        },
        close_button = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            guifg = { attribute = 'fg', highlight = 'LineNr' },
        },
        close_button_visible = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            guifg = { attribute = 'fg', highlight = 'LineNr' },
        },
        close_button_selected = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            guifg = { attribute = 'fg', highlight = 'LineNr' },
        },
        buffer_visible = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            guifg = { attribute = 'fg', highlight = 'LineNr' },
        },
        modified = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
        },
        modified_visible = {
            guibg = { attribute = 'bg', highlight = 'EndOfBuffer' },
        },

    },
}
