vim.g.mapleader = " "

vim.keymap.set("n", "<leader>rh", ":nohl<CR>", { desc = "Remove highlights" })
vim.keymap.set({ "n", "v" }, "x", '"_x')

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open Lazy" })

-- window navigation
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontaly" })

-- better search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Fix for strange output being printed while switching language using ghostty
vim.keymap.set({ "n", "i", "v", "t" }, "<D-space>", "<Nop>", { noremap = true, silent = true })
