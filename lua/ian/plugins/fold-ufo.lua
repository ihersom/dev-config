return {
    'kevinhwang91/nvim-ufo',
    dependencies = {
        'kevinhwang91/promise-async'
    },
    config = function()
        vim.o.foldmethod = 'indent'
        vim.o.foldenable = false
    end
}
