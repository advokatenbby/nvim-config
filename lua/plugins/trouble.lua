return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>"
        },
        {
            "<leader>cs",
            "<cmd>Trouble diagnostics toggle filterbuf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)"
        }
    }
}
