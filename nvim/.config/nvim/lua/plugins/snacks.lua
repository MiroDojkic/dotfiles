return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
  },
  opts = {
    explorer = { enabled = false },
    picker = {
      sources = {
        files = {
          hidden = true,
        },
      },
    },
    indent = {
      animate = { enabled = false },
    },
    animate = { enabled = false },
    gitbrowse = { enabled = false },
    terminal = { enabled = false },
    lazygit = { enabled = false },
    scroll = { enabled = false },
  },
}
