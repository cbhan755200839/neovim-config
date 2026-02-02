-- 标签栏
return {
	{
		"akinsho/bufferline.nvim",
		lazy = false,
		dependencies = {
			"nvim-mini/mini.icons",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			options = {
				theme = true,
				-- 分隔符
				component_separators = "|",
				-- 处理左侧出现的文件管理器
				offsets = {
					{
						filetype = "snacks_layout_box",
					},
				},
			},
		},
	},
}
