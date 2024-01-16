return {
    'williamboman/mason.nvim',
    lazy = true,
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup()
    end
}