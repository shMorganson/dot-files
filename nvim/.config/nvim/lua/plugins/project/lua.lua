local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end

project.setup({
  -- This is on by default since it's currently the expected behavior.
  active = true,
  on_config_done = nil,

  -- Usage set to true to disable setting the current-woriking directory
  -- Manual mode doesn't automatically change your root directory, so you have
  -- the option to manually do so using `:ProjectRoot` command.
  manual_mode = false,

  -- Methods of detecting the root directory
  -- Allowed values: **"lsp"** uses the native neovim lsp
  -- **"pattern"** uses vim-rooter like glob pattern matching. Here
  -- order matters: if one is not detected, the other is used as fallback. Yu
  -- can also delete or rearangne the detection methods.
  -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
  detection_methods = { "pattern", "lsp" },

  -- Usage patterns used to detect root dir, when **"pattern"** is in detection_methods
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

  -- Don't calculate root dir on specific directories
  -- Ex: { "~/.cargo/*", ... }
  -- exclude_dirs ={"~/dot-files/"},

-- Show hidden files in telescope when searching for files in a project
  show_hidden = true,

  -- When set to false, you will get a message when project.nvim changes your directory.
  -- When set to false, you will get a message when project.nvim changes your directory.
  silent_chdir = true,

  -- Usage list of lsp client names to ignore when using **lsp** detection. eg: { "efm", ... }
  ignore_lsp = {},

  -- Type string
  -- Usage path to store the project history for use in telescope
  datapath = vim.fn.stdpath("data"),
})

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
	return
end

telescope.load_extension('projects')
