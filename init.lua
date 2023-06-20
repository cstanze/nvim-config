-- vim.lsp.set_log_level("debug")

require "user.impatient"
require "user.options"
-- require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"

-- :verbose set tabstop?
-- ^ this shows the last set. i disable certain recommended styles here:
vim.g.rust_recommended_style = 0
vim.g.python_recommended_style = 0

