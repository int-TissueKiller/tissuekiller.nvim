return{
  "williamboman/mason.nvim",
  cmd = "Mason", -- 使用 :Mason 命令触发加载
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      event = "BufReadPost",
      config = function()
        require("mason").setup({
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
            }
          }
        })

        require("mason-lspconfig").setup({
          -- 确保安装，根据需要填写
          ensure_installed = {}, -- 可以在这里添加语言服务器名称，如 {"lua_ls", "clangd", "pylsp"}
        })
      end,
    },
    {
      "neovim/nvim-lspconfig",
      lazy = true, -- LSP 配置按需加载
      event = "BufReadPost", -- 在打开文件时加载
      config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- 定义一个通用的 LSP 设置函数
        local function setup_lsp(server, custom_config)
          local default_config = {
            capabilities = capabilities,
          }
          require("lspconfig")[server].setup(vim.tbl_deep_extend("force", default_config, custom_config or {}))
        end

        -- Lua 语言服务器配置
        vim.api.nvim_create_autocmd("FileType", {
          pattern = "lua",
          callback = function()
            setup_lsp("lua_ls")
          end,
        })

        -- C/C++ 语言服务器配置 (clangd)
        vim.api.nvim_create_autocmd("FileType", {
          pattern = "c,cpp",
          callback = function()
            setup_lsp("clangd")
          end,
        })

        -- Python 语言服务器配置 (pylsp)
        vim.api.nvim_create_autocmd("FileType", {
          pattern = "python",
          callback = function()
            setup_lsp("pylsp")
          end,
        })

        -- Java 语言服务器配置 (jdtls)
      --vim.api.nvim_create_autocmd("FileType", {
      --  pattern = "java",
      --  callback = function()
      --     setup_lsp("jdtls", {
      --      cmd = { 'java', '-jar', '/path/to/eclipse.jdt.ls/org.eclipse.jdt.ls.core.jar' },
      --      settings = {
      --        java = {
      --          home = '/usr/lib/jvm/java-8-openjdk', -- 指定 JDK 8 路径
      --        },
      --        completion = {
      --          enabled = true, -- 启用代码补全
      --          favoriteStaticMembers = true, -- 允许补全静态成员
      --        },
      --      },
      --    })
      -- end,
      --})
      end,
    },
    {
      "scalameta/nvim-metals", -- Scala 语言服务器支持
      ft = "scala", -- 仅在打开 Scala 文件时加载
      lazy = true,
    },
  },
}
