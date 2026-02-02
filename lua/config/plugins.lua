-- 安装lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- 配置
require("lazy").setup({
	spec = {
		-- 加载plugin下所有插件
		{
			import = "plugin",
		},
		{
			import = "plugin/lang",
		},
	},
	defaults = {
		-- 所有插件默认开启懒加载
		lazy = true,
		-- 插件版本控制
		version = false,
	},
})
