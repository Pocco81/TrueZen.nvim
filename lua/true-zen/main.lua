

local bottom = require("true-zen.services.bottom.init")
local top = require("true-zen.services.top.init")
local left = require("true-zen.services.left.init")
local minimalist_mode = require("true-zen.services.mode-minimalist.init")
local ataraxis_mode = require("true-zen.services.mode-ataraxis.init")

-- must have, don't remove
local resume = require("true-zen.services.resume.init")
local cmd  = vim.cmd


function main(option, command_option)

	option = option or 0
	command_option = command_option or 0

	if (option == 0) then
		bottom.main(command_option)
	elseif (option == 1) then
		top.main(command_option)
	elseif (option == 2) then
		left.main(command_option)
	elseif (option == 3) then
		minimalist_mode.main(command_option)
	elseif (option == 4) then
		ataraxis_mode.main(command_option)
	else
		cmd("echo 'command was not recognized for TrueZen.nvim'")
		-- command not recognized, raise an error
	end
end


-- export the functions
return {
	-- toggle_statusline = toggle_statusline, -- called with TZStatusline
	main = main
}

