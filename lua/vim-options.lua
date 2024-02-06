vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set guifont=JetBrainsMono:h12")
vim.g.mapleader = " "

vim.api.nvim_exec([[
  augroup insert_mode_settings
    autocmd!
    autocmd FileType * inoremap <expr> <C-x><C-o> pumvisible() ? "\<C-n>" : "\<C-x>\<C-o>"
  augroup END
]], false)
