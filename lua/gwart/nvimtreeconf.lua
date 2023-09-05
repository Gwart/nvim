local nvimtreeconf = {}


function nvimtreeconf.setup()
	require("nvim-tree").setup({
    renderer =
    {
        icons = {
            show =
            {
                file = true,
                folder = true,
                folder_arrow = false,
                git = false,
                diagnostics = false,
                modified = true,
            },
            glyphs =
            {
                default = "",
                symlink = "s",
                bookmark = "",
                modified = "m",
                folder =
                {
                    arrow_closed = ">",
                    arrow_open = "v",
                    default = "d",
                    open = "do",
                    empty = "d",
                    empty_open = "do",
                    symlink = "s",
                    symlink_open = "so",
                },
            },
        },
    }
})

end

return nvimtreeconf
