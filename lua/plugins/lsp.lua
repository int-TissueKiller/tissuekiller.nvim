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
  ensure_installed = {
    "lua_ls",
    "clangd",
    "pylsp",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  capabilities = capabilities,
}

require("lspconfig").pylsp.setup {
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {
  cmd = { 'java', '-jar', '/path/to/eclipse.jdt.ls/org.eclipse.jdt.ls.core.jar' },
  settings = {
      java = {
          home = '/usr/lib/jvm/java-8-openjdk', -- 指定 JDK 8 路径
      },
      completion = {
        enabled = true, -- 启用代码补全
        favoriteStaticMembers = true, -- 允许补全静态成员
      },
  },
}

