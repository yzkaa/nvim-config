--u高亮设置
vim.opt.cursorline = true
--vim.opt.colorcolumn = "80"
--行号设置
vim.opt.number = true
vim.opt.relativenumber = true
--Tab与缩进
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
--自动重新加载
vim.autoread = true
--设置分屏规则,新的分屏会出现在右侧以及下侧
vim.opt.splitbelow = true
vim.opt.splitright = true
--设置leader键为空格
vim.g.mapleader = " "
--真彩设置
vim.opt.termguicolors = true
--
vim.opt.signcolumn = "yes"
--检索忽略大小写
vim.opt.ignorecase = true
vim.opt.smartcase = true



local map = vim.keymap.set
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window" })

vim.opt.clipboard = "unnamedplus"
