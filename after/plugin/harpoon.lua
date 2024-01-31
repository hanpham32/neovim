local opts = { silent = true }

local function setupHarpoon()
  vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#63698c")
  vim.cmd("highlight! HarpoonActive guibg=NONE guifg=#dcc47f")
  vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=white")
  vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=white")
  vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")

  require("harpoon").setup({
    tabline = true,
    menu = {
      width = vim.api.nvim_win_get_width(0) - 20,
    },
  })
end

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>j", ui.toggle_quick_menu)
vim.keymap.set("n", "<space>hc", function() mark.clear_all() end, opts)
vim.keymap.set("n", "<space>t", function()
  local index = mark.get_index_of(vim.fn.bufname())
  require("mini.bufremove").delete(0, true)
  mark.rm_file(index)
end, opts)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end)

setupHarpoon()
