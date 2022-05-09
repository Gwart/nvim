local table =
{
    number = true,
    shiftwidth = 4,
	tabstop = 4,
	fileencoding = "utf-8",
	ignorecase = true
}

for key, value in pairs(table) do
	vim.opt[key] = value
end
