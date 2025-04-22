-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--nvim-tree背景透明
vim.cmd[[highlight NvimTreeNormal guibg=NONE ctermbg=NONE]]
vim.cmd[[highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE]]

require("nvim-tree").setup({
  renderer = {
    icons = {
      show = {
        file = true,         -- 显示文件图标
        folder = true,       -- 显示文件夹图标
        folder_arrow = true, -- 显示文件夹展开箭头图标
        git = true,          -- 显示 git 状态图标
      },
      glyphs = {
        default = "",      -- 默认文件图标
        symlink = "",      -- 符号链接图标
        folder = {
          arrow_closed = "",  -- 文件夹收起图标
          arrow_open = "",    -- 文件夹展开图标
          default = "",       -- 默认文件夹图标
          open = "",          -- 打开的文件夹图标
        },
        git = {
          unstaged = "✗",    -- 未暂存文件图标
          staged = "✓",       -- 已暂存文件图标
          untracked = "★",    -- 未跟踪文件图标
          deleted = "",      -- 删除文件图标
          renamed = "➜",      -- 重命名文件图标
          unmerged = "",     -- 合并冲突文件图标
          ignored = "◌",      -- 忽略文件图标
        },
      },
    },
  },
  })
