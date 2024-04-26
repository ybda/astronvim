-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
        -- Configure core features of AstroNvim
        features = {
            large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
            autopairs = false, -- enable autopairs at start
            cmp = true, -- enable completion at start
            diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
            highlighturl = true, -- highlight URLs at start
            notifications = true, -- enable notifications at start
        },
        -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
        diagnostics = {
            virtual_text = true,
            underline = true,
        },
        -- vim options can be configured here
        options = {
            opt = { -- vim.opt.<key>
                relativenumber = true,
                number = true,
                spell = false,
                signcolumn = "auto",
                wrap = false,

                cursorcolumn = true,

                tabstop = 4,
                shiftwidth = 4,
                softtabstop = 4,

                expandtab = true,
                smartindent = true,

                scrolloff = 8,
                clipboard = "",
            },
            g = { -- vim.g.<key>
            },
        },
        -- Mappings can be configured through AstroCore as well.
        -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
        mappings = {
            -- first key is the mode
            n = {
                -- second key is the lefthand side of the map

                -- navigate buffer tabs with `H` and `L`
                L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
                H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

                -- mappings seen under group name "Buffer"
                ["<Leader>bD"] = {
                    function()
                        require("astroui.status.heirline").buffer_picker(
                            function(bufnr) require("astrocore.buffer").close(bufnr) end
                        )
                    end,
                    desc = "Pick to close",
                },
                -- tables with just a `desc` key will be registered with which-key if it's installed
                -- this is useful for naming menus
                ["<Leader>b"] = { desc = "Buffers" },
                -- quick save
                -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
            },
            t = {
                -- setting a mapping to false will disable it
                -- ["<esc>"] = false,
            },
            v = {
                -- move lines (by ThePrimeagen)
                ["J"] = ":m '>+1<CR>gv=gv",
                ["K"] = ":m '<-2<CR>gv=gv",
            },
            x = {
                -- paste in selection without loosing your stuff in clipboard (by ThePrimeagen)
                ["<Leader>p"] = '"_dP',
            },
        },
    },
}
