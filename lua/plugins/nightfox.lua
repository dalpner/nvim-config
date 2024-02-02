return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordfox",
    },
  },
}
