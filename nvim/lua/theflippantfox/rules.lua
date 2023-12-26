vim.cmd [[colorscheme sobrio]]

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local rule = vim.opt

rule.termguicolors = true

rule.nu = true
rule.relativenumber = false

rule.tabstop = 4
rule.softtabstop = 4
rule.shiftwidth = 4
rule.expandtab = true

rule.smartindent = true

rule.wrap = false

rule.swapfile = false
rule.backup = false

rule.hlsearch = false
rule.incsearch = true

rule.scrolloff = 8
rule.signcolumn = "yes"
rule.isfname:append("@-@")

rule.updatetime = 50
rule.colorcolumn = "80"
