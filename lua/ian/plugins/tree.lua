return {
    'nvim-tree/nvim-tree.lua',
    branch = 'v0.99', --'v0.99',
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
                dotfiles = true,
            },
      }
    end,
}
