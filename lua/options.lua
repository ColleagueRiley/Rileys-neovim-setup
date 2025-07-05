require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set relativenumber")
vim.cmd("set expandtab");
vim.cmd("set clipboard=unnamedplus")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = false

vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])
