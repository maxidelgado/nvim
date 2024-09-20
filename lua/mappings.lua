require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<Leader><F5>", ":GoDebug<CR>", { desc = "JetBrains: Debug" })
map(
    "n",
    "<Leader><F1>",
    ":GoBreakToggle<CR>",
    { desc = "JetBrains: Toggle Break Point" }
)
map("n", "<Leader>rr", ":GoRename<CR>", { desc = "JetBrains: Rename" })
map(
    "n",
    "<Leader><CR>t",
    ":GoFillStruct<CR>",
    { desc = "JetBrains: Fill Struct" }
)
map(
    "n",
    "<Leader><CR>s",
    ":GoFillSwitch<CR>",
    { desc = "JetBrains: Fill Switch" }
)
map("n", "<Leader>err", ":GoIfErr<CR>", { desc = "JetBrains: Fill If Err" })
map(
    "n",
    "<Leader><CR>p",
    ":GoFixPlurals<CR>",
    { desc = "JetBrains: Fix Plurals" }
)
map("n", "<Leader>dd", "yyp", { desc = "JetBrains: Duplicate Line" })
map(
    "n",
    "<Leader>nn",
    ":Telescope find_files<CR>",
    { desc = "JetBrains: Open File" }
)
map(
    "n",
    "<Leader>ff",
    ":Telescope live_grep<CR>",
    { desc = "JetBrains: Search In Project" }
)
map(
    "n",
    "<Leader>ll",
    ":lua vim.lsp.buf.format()<CR>",
    { desc = "JetBrains: Format" }
)
map(
    "n",
    "<Ledaer><CR>",
    ":lua vim.lsp.buf.code_action()<CR>",
    { desc = "JetBrains: Quick Actions" }
)
map("n", "<Leader>--", "za", { desc = "JetBrains: Fold Code Blocks" })
map("n", "<Leader>++", "zR", { desc = "JetBrains: Unfold Code Blocks" })
map("n", "<c-s-down>", ":m +1<CR>", { desc = "JetBrains: Move Up" })
map("n", "<c-s-up>", ":m -2<CR>", { desc = "JetBrains: Move Down" })
map(
    "x",
    "<c-s-down>",
    ":m '>+1<CR>gv-gv",
    { desc = "JetBrains: Multi Move Down" }
)
map(
    "x",
    "<c-s-up>",
    ":m '<-2<CR>gv-gv",
    { desc = "JetBrains: Multi Move Down" }
)
map("n", "<S-Down>", "vj", { desc = "JetBrains: Multi Line Select Down" })
map("v", "<S-Down>", "j", { desc = "JetBrains: Multi Line Select Down" })
map("n", "<S-Up>", "vk", { desc = "JetBrains: Multi Line Select Up" })
map("v", "<S-Up>", "k", { desc = "JetBrains: Multi Line Select, Up" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
