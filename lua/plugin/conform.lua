-- 自动格式化
return {
	{
		"stevearc/conform.nvim",
		-- 保存前自动格式化
		event = "BufWritePre",
		opts = {
			format_on_save = {
				-- 优先使用 lsp 格式化
				lsp_fallback = true,
			},
		},
	},
}
