return{
  "ellisonleao/gruvbox.nvim",
  config = function()
    vim.cmd("colorscheme gruvbox")

    require("gruvbox").setup({
      style = "dark" 
    })
  end 
}
