return {
  "nvim-pack/nvim-spectre",
  config = function()
    require("spectre").setup({
        live_update = true, -- auto execute search again when you write to any file in vim
    })
  end
}
