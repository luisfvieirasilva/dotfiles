vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- After selecting something, J/K moves it around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Make next/previous found word be at the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting something over something else, don't add something else to a buffer
vim.keymap.set("v", "<leader>p", "\"_dP")

-- Copy to system buffer (so you can ctrl-v outside vim and get the result)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete without adding deleted content to a buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

print("Setting my keymaps")
-- Start Search/Replace with word under the cursor
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Request sudo password to modify root files
vim.keymap.set("c", "w!!", "%!sudo tee % > /dev/null")

vim.keymap.set("n", "<Leader>w", ":bp<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>e", ":bn<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>q", ":tabp<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>r", ":tabn<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>d", ":bd<CR>", { noremap = true })

-- Create a new line without going to the insert mode
vim.keymap.set("n", "<Space>o", "o<Esc>", { noremap = true })

-- Break line after cursor
vim.keymap.set("n", "<Space>j", "a<CR><Esc>", { noremap = true })

-- K to display hover information (lsp-zero is suppose to set this, but it's not working)
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
