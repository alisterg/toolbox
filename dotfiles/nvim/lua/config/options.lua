----------------------------------------------------------
-- Theme
--
--
vim.o.background="dark"
vim.cmd [[source ~/.config/nvim/space.vim]]

----------------------------------------------------------
-- General options
--
--
vim.g.markdown_folding = 1
vim.o.scrolloff=10
vim.o.expandtab=true
vim.o.ignorecase=true
vim.o.number=true
vim.o.mouse=a
vim.o.shiftwidth=4
vim.o.tabstop=4
vim.o.ai=true -- Auto indent
vim.o.si=true -- Smart indent
vim.o.wrap=true -- Soft Wrap lines
vim.o.foldmethod=indent
vim.o.foldnestmax=3
vim.o.foldlevel=3
vim.o.cursorline=true

----------------------------------------------------------
-- Netrw - file explorer
--
-- 
--
vim.g.netrw_banner = 0 -- Hide banner by default
vim.g.netrw_browse_split = 4 -- Open files in previous window (main window usually)
vim.g.netrw_winsize = 28 -- Width of the window
vim.g.netrw_banner = 0 -- Hide Netrw banner by default
vim.g.netrw_liststyle = 3 -- Tree view

-- Global flag to track netrw state
_G.NetrwIsOpen = _G.NetrwIsOpen or false

function ToggleNetrw()
  if _G.NetrwIsOpen then
    -- If netrw is open, close all netrw buffers.
    local last_buf = vim.fn.bufnr("$")
    for i = last_buf, 1, -1 do
      if vim.fn.getbufvar(i, "&filetype") == "netrw" then
        -- Wipeout the buffer.
        vim.cmd("bwipeout " .. i)
      end
    end
    _G.NetrwIsOpen = false
  else
    -- Open Netrw
    _G.NetrwIsOpen = true
    vim.cmd("Vexplore")
  end
end
-- Create key mappings for normal and insert mode
vim.api.nvim_set_keymap("n", "<C-e>", ":lua ToggleNetrw()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<Esc>:lua ToggleNetrw()<CR>", { noremap = true, silent = true })


----------------------------------------------------------
-- Vim Gitgutter
--
--
vim.o.signcolumn='number'
-- vim.g.gitgutter_sign_added = '|'
-- vim.g.gitgutter_sign_modified = '|'
-- vim.g.gitgutter_sign_removed = '|'
-- vim.g.gitgutter_sign_removed_first_line = '|'
-- vim.g.gitgutter_sign_removed_above_and_below = '|'
-- vim.g.gitgutter_sign_modified_removed = '|'


----------------------------------------------------------
-- Telescope
--
--
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", "fastlane", ".xcodeproj", ".pbxproj"},
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        prompt_position = "top",
        mirror = true,
      },
      preview_width = 60
    },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}




----------------------------------------------------------
-- Random settings
--
--

local lspconfig = require("lspconfig")
lspconfig.gopls.setup({})

local symbols = { Error = "󰅙", Info = "󰋼", Hint = "󰌵", Warn = "" }

local diagnostic_config = {
  signs = {
    active = true,
    text = {
            [vim.diagnostic.severity.ERROR] = symbols.Error,
            [vim.diagnostic.severity.WARN] = symbols.Warn,
            [vim.diagnostic.severity.INFO] = symbols.Info,
            [vim.diagnostic.severity.HINT] = symbols.Hint,
        },
       linehl = {
           [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
       },
       numhl = {
           [vim.diagnostic.severity.WARN] = 'WarningMsg',
       },
  },
  virtual_text = false,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = true,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = vim.diagnostic.severity,
    prefix = "",
  },
}
vim.diagnostic.config(diagnostic_config)


-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

