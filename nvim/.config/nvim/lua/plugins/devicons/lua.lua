local devicons_status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")
if not devicons_status_ok then
  print("nvim-web-devicons is broken or not installed.")
  return
end


require 'nvim-web-devicons'.setup {
  override = {
    sh = {
      icon = "",
      color = "#B48EAD",
      name = "sh",
    },
    brewfile = {
      icon = "",
      color = "#874423",
      name = "brewfile",
    },
    git = {
      icon = "",
      color = "#5E81AC",
      name = "git",
    },
    tf = {
      icon = "�",
      color = "#5e81ac",
      name = "terraform",
    },
  };
}
