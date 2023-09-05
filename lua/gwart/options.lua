local table =
{
    number = true,
    shiftwidth = 4,
	tabstop = 4,
	fileencoding = "utf-8",
	ignorecase = true,
	clipboard = "unnamed",
	undofile = true,
	completeopt = {"menu", "menuone", "noselect"},
	expandtab = true
}

for key, value in pairs(table) do
	vim.opt[key] = value
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- nvim-tree config
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
