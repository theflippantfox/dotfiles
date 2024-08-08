return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            filters = {
                dotfiles = true,
            },
            disable_netrw = true,
            hijack_netrw = true,
            open_on_tab = false,
            hijack_cursor = true,
            hijack_unnamed_buffer_when_opening = false,
            update_cwd = true,
            update_focused_file = {
                enable = true,
                update_cwd = false,
            },
            sync_root_with_cwd = true,
            view = {
                preserve_window_proportions = true,
                width = 30,
                -- hide_root_folder = false,
            },
            git = {
                enable = false,
                ignore = true,
            },
            actions = {
                open_file = {
                    resize_window = true,
                },
            },
            renderer = {
                group_empty = true,
                indent_markers = {
                    enable = false,
                },
            },
        })
    end
}
