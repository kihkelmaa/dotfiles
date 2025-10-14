return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    -- dashboard.section.header.val = { [[                   N E O V I M                     ]] }
    dashboard.section.header.val = { [[]], [[]], [[]], [[N E O V I M]], [[]], [[]], [[]], [[]], [[]] }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("SPC e", "  > Yazi", "<cmd>Yazi cwd<CR>"),
      dashboard.button("SPC fr", "  > Open recent file", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>AutoSession restore<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    dashboard.section.footer.val = {
      "",
      "",
      "",
      "You're going to f*cking die.                              ",
      "So take your shot.                                        ",
      "                                                  - Alex Hormozi",
    }
    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
