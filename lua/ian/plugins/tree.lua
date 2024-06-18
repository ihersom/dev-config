return {
    'nvim-tree/nvim-tree.lua',
    version = "*",
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require("nvim-tree").setup{
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 50,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                git_ignored = false,
                dotfiles = false,
                git_clean = false,
                no_buffer = false,
                no_bookmark = false,
                custom = {},
                exclude = {},
            },
      }
    end,
}
