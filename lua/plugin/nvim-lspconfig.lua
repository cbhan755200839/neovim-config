-- lsp(语言服务器协议)
return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
			"saghen/blink.cmp",
		},
	}
}
