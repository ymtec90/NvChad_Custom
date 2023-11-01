vim.opt.mouse = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.g.dap_virtual_text = true

-- Mappings
-- Normal Mode
vim.keymap.set("n", "o", "o<ESC>")
vim.keymap.set("n", "O", "O<ESC>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "Y", "y$")
-- Disable keys
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "Q", "<Nop>")
-- Insert Mode
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "jk", "<ESC>")
-- Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Vimscript
function CreateAutoCommands()
  vim.cmd([[
    augroup cursor_off
      autocmd!
      autocmd WinLeave * set nocursorline
      autocmd WinEnter * set cursorline
    augroup END
    augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
      autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
    augroup END
  ]])
end

CreateAutoCommands()
