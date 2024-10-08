local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  vim.notify = require("notify")
  vim.notify("Alpha plugin is not installed or is broken.", "error", {
    title = "Missing or Broken Plugin"
  })
  return
end

local function footer()
  local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/lazy", "*", 0, 1))
  local datetime = os.date("  %m-%d-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
  --local neovide_verion = "  " .. vim.print(vim.g.neovide_version)
  return datetime .. "   Plugins " .. plugins_count .. nvim_version_info
end

-- WIP
--local buttonhl = function(shortcut, text, command, hl)
--    local button = dashboard.button(shortcut, text, command)
--    button.opts.hl_shortcut = hl
--    return button
--end
-- use like this
--dashboard.section.buttons.val = {
--    buttonhl("n", "  New file", ":enew ", "NonText"),
--    ...
--}


local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
 [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
 [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
 [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
 [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
 [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
 [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

dashboard.section.buttons.val = {
  dashboard.button("<leader> f b", "   File Browser", ":Telescope file_browser <CR>"),
  dashboard.button("<leader> e n", "   New File", ":ene <BAR> startinsert <CR>"),
  dashboard.button("<leader> f p", "   Find Project", ":Telescope projects <CR>"),
  dashboard.button("<leader> f h", "   Recently Files", ":Telescope oldfiles <CR>"),
  dashboard.button("<leader> w w", "   Notes", ":VimwikiIndex <CR>"),
  dashboard.button("<leader>   u", "   Update Plugins", ":Lazy update <CR>"),
  dashboard.button("<leader> i p", "   Add/Remove Plugins", ":e ~/.config/nvim/lua/core/lazy.lua<CR>"),
  dashboard.button("<leader> e v", "   Configuration", ":e ~/.config/nvim/lua/core/init.lua <CR>"),
  dashboard.button("<leader>   q", "   Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "AlphaFooterColor"
dashboard.section.header.opts.hl = "AlphaHeaderColor"
--dashboard.section.buttons.opts.hl = "GruvboxGreen"

dashboard.opts.opts.noautocmd = true
--vim.cmd[[autocmd User AlphaReady echo 'ready']]
alpha.setup(dashboard.opts)
