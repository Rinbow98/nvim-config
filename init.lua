-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").ruff.setup({
  init_options = {
    settings = {
      configuration = {
        ["indent-width"] = 2,
        ["target-version"] = "py311",
        select = {},
      },
    },
  },
})
