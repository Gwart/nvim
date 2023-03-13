local opt = { silent = true, noremap = true }

local normal_key_value =
{
	 ["<leader>x"] = ":source %<CR>",
	 ["<leader>s"] = ":wa<CR>",
	 ["<leader>gd"] = ":lua vim.lsp.buf.declaration()<CR>",
	 ["<leader>gD"] = ":lua vim.lsp.buf.definition()<CR>",
	 ["<leader>dn"] = ":lua vim.diagnostic.goto_next()<CR>",
	 ["<leader>dp"] = ":lua vim.diagnostic.goto_prev()<CR>",
	 ["<leader>fb"] = ":Telescope buffers<CR>",
	 ["<leader>ff"] = ":Telescope find_files<CR>"
}

for key, value in pairs(normal_key_value)
do
	vim.api.nvim_set_keymap('n', key, value, opt)
end
