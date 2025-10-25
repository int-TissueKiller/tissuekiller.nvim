return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      event = "BufReadPre",
      config = function()
        require("mason").setup({
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        })

        require("mason-lspconfig").setup({
          ensure_installed = {}, -- 可选：如 { "lua_ls", "clangd", "pylsp" }
        })
      end,
    },
    {
      "neovim/nvim-lspconfig",
      opts = {},
      config = function()
        -- 获取补全能力
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- 定义每个语言服务器的配置
        local servers = {
          lua_ls = {},
          clangd = {},
          pylsp = {},
          -- jdtls = {
          --   cmd = { "java", "-jar", "/path/to/jdtls.jar" },
          --   settings = { java = { home = "/usr/lib/jvm/java-8-openjdk" } },
          -- },
          -- 添加其他服务器...
        }

        -- 统一设置并启用所有服务器
        for server, custom_opts in pairs(servers) do
          local opts = vim.tbl_deep_extend("force", {
            capabilities = capabilities,
          }, custom_opts)

          -- ✅ 现代 API：定义配置
          vim.lsp.config(server, opts)
          -- ✅ 现代 API：启用服务器（自动处理 FileType）
          vim.lsp.enable(server)
        end
      end,
    },
    {
      "scalameta/nvim-metals",
      ft = "scala",
      lazy = true,
    },
  },
}
