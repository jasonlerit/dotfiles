require "nvchad.mappings"

local map = vim.keymap.set

-- exit
map("i", "jk", "<ESC>")

map("n", "<leader>mc", function()
  vim.opt_local.conceallevel = vim.opt_local.conceallevel:get() == 0 and 2 or 0
end, { desc = "Toggle Markdown conceal" })

map("n", "<leader>ec", "<cmd>CloakToggle<cr>", { desc = "Toggle Cloak" })
