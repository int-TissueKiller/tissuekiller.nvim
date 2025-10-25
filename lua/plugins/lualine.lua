return{
  "nvim-lualine/lualine.nvim", 
    event = {"BufReadPost", "BufNewFile"},
    dependencies = {
      {"nvim-tree/nvim-web-devicons", lazy = true}, -- 图标支持，按需加载
    },
    config = function ()
      require("lualine").setup({
        options = {
          theme = "gruvbox"
        },
      })
    end 
}
