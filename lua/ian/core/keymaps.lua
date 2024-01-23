--Easy mapping
local nmap = function(keys, func, desc)
    vim.keymap.set(
        'n',
        keys,
        func,
        {
            desc = desc,
            noremap = true
        }
    )
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


-------------------------------
--------- Telescope -----------
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
-------------------------------
-------------------------------


-- Toggle Terminal 3rd Party Utils --
nmap('<leader>lg', require("ian.plugins.util.terminal3rdparty").git_client_toggle, {desc = 'Open LazyGit UI'})
nmap('<leader>bt', require("ian.plugins.util.terminal3rdparty").system_info_toggle, {desc = 'Open Bottom Monitor UI'})
nmap('<leader>ld', require("ian.plugins.util.terminal3rdparty").docker_info_toggle, {desc = 'Open LazyDocker UI'})


-- NvimTree --
nmap('<leader>r', ':NvimTreeToggle<CR>', 'Toggle Nvim Tree')


-- Navigation --
nmap('<C-M-j>', '7j', 'Quick nav down w Ctrl+Alt+j')
nmap('<C-M-k>', '7k', 'Quick nav up Ctrl+Alt+j')


-- Barbar Tabs --
    -- Move to previous/next
nmap('<A-,>', '<Cmd>BufferPrevious<CR>', "Previous Tab")
nmap('<A-.>', '<Cmd>BufferNext<CR>', "Next tab")
    -- Re-order to previous/next
nmap('<A-<>', '<Cmd>BufferMovePrevious<CR>', 'Move Previous Tab')
nmap('<A->>', '<Cmd>BufferMoveNext<CR>', 'Move Next Tab')
    -- Goto buffer in position...
nmap('<A-1>', '<Cmd>BufferGoto 1<CR>', 'Go to tab 1')
nmap('<A-2>', '<Cmd>BufferGoto 2<CR>', 'Go to tab 2')
nmap('<A-3>', '<Cmd>BufferGoto 3<CR>', 'Go to tab 3')
nmap('<A-4>', '<Cmd>BufferGoto 4<CR>', 'Go to tab 4')
nmap('<A-5>', '<Cmd>BufferGoto 5<CR>', 'Go to tab 5')
nmap('<A-6>', '<Cmd>BufferGoto 6<CR>', 'Go to tab 6')
nmap('<A-7>', '<Cmd>BufferGoto 7<CR>', 'Go to tab 7')
nmap('<A-8>', '<Cmd>BufferGoto 8<CR>', 'Go to tab 8')
nmap('<A-9>', '<Cmd>BufferGoto 9<CR>', 'Go to tab 9')
nmap('<A-0>', '<Cmd>BufferLast<CR>', 'Go to last tab')
    -- Pin/unpin buffer
nmap('<A-p>', '<Cmd>BufferPin<CR>')
    -- Close buffer
nmap('<A-c>', '<Cmd>BufferClose<CR>')
