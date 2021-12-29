vim.cmd [[packadd dashboard-nvim]]

local g = vim.g

g.dashboard_default_executive ='Telescope'
g.dashboard_custom_section = {
    a = {description = {"  Find File                 leader f f"}, command = "Telescope find_files"},
    b = {description = {"  Recents                   leader f h"}, command = "Telescope oldfiles"},
    d = {description = {"  New File                  leader e n"}, command = "DashboardNewFile"},
    e = {description = {"  Bookmarks                 leader f b"}, command = "Telescope marks"},
    f = {description = {"  Load Last Session         leader l  "}, command = "SessionLoad"},
    g = {description = {"  Update Plugins            leader u  "}, command = "PackerUpdate"},
    h = {description = {"  Settings                  leader e v"}, command = "edit $MYVIMRC"},
    i = {description = {"  Exit                      leader q  "}, command = "exit"}
}


g.dashboard_custom_header = {
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

g.dashboard_custom_footer = {
    'NEOVIM 0.6.0',
}
