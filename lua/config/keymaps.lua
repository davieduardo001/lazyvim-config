-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Next buffer with Tab
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Toggle terminal with Ctrl+T
local function toggle_terminal()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].buftype == "terminal" then
      vim.api.nvim_win_close(win, false)
      return
    end
  end
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.bo[buf].buftype == "terminal" then
      vim.cmd("sbuffer " .. buf)
      vim.cmd("startinsert")
      return
    end
  end
  vim.cmd("terminal")
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<C-t>", toggle_terminal, { desc = "Toggle terminal" })
vim.keymap.set("t", "<C-t>", function()
  vim.cmd("stopinsert")
  toggle_terminal()
end, { desc = "Toggle terminal" })
