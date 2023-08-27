local dapconf = {}

function dapconf.setup()
	require("dapui").setup({
		controls =
		{
		  element = "repl",
		  enabled = true,
		  icons = {
			disconnect = "DS",
			pause = "PA",
			play = "PL",
			run_last = "RL",
			step_back = "SB",
			step_into = "SI",
			step_out = "SOU",
			step_over = "SOV",
			terminate = "T"
		  }
		},
		icons =
		{
		  collapsed = ">",
		  current_frame = "?",
		  expanded = "v"
		},
	})

	require("mason-nvim-dap").setup({handlers = {}})
end


return dapconf
