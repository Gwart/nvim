local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

-- Telescope
keymap("n", ",ff", "<cmd>Telescope find_files hidden=true<cr>", opts)
keymap("n", ",lg", "<cmd>Telescope live_grep hidden=true<cr>", opts)
keymap("n", ",lr", "<cmd>Telescope lsp_references<cr>", opts)
keymap("n", ",fb", "<cmd>Telescope buffers<cr>", opts)
-- NvimTree
keymap("n", ",nt", "<cmd>NvimTreeToggle<cr>", opts)
