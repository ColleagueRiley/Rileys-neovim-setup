require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle File Explorer" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint <cr>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd>DapContiune <cr>", { desc = "Start or continue the debugger" })

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
--  map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
