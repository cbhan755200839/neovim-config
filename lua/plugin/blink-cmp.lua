-- 自动补全
return {
	{
		"saghen/blink.cmp",
		-- 输入时/打开命令行时加载
		event = {
			"InsertEnter",
			"CmdlineEnter",
		},
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		opts_extend = { "sources.default" },
		-- 配置
		opts = {
			-- 快捷键
			keymap = {
				preset = "none",
				["<CR>"] = {
					"select_and_accept",
					"fallback",
				},
				["<Esc>"] = {
					"cancel",
					"fallback",
				},
				["<Tab>"] = {
					"select_next",
					"fallback",
				},
				["<S-Tab>"] = {
					"select_prev",
					"fallback",
				},
				["<Down>"] = {
					"select_next",
					"fallback",
				},
				["<Up>"] = {
					"select_prev",
					"fallback",
				},
				["<A-/>"] = {
					"show",
					"show_documentation",
					"hide_documentation",
				},
			},
			-- 外观
			appearance = {
				-- 适配等宽字体
				nerd_font_variant = "mono",
			},
			-- 补全菜单
			completion = {
				-- 文档
				documentation = {
					-- 不自动显示
					auto_show = false,
				},
			},
			-- 补全源
			sources = {
				default = {
					-- 路径
					"path",
					-- 代码片段
					"snippets",
					-- 缓冲区
					"buffer",
					-- lsp
					"lsp",
				},
			},
			-- 模糊匹配
			fuzzy = {
				-- 不启用
				enabled = false,
				-- 优先 rust 不支持则使用 lua
				-- implementation = 'prefer_rust',
				implementation = "lua",
				-- 排序
				sorts = {
					-- 模糊匹配分数
					"score",
					-- lsp 提供的排序文本
					"sort_text",
					-- 按标签排序
					"label",
				},
			},
		},
	},
}
