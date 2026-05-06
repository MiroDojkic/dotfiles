return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>e",
      "<cmd>Neotree toggle filesystem reveal left<cr>",
      desc = "NeoTree",
    },
  },
  opts = {
    auto_open = false,
    window = {
      width = 30,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
