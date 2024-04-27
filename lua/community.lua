-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
    "AstroNvim/astrocommunity",

    { import = "astrocommunity.markdown-and-latex.vimtex" },
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.toml" },
    { import = "astrocommunity.pack.yaml" },

    { import = "astrocommunity.pack.rust" },

    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.just" },
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.python" },
    { import = "astrocommunity.pack.typescript-all-in-one" },

    { import = "astrocommunity.diagnostics.trouble-nvim" },
    { import = "astrocommunity.editing-support.undotree" },
    { import = "astrocommunity.motion.leap-nvim" },
    { import = "astrocommunity.motion.mini-ai" },
}
