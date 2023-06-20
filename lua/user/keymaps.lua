-- Shorten function name
local keymap = vim.keymap.set
local wk = require("which-key")
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

wk.register({
  ["<TAB>"] = { "<cmd>bnext<CR>", "Go to next buffer" },
  ["<S-TAB>"] = { "<cmd>bprevious<CR>", "Go to previous buffer" },
  ["<"] = { "<gv", "Stay in indent mode", mode = "v" },
  [">"] = { ">gv", "Stay in indent mode", mode = "v" },
  ["<C-/>"] = {
    function ()
      vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("<ESC>", true, false, true),
        'nx',
        false
      )
    end,
    "Toggle line comment (visual)",
    mode = "v"
  },
  ["<leader>"] = {
    h = { "<cmd>nohlsearch<CR>", "Clear search highlights" },
    x = { "<cmd>Bdelete!<CR>", "Close current buffer" },
    e = { "<cmd>NvimTreeFocus<CR>", "Focus file tree" },
    ["\\"] = { "<cmd>NvimTreeToggle<CR>", "Toggle file tree" },
    f = {
      f = { "<cmd>Telescope find_files<CR>", "Find files" },
      t = { "<cmd>Telescope live_grep<CR>", "Live grep" },
      p = { "<cmd>Telescope projects<CR>", "Search projects" },
      b = { "<cmd>Telescope buffers<CR>", "Search buffers" },
      c = { "<cmd>Telescope colorscheme<CR>", "Select colorscheme" }
    },
    a = { "<cmd>ASToggle<CR>", "Toggle auto save" },
    m = { "<cmd>lua print(vim.api.nvim_get_mode()['mode'])", "Print current mode" },
    ["/"] = {
      "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
      "Toggle line comment",
    },
    t = {
      t = { "<cmd>TroubleToggle<CR>", "Toggle trouble" },
      w = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Toggle workspace diagnostics" },
      d = { "<cmd>TroubleToggle document_diagnostics<CR>", "Toggle document diagnostics" },
      l = { "<cmd>TroubleToggle loclist<CR>", "Toggle loclist" },
      q = { "<cmd>TroubleToggle quickfix<CR>", "Toggle quickfix" },
    },
    q = { "<cmd>q<CR>", "Quit current buffer" },
    qa = { "<cmd>qa<CR>", "Quit all" },
    wq = { "<cmd>wq<CR>", "Save and quit current buffer" },
    wqa = { "<cmd>wqa<CR>", "Save and quit all buffers" },
    r = { "<cmd>redo<CR>", "Redo last change" },
    g = {
      g = { "<cmd>Glow<CR>", "Preview current buffer in Glow markdown" },
      c = { "<cmd>Glow!<CR>", "Close markdown preview in current buffer" }
    },
    c = {
      p = { "<cmd>Copilot<CR>", "Show Github Copilot suggestion panel" },
      e = { "<cmd>Copilot enable<CR>", "Enable Github Copilot" },
      d = { "<cmd>Copilot disable<CR>", "Disable Github Copilot" },
      s = { "<cmd>Copilot status<CR>", "Show Github Copilot status" }
    }
  },
  g = {
    l = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Enable LazyGit" },
    h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show LSP Hover" },
    R = { "<cmd>TroubleToggle lsp_references<CR>", "Show LSP References" }
  },
  d = {
    name = "dap",
    b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue Execution" },
    i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    O = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle REPL" },
    l = { "<cmd>lua require'dap'.run_last()<cr>", "Run Last" },
    u = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle DAP UI" },
    t = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" }
  },
  t = {
    t = { "<cmd>ToggleTerm <CR>", "Toggle term" }
  }
}, opts)

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

