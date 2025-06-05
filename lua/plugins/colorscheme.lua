return {
  -- add colorschemes
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  -- { "navarasu/onedark.nvim" },
  -- { "projekt0n/github-nvim-theme" },
  -- { "Mofiqul/vscode.nvim" },
  -- { "EdenEast/nightfox.nvim" },

  -- Configure LazyVim to load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },

  lazy = true,
}
