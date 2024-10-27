return {
  { "wakatime/vim-wakatime", lazy = false },
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
          filter_disallow = {
            -- Disable suggestions in comments
            [1] = function(suggestion)
              local context = suggestion.context
              return context.filetype == "comment"
            end,
          },
        },
        panel = { enabled = false },
        filetypes = {
          ["*"] = true,
        },
      })
    end,
  },
}
