" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>

" " Using lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"
" Telescope-project

" nnoremap <leader>p <cmd>Telescope project<cr>

lua << EOF
vim.api.nvim_set_keymap(
    'n',
    '<leader>p',
    ":lua require'telescope'.extensions.project.project{ display_type = 'full'}<CR>",
    {noremap = true, silent = true}
)

require('telescope').setup {
	defaults = {
		path_display = { shorten = 4 }
	},
	extensions = {
		project = {
			base_dirs = {
				{'~/work/2_ecole/github/', max_depth = 2},
			}
		}
	}
}
EOF
lua require'telescope'.load_extension('project')
" lua require'telescope'.extensions.project.project{ display_type = 'full' }


lua << EOF
require('telescope').setup {
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      -- theme = "ivy",
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    }
  }
}
EOF


