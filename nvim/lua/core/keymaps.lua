vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", vim.cmd.Ex) 

-- set leader key to space
vim.g.mapleader = " "

-- set leader + E to open file viewer
vim.keymap.set("n", "<leader>E", vim.cmd.Ex)

vim.keymap.set('n', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('v', '<Space>', '<Nop>', { noremap = true, silent = true })

-- .vimrc defaults
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<C-p>", '"+p', { noremap = true, silent = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- for search mode 
vim.keymap.set('n', 'n' ,'nzzzv', opts)
vim.keymap.set('n', 'N' ,'Nzzzv', opts)

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)   -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)     --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts)     --  go to previous tab

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)


-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)


-- toggle neotree
vim.keymap.set('n', '<leader>e', ':Neotree toggle position=left<CR>', {noremap = true, silent = true})
