require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- In your custom/mappings.lua (for nvchad users)
vim.api.nvim_set_keymap('n', '<leader>rf', ':cdo s///gc', { noremap = true, silent = false })

vim.api.nvim_set_keymap('n', '<leader>rg', ':lua RgToQuickfix()<CR>', {noremap = true, silent = true} )

vim.api.nvim_set_keymap('n', '<leader>rgi', ':lua RgToQuickfixcaseinsensitive()<CR>', {noremap = true, silent = true} )

function RgToQuickfix()
  local pattern = vim.fn.input("Search pattern: ")
  if pattern ~= "" then
    vim.cmd("cgetexpr system('rg --vimgrep " .. pattern .. " -w .')")
    vim.cmd("copen")
  end
end

function RgToQuickfixcaseinsensitive()
  local pattern = vim.fn.input("Search pattern: ")
  if pattern ~= "" then
    vim.cmd("cgetexpr system('rg --vimgrep " .. pattern .. " -w -i .')")
    vim.cmd("copen")
  end
end

-- Open terminal in a horizontal split
vim.api.nvim_set_keymap('n', '<leader>th', ':split | terminal<CR>', { noremap = true, silent = true })

-- Open terminal in a vertical split
vim.api.nvim_set_keymap('n', '<leader>tv', ':vsplit | terminal<CR>', { noremap = true, silent = true })

-- Open terminal in a new tab
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnew | terminal<CR>', { noremap = true, silent = true })

-- Go to the next buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })

-- Go to the previous buffer
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })

-- Close terminal from terminal mode without using the leader key
vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-n>:bd!<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "+", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
