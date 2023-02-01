local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local map = vim.api.nvim_set_keymap
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- better window navigation
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>l", "<C-w>l", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>j", "<C-w>j", opts)
-- resize windows
map("n", "<leader><Up>", ":resize +2<CR>", opts)
map("n", "<leader><Down>", ":resize -2<CR>", opts)
map("n", "<leader><Left>", ":vertical resize -2<CR>", opts)
map("n", "<leader><Right>", ":vertical resize +2<CR>", opts)

-- pull up explorer (netrw)
map("n", "<leader>pv", "<cmd>NvimTreeToggle<CR>", opts)

-- TODO maybe remaps for buffer-switching

-- persist initial yanked text after paste-replacing with it other text
map("v", "p", '"_dP', opts)

-- Telescope
map("n", "<leader>pf", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- TODO handle error if not in git dir
map("n", "<C-p>", "<cmd>Telescope git_files<cr>", opts)
map("n", "<leader>ps", "<cmd>Telescope live_grep<cr>", opts)
