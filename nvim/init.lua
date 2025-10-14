require("mihkel.core")
require("mihkel.lazy")
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = false,
  underline = true,
  bold = false,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "soft", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd([[colorscheme gruvbox]])
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Tree-sitter highlight overrides (put this AFTER colorscheme)
vim.api.nvim_set_hl(0, "@variable.builtin", { link = "GruvboxBlue" })
vim.api.nvim_set_hl(0, "@function.method", { link = "GruvboxAqua" })
vim.api.nvim_set_hl(0, "@variable.member", {})
vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "GruvboxPurple" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "GruvboxGray" })
vim.api.nvim_set_hl(0, "@punctuation.special", { link = "GruvboxBlue" })
vim.api.nvim_set_hl(0, "@operator", { link = "GruvboxAqua" })
vim.api.nvim_set_hl(0, "@function.method.call", { link = "GruvboxBlue" })
vim.api.nvim_set_hl(0, "@constant.builtin", { link = "GruvboxPurple" })
vim.api.nvim_set_hl(0, "@function.call", { link = "GruvboxBlue" })

vim.api.nvim_set_hl(0, "@org.hyperlink.desc", { link = "GruvboxYellow" })
-- vim.o.background = "dark" -- or "light" for light mode

vim.opt.runtimepath:append("/Users/mihkelkaasik/progeasjad/projects/orgui/org-roam-ui.nvim")

require("org-roam-ui").setup({
  port = 3000,
})
