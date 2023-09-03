local function map(mode, keybind, command)
	vim.keymap.set(mode, keybind, command, { silent = true })
end

map("n", "<leader>a", "ggVG")
map("n", "<leader>s", "<CMD>w<CR>")
map("n", "<leader>[", "<CMD>bn<CR>")
map("n", "<leader>]", "<CMD>bp<CR>")
map("n", "<leader>p", "<CMD>Telescope<CR>")
map("n", "<leader>n", "<CMD>tabnew<CR>")
map("n", "<leader>r", "<CMD>TroubleToggle<CR>")
map("n", "<leader>b", "<CMD>bd<CR><CMD>bp<CR>")
map("n", "<leader>g", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>f", "<CMD>Telescope find_files<CR>")
map("n", "<leader>t", "<CMD>NvimTreeToggle<CR><C-w>w")
map("n", "<leader>,f", "<CMD>ToggleTerm direction=float<CR>")
map("n", "<leader>j", "<Esc><CMD>exe v:count1 . 'ToggleTerm'<CR>")

map("i", "<S-Tab>", "<C-d>")

map("v", "<Tab>", ">><Esc>")
map("v", "<S-Tab>", "<<<Esc>")
map("v", "<C-c>", ":OSCYank<CR>")

map("t", "<C-\\>", "<C-\\><C-N>")
