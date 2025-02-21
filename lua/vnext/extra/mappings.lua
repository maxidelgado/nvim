local function map(mode, l, r, opts)
  opts = opts or {}
  vim.keymap.set(mode, l, r, opts)
end

map("n", "<C-s>", ":wa<CR>") -- save shortcut
map("n", "<C-q>", ":qa<CR>") -- save shortcut
map("n", "<A-d>", "yyp") -- duplicate line
map("v", "<A-d>", ":'<,'>t'><CR>") -- duplicate line
map("n", "ff", ":lua MiniFiles.open()<CR>", { desc = "Open mini files"}) -- open mini files
