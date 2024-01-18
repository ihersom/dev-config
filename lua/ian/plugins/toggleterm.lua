return {
    'akinsho/toggleterm.nvim',
    event = {"BufReadPre", "BufNewFile"},
    version = "*",
    config = function()
        require("toggleterm").setup {
            size = 20,
            hide_numbers = true,
            open_mapping = [[<C-t>]],
            shade_filetypes = {},
            shade_terminals = false,
            shading_factor = 0.3,
            start_in_insert = true,
            persist_size = true,
            direction = "horizontal",
          }
    end
}
