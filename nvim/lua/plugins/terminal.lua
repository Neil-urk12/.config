return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            direction = "float", -- Default direction
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = "curved",
                winblend = 0,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                }
            }
        })

        local Terminal = require("toggleterm.terminal").Terminal

        -- Create specific terminals for each direction
        local float_term = Terminal:new({ 
            direction = "float",
            id = 1,
            float_opts = {
                border = "curved"
            }
        })

        local horizontal_term = Terminal:new({
            direction = "horizontal",
            id = 2
        })

        local vertical_term = Terminal:new({
            direction = "vertical",
            id = 3
        })

        -- Define keymaps using the terminal toggle functions
        vim.keymap.set({"n", "t"}, "<A-i>", function() float_term:toggle() end)
        vim.keymap.set({"n", "t"}, "<A-h>", function() horizontal_term:toggle() end)
        vim.keymap.set({"n", "t"}, "<A-v>", function() vertical_term:toggle() end)
    end
}
