return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  config = function()
    require("neoscroll").setup({
      mappings = {}, -- We'll handle all mappings manually
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = true,
      cursor_scrolls_alone = true,
      easing_function = nil,
    })

    local neoscroll = require("neoscroll")

    -- Smooth scrolling WITH centering
    local keymap = {
      -- Page scrolling with smooth and center
      ["<C-d>"] = function()
        neoscroll.ctrl_d({ duration = 150 })
      end,
      ["<C-u>"] = function()
        neoscroll.ctrl_u({ duration = 150 })
      end,
      ["<C-f>"] = function()
        neoscroll.ctrl_f({ duration = 200 })
      end,
      ["<C-b>"] = function()
        neoscroll.ctrl_b({ duration = 200 })
      end,

      -- Line scrolling without cursor movement
      ["<C-y>"] = function()
        neoscroll.scroll(-0.1, { move_cursor = false, duration = 50 })
      end,
      ["<C-e>"] = function()
        neoscroll.scroll(0.1, { move_cursor = false, duration = 50 })
      end,
    }

    local modes = { "n", "v", "x" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
