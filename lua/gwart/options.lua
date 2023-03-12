local table =
{
    number = true,
    shiftwidth = 4,
	tabstop = 4,
	fileencoding = "utf-8",
	ignorecase = true,
	clipboard = "unnamed",
	undofile = true,
	completeopt = {"menu", "menuone", "noselect"}
}

for key, value in pairs(table) do
	vim.opt[key] = value
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
