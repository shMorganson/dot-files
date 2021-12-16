vim.cmd[[packadd renamer.nvim]]

local mappings_utils = require('renamer.mappings.utils')
require('renamer').setup {
    title = 'Rename',          -- The popup title, shown if `border` is true
    padding = {                -- The padding around the popup content
        top = 0,
        left = 0,
        bottom = 0,
        right = 0,
    },
    border = true,             -- Whether or not to shown a border around the popup

    border_chars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },  -- The characters which make up the border

    show_refs = true,          -- Whether or not to highlight the current word references through LSP
    mappings = {               -- The keymaps available while in the `renamer` buffer. The example belowoverrides the default values, but you can add others as well.
        ['<c-i>'] = mappings_utils.set_cursor_to_start,
        ['<c-a>'] = mappings_utils.set_cursor_to_end,
        ['<c-e>'] = mappings_utils.set_cursor_to_word_end,
        ['<c-b>'] = mappings_utils.set_cursor_to_word_start,
        ['<c-c>'] = mappings_utils.clear_line,
        ['<c-u>'] = mappings_utils.undo,
        ['<c-r>'] = mappings_utils.redo,
    },
}

