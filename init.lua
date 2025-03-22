vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

vim.o.guifont = "IosevkaTerm Nerd Font"
vim.g.neovide_opacity = 0.95
vim.g.neovide_normal_opacity = 0.95
vim.g.neovide_cursor_vfx_mode = "railgun"

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

-- Set Git Bash as the default terminal 
vim.opt.shell = "C:\\Program Files\\Git\\bin\\bash.exe" 
vim.opt.shellcmdflag = "-c" 
vim.opt.shellquote = "" 
vim.opt.shellxquote = ""