local lspconf = {}

local function on_attach(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

function lspconf.setup()
	require("mason").setup()
	require("mason-lspconfig").setup()

	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	require("mason-lspconfig").setup_handlers {
		function(server_name)
			local user_conf = {}

			if string.find(server_name, "lua") then
				user_conf.settings = { Lua = { diagnostics = { globals = { "vim" } } } }
            elseif string.find(server_name, "clangd") then
                user_conf.cmd = { "clangd", "--header-insertion=never" }
			end

			user_conf.capabilities = capabilities
			user_conf.on_attach = on_attach
			require("lspconfig")[server_name].setup(user_conf)
		end
	}

--configure cmp
	local cmp = require("cmp")

  cmp.setup({
    snippet = {
      expand = function(args)
         require("luasnip").lsp_expand(args.body)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
    }, {
      { name = "buffer" },
    })
  })

end

return lspconf
