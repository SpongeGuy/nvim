return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{
        defaults = {
          vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        },
      }

      local builtin = require("telescope.builtin")
      local utils = require("telescope.utils")
      vim.keymap.set('n', '<leader>fc', function()
        builtin.find_files {cwd = vim.fn.stdpath 'config'}
      end, {})
      vim.keymap.set('n', '<leader>fb', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, {})
      vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>ff', function()
        builtin.find_files({cwd = utils.buffer_dir(), hidden = false})
      end, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
      end
  },
}
