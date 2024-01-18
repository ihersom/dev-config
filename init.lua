-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('ian.core.options')
require('ian.lazy')
require("ian.plugins.util.terminal3rdparty")
require("ian.core.keymaps")
require("ian.core.config_lsp")