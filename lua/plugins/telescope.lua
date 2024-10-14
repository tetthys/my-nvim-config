return {
{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        -- Load telescope
local builtin = require('telescope.builtin')

-- Use common keymaps forr telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

      end
},
{
    'nvim-telescope/telescope-ui-select.nvim',
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
}
}
