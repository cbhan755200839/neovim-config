-- mason lsp 映射
return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		-- 配置
		-- opts = {
		-- lua
		-- ensure_installed = { 'lua_ls' },
		-- },
	},
}
