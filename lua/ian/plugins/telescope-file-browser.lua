return {
    "nvim-telescope/telescope-file-browser.nvim",
    event = "BufReadPre",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim" 
    }
}