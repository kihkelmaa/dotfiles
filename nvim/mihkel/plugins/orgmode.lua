return {
  "nvim-orgmode/orgmode",
  -- event = "VeryLazy",
  ft = { "org" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/orgfiles/**/*",
      org_default_notes_file = "~/orgfiles/refile.org",
      org_hide_leading_stars = true,
      org_startup_folded = "content",
      org_hide_emphasis_markers = true,
      mappings = {
        org = {
          org_toggle_checkbox = { "<leader>ok" },
          org_next_visible_heading = { "|" },
          org_previous_visible_heading = { "¶" },
        },
      },
    })

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
