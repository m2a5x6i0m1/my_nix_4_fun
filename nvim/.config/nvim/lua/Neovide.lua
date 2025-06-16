vim.g.neovide_fullscreen = true
vim.g.neovide_normal_opacity = 1.0
vim.g.neovide_floating_shadow = false

vim.g.neovide_scroll_animation_length = 0.1
vim.g.neovide_scroll_animation_far_lines = 1
vim.g.neovide_underline_stroke_scale = 1.5

vim.g.neovide_padding_top = 2
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0

-- vim.g.neovide_cursor_smooth_blink = false
-- guicursor: blinkoff, blinkon, blinkwait

-- vim.g.neovide_cursor_vfx_mode = ""
-- "railgun"
-- "torpedo"
-- "pixiedust"
-- "sonicboom"
-- "ripple"
-- "wireframe"

vim.o.winblend = 10
vim.o.pumblend = 10

vim.keymap.set("v", "<C-S-c>", '"+y') -- Copy
vim.keymap.set("n", "<C-S-v>", '"+P') -- Paste normal mode
vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste command mode
vim.keymap.set("i", "<C-S-v>", "<C-R>+") -- Paste insert mode
vim.keymap.set("t", "<C-S-v>", "<C-\\><C-N>+Pi") -- Paste terminal mode
