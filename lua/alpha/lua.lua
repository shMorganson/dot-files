local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

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
	dashboard.button("<leader> f f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("<leader> e n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("<leader> f p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("<leader> f h", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("<leader> f t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("<leader>   u", "  Update Plugins", ":PackerUpdate <CR>"),
	dashboard.button("<leader> e v", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("<leader>   q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
--return "chrisatmachine.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
vim.cmd[[autocmd User AlphaReady echo 'ready']]
alpha.setup(dashboard.opts)
