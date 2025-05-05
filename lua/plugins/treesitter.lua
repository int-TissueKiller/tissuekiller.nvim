return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  main = "nvim-treesitter.configs",
  dependencies = "HiPhish/rainbow-delimiters.nvim",
  opts = {
    ensure_installed = {"bash", "c", "cpp", "json", "lua", "python", "java"}, -- one of "all" or a list of languages
    highlight = { enable = true },
    indent = { enable = true, disable = { "python" } },
  }
}
