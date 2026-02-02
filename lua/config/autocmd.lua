local cmd = vim.cmd

-- 清除背景色
cmd("highlight Normal ctermbg=NONE guibg=NONE")
cmd("highlight NonText ctermbg=NONE guibg=NONE")
cmd("highlight SignColumn ctermbg=NONE guibg=NONE")

-- 光标所在行
-- 背景色
-- 前景色
cmd([[
	highlight CursorLine guibg=#363a4f gui=none
	highlight CursorLineNr guifg=#f4dbd6
]])
