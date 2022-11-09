-- Settings for AYU theme.

require("ayu").setup({
    style = "light", -- "dark" | "light"
    transparent = false, -- transparent background
    extend = {
      AlphaFooterColor = { fg = "#86B300" },
      AlphaHeaderColor = { fg = "#399EE6" },
      VimwikiHeader1 = { fg = "#399EE6" },
      VimwikiHeader2 = { fg = "#86B300" },
      VimwikiHeader3 = { fg = "#A37ACC" },
      VimwikiHeader4 = { fg = "#4CBF99" },
      VimwikiHeader5 = { fg = "#F07171" },
      VimwikiHeader6 = { fg = "#F2AE49" },
      PmenuSel = { fg = "#FFFFFF", bg = "#A37ACC" },
      Pmenu = { fg = "#5C6773", bg = "#F3F3F3" },
        -- ExampleHighlight = { fg = "#FFFFFF", bg = "#000000" },
        -- ExampleFunctionHighlight = function() return { fg = "#FFFFFF", bg = "#000000" } end,
    }, -- custom highlight groups
})
