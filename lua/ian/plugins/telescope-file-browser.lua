return {
    "nvim-telescope/telescope-file-browser.nvim",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    }
}