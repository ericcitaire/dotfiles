return {
    {
        "sainnhe/sonokai",
        priority = 1000,
        config = function()
            vim.opt.termguicolors = true
            vim.g.sonokai_style = "default" -- alternatives: atlantis, andromeda, shusia, maia, espresso
            vim.g.sonokai_enable_italic = 1
            vim.cmd.colorscheme("sonokai")
        end,
    },
}
