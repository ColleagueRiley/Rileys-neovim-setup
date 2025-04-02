require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle File Explorer" })

map("n", "<leader>db", "<cmd>DapToggleBreakpoint <cr>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd>DapContiune <cr>", { desc = "Start or continue the debugger" })
--  map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
