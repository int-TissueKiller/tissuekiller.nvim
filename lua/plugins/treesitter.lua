return{
  "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {"BufReadPost", "BufNewFile"}, -- 按需加载
    dependencies = {
      {"HiPhish/rainbow-delimiters.nvim", lazy = true, event = "BufReadPost"}, -- 彩色括号
    },
    config = function()
      require("nvim-treesitter").setup {
        -- 添加不同语言
        --ensure_installed = {"bash", "c", "cpp", "json", "lua", "python", "java"}, -- one of "all" or a list of languages
        highlight = { enable = true },
        indent = { enable = true, disable = { "python" } },
        auto_install = false,

        -- 不同括号颜色区分
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      }
    end
}
