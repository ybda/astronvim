---@type LazySpec
return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        opts.mapping["<Up>"] = nil
        opts.mapping["<Down>"] = nil
        opts.mapping["<C-P>"] = nil
        opts.mapping["<C-N>"] = nil
        -- opts.mapping["<C-K>"] = nil
        -- opts.mapping["<C-J>"] = nil
        -- opts.mapping["<C-U>"] = nil
        -- opts.mapping["<C-D>"] = nil
        -- opts.mapping["<C-Space>"] = nil
        -- opts.mapping["<C-Y>"] = nil
        -- opts.mapping["<C-E>"] = nil
        opts.mapping["<CR>"] = nil
        opts.mapping["<Tab>"] = nil
        opts.mapping["<S-Tab>"] = nil
    end,
}
