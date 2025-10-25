return {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    main = "ibl",
--     config = function()
--       local highlight = {
--         "RainbowRed",
--         "RainbowYellow",
--         "RainbowBlue",
--         "RainbowOrange",
--         "RainbowGreen",
--         "RainbowViolet",
--         "RainbowCyan",
--       }
--
--       local hooks = require "ibl.hooks"
-- -- create the highlight groups in the highlight setup hook, so they are reset
-- -- every time the colorscheme changes
--       hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--         vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#B16286" })
--         vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D79E1D" })
--         vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#458588" })
--         vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#FE8019" })
--         vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98971A" })
--         vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#B16286" })
--         vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#689D6A" })
--       end)
--
--       vim.g.rainbow_delimiters = { highlight = highlight }
--
--       require("ibl").setup { indent = { highlight = highlight } }
--
--       hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
--     end
    opts = {},
}
