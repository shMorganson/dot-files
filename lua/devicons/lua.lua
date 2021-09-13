vim.cmd [[packadd nvim-web-devicons]]

require "nvim-web-devicons".setup {
    override = {
        sh = {
            icon = "",
            color = "#B48EAD",
            name = "sh"
        },

    }
}
