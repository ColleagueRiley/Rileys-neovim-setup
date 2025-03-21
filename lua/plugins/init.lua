return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
      "html", "css", "c", "cpp"
 		},
   	},
     },
   --- discord RPCs
    { 
        'IogaMaster/neocord',
        event = "VeryLazy",
        config = function()
        -- The setup config table shows all available config options with their default values:
          require("neocord").setup({
              -- General options
              logo                = "auto",
              logo_tooltip        = nil,
              main_image          = "language",
            log_level           = nil,
            debounce_timeout    = 10,
              blacklist           = {},
              file_assets         = {},
              show_time           = true,
              global_timer        = false,
                editing_text        = "Editing %s",
              file_explorer_text  = "Browsing %s",
              git_commit_text     = "Committing changes",
              plugin_manager_text = "Managing plugins",
              reading_text        = "Reading %s",
              workspace_text      = "Working on %s",
              line_number_text    = "Line %s out of %s",
              terminal_text       = "Using Terminal",
          })
        end,
    }
}
