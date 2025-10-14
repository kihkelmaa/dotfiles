return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "rust",
        "go",
        "cpp",
        "javascript",
        "html",
        "css",
        "python",
      },
      ignore_install = { "org" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      playground = {
        enable = true,
      },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
    })
  end,
}
