vim.keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format()<CR>", { desc = "Format Golang code" })
vim.keymap.set("n", "gd",  "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition"})
vim.keymap.set("n","gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Find References"})
vim.keymap.set("n", "<leader>?", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover Documentation"})
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {desc = "Code Action" })
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {desc ="Rename Symbol"})

vim.keymap.set("n", "<esc>", "<cmd>noh<CR>", {desc ="Get rid of previous search result"})

vim.keymap.set("n", "ge", "<cmd>Telescope find_files<CR>", {desc ="Telescope file explorer"})
vim.keymap.set("n", "ga", "<cmd>Telescope live_grep<CR>", {desc ="Telescope fuzzy search"})

