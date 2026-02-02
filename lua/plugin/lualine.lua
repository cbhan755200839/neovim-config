-- 状态栏
return {
	{
		"nvim-lualine/lualine.nvim",
		-- 图标依赖
		dependencies = {
			"nvim-mini/mini.icons",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		opts = {
			options = {
				theme = "auto",
				section_separators = {
					left = "",
					right = "",
				},
				-- 分隔符
				component_separators = "|",
				-- 全局状态栏
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					-- 模式
					"mode",
				},
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {
					-- 文件名
					"filename",
					{
						-- 文件类型
						"filetype",
						icon_only = false,
						icon = {
							align = "right",
						},
					},
				},
				lualine_x = {
					"encoding",
					"fileformat",
				},
				lualine_y = {
					"progress",
					"location",
				},
				lualine_z = {
					function()
						return " " .. os.date("%H:%M:%S")
					end,
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			winbar = {},
			inactive_winbar = {},
		},
	},
}
