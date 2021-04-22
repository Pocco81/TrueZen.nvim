


vim.api.nvim_exec([[
	augroup toggle_statusline
		autocmd!
		autocmd VimResume,FocusGained,WinEnter,BufWinEnter * lua require'services.top'.resume()
		autocmd VimResume,FocusGained,WinEnter,BufWinEnter * lua require'services.bottom'.resume()
		autocmd VimResume,FocusGained,WinEnter,BufWinEnter * lua require'services.left'.resume()
	augroup END
]], false)



