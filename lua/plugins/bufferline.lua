return{
  "akinsho/bufferline.nvim",
  event = "BufEnter", -- 按需加载
  config = function()
    vim.opt.termguicolors = true

    require("bufferline").setup({
      options = {
        -- 使用 nvim 内置 LSP
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })
  end
}
