return{
  "lewis6991/gitsigns.nvim",
  event = "BufReadPost", -- 在文件读取完成后加载
  config = function()
    require('gitsigns').setup({
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    })
  end
}
