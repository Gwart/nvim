local bootstrap = {}

function bootstrap.InstallPackageManager()

	bootstrap.isBootstrap = false
	local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
	if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
		bootstrap.isBootstrap = true
		vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
		vim.cmd [[packadd packer.nvim]]
	end

end

bootstrap.isBootstrap = false

return bootstrap
