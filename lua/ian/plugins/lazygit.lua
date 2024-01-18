return {
    "kdheepak/lazygit.nvim",
    event = {"BufReadPre", "BufNewFile"},
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
}