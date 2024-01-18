return {
    'nvim-tree/nvim-tree.lua',
    branch = '*', --'v0.99',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require("nvim-tree").setup {}
    end,
}
