-- 界面优化
return {
	{
		-- 轻量级 UI 组件库
		"MunifTanjim/nui.nvim",
	},
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		-- 完全启动后再加载
		event = "VeryLazy",
		-- 配置
		opts = {
			-- 通知
			notify = {
				enable = true,
			},
			-- 命令行
			cmdline = {
				enable = true,
			},
			-- lsp 相关配置
			lsp = {
				-- 覆盖
				override = {
					-- 渲染 lsp 输入的 markdown 内容
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
				},
			},
			-- 窗口
			views = {
				-- 命令行弹窗
				cmdline_popup = {
					-- 位置
					position = {
						row = "33%",
						col = "50%",
					},
				},
			},
		},
	},
}
