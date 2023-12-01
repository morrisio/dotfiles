vim.api.nvim_set_keymap("n", "<c-n>", ":Neotree toggle<CR>", {})
vim.api.nvim_set_keymap("n", "-", ":Neotree reveal<CR>", {})

require("neo-tree").setup({
        event_handlers = {

          {
            event = "file_opened",
            handler = function(file_path)
              require("neo-tree.command").execute({ action = "close" })
            end
          },

        }
      })
