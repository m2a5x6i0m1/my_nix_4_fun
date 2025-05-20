vim.g.mapleader = " "

vim.keymap.set("n", "<leader>rh", ":nohl<CR>", { desc = "Remove highlights" })
vim.keymap.set({ "n", "v" }, "x", '"_x')

-- shortcuts
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set("n", "<leader>lc", "<cmd>Oil ~/.config/nvim/lua/<CR>", { desc = "Open Config" })
vim.keymap.set("n", "<leader>ln", "<cmd>Oil ~/notes/<CR>", { desc = "Open Notes" })

-- window navigation
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontaly" })
vim.keymap.set("n", "<leader>st", "<C-w>v <cmd>term<CR>", { desc = "Split term" })
vim.keymap.set({ "n", "t" }, "<leader>x", "<cmd>close<CR>", { desc = "Close split" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>") -- exit term mode

-- better search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf, silent = false }

		opts.desc = "Show documentation for what is under cursor"
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

		opts.desc = "Show LSP references"
		vim.keymap.set("n", "gr", "<cmd>lua Snacks.picker.lsp_references()<CR>", opts) -- The best

		opts.desc = "Go to declaration"
		vim.keymap.set("n", "gD", "<cmd>lua Snacks.picker.lsp_declarations()<CR>", opts)

		opts.desc = "Show LSP definitions"
		vim.keymap.set("n", "gd", "<cmd>lua Snacks.picker.lsp_definitions()<CR>", opts)

		opts.desc = "Show LSP implementations"
		vim.keymap.set("n", "gi", "<cmd>lua Snacks.picker.lsp_implementations()<CR>", opts)

		opts.desc = "Show LSP type definitions"
		vim.keymap.set("n", "gy", "<cmd>lua Snacks.picker.lsp_type_definitions()<CR>", opts)

		opts.desc = "Restart LSP"
		vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

		opts.desc = "Smart rename"
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

		opts.desc = "Show buffer diagnostics"
		vim.keymap.set("n", "<leader>db", "<cmd>lua Snacks.picker.diagnostics_buffer()<CR>", opts)

		opts.desc = "Show line diagnostics"
		vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, opts)

		opts.desc = "See available code actions"
		vim.keymap.set({ "n", "v" }, "<leader>da", vim.lsp.buf.code_action, opts)
	end,
})
