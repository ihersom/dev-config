-- "gc" to comment visual regions/lines
return {
    'numToStr/Comment.nvim',
    event = "ModeChanged",
    opts = {},
    config = function()
        require('Comment').setup()
    end
}