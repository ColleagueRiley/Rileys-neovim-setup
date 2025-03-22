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
        "c", "cpp",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
             -- add tsx and treesitter
            vim.list_extend(opts.ensure_installed, {
                "c", "cpp"
            })
            require'nvim-treesitter.configs'.setup {
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
            }
        end
    },

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
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true}
}
