vim.g.neovide_fullscreen = true
vim.g.neovide_normal_opacity = 1.0

vim.g.neovide_scroll_animation_length = 0.1
vim.g.neovide_scroll_animation_far_lines = 1

vim.g.neovide_underline_stroke_scale = 1.5

-- vim.g.neovide_cursor_smooth_blink = false
-- guicursor: blinkoff, blinkon, blinkwait

-- vim.g.neovide_cursor_vfx_mode = ""
-- "railgun"
-- "torpedo"
-- "pixiedust"
-- "sonicboom"
-- "ripple"
-- "wireframe"

vim.o.winblend = 20
vim.o.pumblend = 30

vim.keymap.set("n", "<C-S-s>", ":w<CR>") -- Save
vim.keymap.set("v", "<C-S-c>", '"+y') -- Copy
vim.keymap.set("n", "<C-S-v>", '"+P') -- Paste normal mode
vim.keymap.set("v", "<C-S-v>", '"+P') -- Paste visual mode
vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste command mode
vim.keymap.set("i", "<C-S-v>", '<ESC>l"+Pli') -- Paste insert mode
