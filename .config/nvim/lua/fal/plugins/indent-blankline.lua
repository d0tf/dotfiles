return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      local highlight = {
        "hl",
      }

      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "hl", { fg = "#6c757d" })
      end)

      require("ibl").setup({
        scope = {
          highlight = highlight,
          char = "▏",
          show_start = false,
          show_end = false
        }
      })
    end
  }
}
