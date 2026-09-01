vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle filesystem left<cr>", {
  desc = "Toggle file sidebar",
})

vim.keymap.set("v", "<D-c>", '"+y', {
  desc = "Copy selection",
})

vim.keymap.set("v", "<LeftRelease>", '"+y', {
  desc = "Copy mouse selection",
})

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", {
  desc = "Search files",
})

vim.keymap.set("n", "<D-Up>", "<cmd>move .-2<cr>==", {
  desc = "Move line up",
})

vim.keymap.set("n", "<D-Down>", "<cmd>move .+1<cr>==", {
  desc = "Move line down",
})

vim.keymap.set("v", "<D-Up>", ":move '<-2<CR>gv=gv", {
  desc = "Move selection up",
})

vim.keymap.set("v", "<D-Down>", ":move '>+1<CR>gv=gv", {
  desc = "Move selection down",
})

vim.keymap.set("n", "<C-Up>", "<cmd>move .-2<cr>==", {
  desc = "Move line up",
})

vim.keymap.set("n", "<C-Down>", "<cmd>move .+1<cr>==", {
  desc = "Move line down",
})

vim.keymap.set("v", "<C-Up>", ":move '<-2<CR>gv=gv", {
  desc = "Move selection up",
})

vim.keymap.set("v", "<C-Down>", ":move '>+1<CR>gv=gv", {
  desc = "Move selection down",
})

vim.keymap.set("n", "<C-S-Up>", "<cmd>move .-2<cr>==", {
  desc = "Move line up",
})

vim.keymap.set("n", "<C-S-Down>", "<cmd>move .+1<cr>==", {
  desc = "Move line down",
})

vim.keymap.set("v", "<C-S-Up>", ":move '<-2<CR>gv=gv", {
  desc = "Move selection up",
})

vim.keymap.set("v", "<C-S-Down>", ":move '>+1<CR>gv=gv", {
  desc = "Move selection down",
})
