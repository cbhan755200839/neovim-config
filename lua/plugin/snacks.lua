-- 轻量级功能合集
return {
	{
		"folke/snacks.nvim",
		-- 非懒加载
		lazy = false,
		-- 优先级
		priority = 1000,
		-- 配置
		opts = {
			-- 大文件性能优化
			bigfile = { enabled = true },
			-- 启动首页(仪表盘)
			dashboard = { enabled = true },
			-- 文件浏览器
			explorer = { enabled = true },
			-- 缩进可视化
			indent = { enabled = true },
			-- 输入框
			input = { enabled = true },
			-- 选择器
			picker = { enabled = true },
			-- 通知
			notifier = { enabled = true, timeout = 5000 },
			-- 文件操作
			quickfile = { enabled = true },
			-- 缓冲区
			scope = { enabled = true },
			-- 滚动条
			scroll = { enabled = true },
			-- 状态栏列(左侧行号区域)
			statuscolumn = { enabled = true },
			-- 单词
			words = { enabled = true },
		},
		-- 快捷键
		keys = {
			{
				"<leader>e",
				function()
					Snacks.explorer()
				end,
				desc = "文件浏览器",
			},
			{
				"<leader>fd",
				function()
					Snacks.picker.files()
				end,
				desc = "查找文件",
			},
			{
				"<leader>rg",
				function()
					Snacks.picker.grep()
				end,
				desc = "全局搜索",
			},
		},
	},
}
