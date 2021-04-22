

local config = {}


-- e.g.: when hidden show ruler
config.options = {
    true_false_commands = false,
	cursor_by_mode = false,
	before_minimalist_mode_shown = false,
	before_minimalist_mode_hidden = false,
	after_minimalist_mode_shown = false,
	after_minimalist_mode_hidden = false,
	unknown_bkg_color_fix = false,
	bottom = {
		hidden_laststatus = 0,
		hidden_ruler = false,
		hidden_showmode = false,
		hidden_showcmd = false,
		hidden_cmdheight = 1,

		shown_laststatus = 2,
		shown_ruler = true,
		shown_showmode = false,
		shown_showcmd = false,
		shown_cmdheight = 1
	},
	top = {
		hidden_showtabline = 0,

		shown_showtabline = 2
	},
	left = {
		hidden_number = false,
		hidden_relativenumber = false,
		hidden_signcolumn = "no",

		shown_number = true,
		shown_relativenumber = false,
		shown_signcolumn = "no"
	},
	ataraxis = {
		just_do_it_for_me = false,
		left_padding = 40,
		right_padding = 40,
		top_padding = 0,
		bottom_padding = 0
	},
	integrations = {
		integration_galaxyline = false,
		integration_vim_airline = false,
		integration_vim_powerline = false,
		integration_tmux = false,
		integration_express_line = false,
		integration_gitgutter = false,
		integration_vim_signify = false,
		integration_limelight = false
	}
}


function config.set_options(opts)
    opts = opts or {}

    for opt, _ in pairs(opts) do

		-- check if option exists in the config's table
		if (config.options[opt] ~= nil) then		-- not nil

			-- chec if option is a table
			if (type(opts[opt]) == "table") then	-- if table
				for inner_opt, _ in pairs(opts[opt]) do

					-- table contains element by that key
					if (config.options[opt][inner_opt] ~= nil) then		-- not nil
						-- io.write("\t"..inner_opt.." = "..tostring(config.options[opt][inner_opt]).."\n")
						config.options[opt][inner_opt] = opts[opt][inner_opt]
					else		-- nil
						-- nothing
					end
				end
			else		-- if other
				config.options[opt] = opts[opt]
			end
		else		-- nil
			-- nothing
		end
	end
		
end




return config
