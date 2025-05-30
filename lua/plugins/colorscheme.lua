return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        opts = {}
    }, 
    {
        "olimorris/onedarkpro.nvim", 
        priority = 1000 
    }, 
    {
        "AlexvZyl/nordic.nvim", 
        lazy = false, 
        priority = 1000, 
        config = function()
            require("nordic").load()
        end
    }
}
