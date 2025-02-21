-- Jira Plugin for Neovim so you can edit issues. 
-- https://github.com/janBorowy/jirac.nvim

return {
{
  "janBorowy/jirac.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "grapp-dev/nui-components.nvim",
       "nvim-lua/plenary.nvim"
    },
  config = function()
    require("jirac").setup({
    email = vim.env.JIRA_USER,
    jira_domain = vim.env.JIRA_DOMAIN,
    api_key = vim.env.JIRA_API_TOKEN,
    config = {
        default_project_key = "itsm",
        keymaps = {
            ["keymap_name"] = {
                mode = 'n',
                key = 'q'
            },
        },
        window_width = 150,
        window_height = 40
    }
})
end
}
}

