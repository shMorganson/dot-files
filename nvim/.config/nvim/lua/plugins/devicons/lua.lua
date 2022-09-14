-- local devicons_status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")
-- if not devicons_status_ok then
--   print("nvim-web-devicons is broken or not installed.")
--   return
-- end

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 -- override = {
 -- sh = {
 --      icon = "",
 --      color = "#B48EAD",
 --      name = "sh",
 --    },
 --    brewfile = {
 --      icon = "",
 --      color = "#874423",
 --      name = "brewfile",
 --    },
 --    git = {
 --      icon = "",
 --      color = "#5E81AC",
 --      name = "git",
 --    },
 --    tf = {
 --      icon = "",
 --      color = "#5e81ac",
 --      name = "terraform",
 --    },
 --  };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 --default = true;
}

require("nvim-web-devicons").set_icon {
  tf = {
   icon = "",
   color = "#5e81ac",
   name = "terraform",
  },
}
