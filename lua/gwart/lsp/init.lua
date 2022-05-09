local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	print("Can't find lspconfig")
	return
end

status_ok, _ = pcall(require,"gwart.lsp.lsp-installer")
if not status_ok then
	print("Can't find lsp-installer")
end
require("gwart.lsp.handlers").setup()
