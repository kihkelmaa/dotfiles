return {
  "preservim/vimux",
  keys = {
    { "<leader>vp", ":VimuxPromptCommand<CR>", desc = "Vimux: Prompt for command" },
    { "<leader>vl", ":VimuxRunLastCommand<CR>", desc = "Vimux: Run last command" },
    { "<leader>vi", ":VimuxInspectRunner<CR>", desc = "Vimux: Inspect runner pane" },
    { "<leader>vz", ":VimuxZoomRunner<CR>", desc = "Vimux: Zoom runner pane" },
    { "<leader>vc", ":VimuxCloseRunner<CR>", desc = "Vimux: Close runner pane" },
    { "<leader>vs", ":VimuxInterruptRunner<CR>", desc = "Vimux: Stop running command" },
  },
  config = function()
    -- Configuration options
    vim.g.VimuxHeight = "15" -- Runner pane height (30%)
    vim.g.VimuxOrientation = "v" -- Split vertically (v) or horizontally (h)
    vim.g.VimuxUseNearest = 1 -- Use existing pane if available
    vim.g.VimuxResetSequence = "C-c" -- Key sequence to stop running commands
    vim.g.VimuxPromptString = "Command? " -- Prompt text
  end,
}
