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
                    current_line = "#291e27",
                },
            },
        },
    },
}
