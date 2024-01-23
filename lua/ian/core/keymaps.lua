--Easy mapping
local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, desc, {noremap = true})
end

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Telescope --
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)
-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

-- See `:help telescope.builtin`
nmap('<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
nmap('<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
nmap('<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

nmap('<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
nmap('<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
nmap('<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
nmap('<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
nmap('<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
nmap('<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
nmap('<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Toggle Terminal 3rd Party Utils --
nmap('<leader>lg', require("ian.plugins.util.terminal3rdparty").git_client_toggle, {desc = 'Open LazyGit UI'})
nmap('<leader>bt', require("ian.plugins.util.terminal3rdparty").system_info_toggle, {desc = 'Open Bottom Monitor UI'})
nmap('<leader>ld', require("ian.plugins.util.terminal3rdparty").docker_info_toggle, {desc = 'Open LazyDocker UI'})

-- NvimTree
nmap('<leader>r', ':NvimTreeToggle<CR>', {desc = 'Toggle Nvim Tree'})
-- Navigation
nmap('<C-M-j>', '7j', {desc = ''})
nmap('<C-M-k>', '7k', {desc = ''})
--Barbar Tabs

