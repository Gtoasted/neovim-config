-- Jibber-Jabber to load lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Latex Plugin Settings
vim.g.UltiSnipsExpandTrigger = '<tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'

vim.g.tex_flavor='latex'
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_quickfix_mode=0

vim.opt.conceallevel=1
vim.g.tex_conceal='abdmg'
vim.cmd([[
hi Conceal ctermbg=none
]])

vim.opt.spelllang = 'en_us'
vim.cmd([[
setlocal spell
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
]])

