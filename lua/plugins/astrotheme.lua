---@type LazySpec
return {
    "AstroNvim/astrotheme",
    ---@type AstroThemeOpts
    opts = {
        palettes = {
            ---@type AstroThemePalette
            astrodark = { -- Extend or modify astrodarks palette colors
                ui = {
                    base = "#090909",
                    inactive_base = "#0b0b0b",
                    tool = "#0b0b0b",
                    tabline = "#0b0b0b",
                    statusline = "#0c0e12",
                    current_line = "#191e20",
                    selection = "#27333d",
                    highlight = "#073ba5",
                    menu_selection = "#191e20",
                },
            },
        },
    },
}
