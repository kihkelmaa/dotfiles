return {
  "chipsenkbeil/org-roam.nvim",
  tag = "0.2.0",
  dependencies = {
    {
      "nvim-orgmode/orgmode",
      tag = "0.7.0",
    },
  },
  config = function()
    require("org-roam").setup({
      directory = "~/orgfiles",
      immediate = {
        target = "%[slug].org",
      },
      templates = {
        d = {
          desciption = "default",
          template = "%?",
          target = "%[slug].org",
        },
      },
      --[[ extensions = {
        dailies = {
          templates = {
            d = {
              description = "default",
              template = "* %?",
              target = "%<%Y-%m-%d>.org",
            },
          },
        },
      }, ]]

      -- optional
      --org_files = {
      -- "~/orgfiles",
      -- "~/some/folder/*.org",
      -- "~/a/single/org_file.org",
      --},
    })
  end,
}
