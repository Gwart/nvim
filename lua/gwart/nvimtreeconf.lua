local nvimtreeconf = {}


function nvimtreeconf.setup()
	require("nvim-tree").setup({
    renderer =
    {
        icons =
        {
            web_devicons =
            {
                file =
                {
                    enable = false,
                    color = false,
                },
                folder =
                {
                    enable = false,
                    color = false,
                },
            },
        },
    }
})

end

return nvimtreeconf
