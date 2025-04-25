return{
  "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    cmd = "Telescope", -- 使用命令触发加载
    keys = "<leader>ff",
    lazy = true,
    dependencies = {
      {"nvim-lua/plenary.nvim", lazy = true}, -- 按需加载
    },
    config = function()
      local builtin = require("telescope.builtin")

      -- 设置快捷键映射
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})  -- 环境里要安装ripgrep
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end
}
