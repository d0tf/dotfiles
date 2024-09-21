return {
  {
    "folke/trouble.nvim",
    opts = {
      modes = {
        split_diag = {
          mode = "diagnostics",
          preview = {
            type = "split",
            relative = "win",
            position = "right",
            size = 0.4,
          },
        },
      },
    },
    cmd = "Trouble",
    keys = {
      {
        "<leader>tt",
        "<cmd>Trouble split_diag toggle focus=true<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "]t",
        "<cmd>Trouble split_diag next auto_jump=true<cr>",
        desc = "Jump to next Trouble",
      },
      {
        "[t",
        "<cmd>Trouble split_diag prev auto_jump=true<cr>",
        desc = "Jump to prev Trouble",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  }
}
