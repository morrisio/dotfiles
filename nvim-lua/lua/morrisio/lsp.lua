local lspconfig = require('lspconfig')

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
        vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

        vim.keymap.set("n", "<leader>dl", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>dn", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "<leader>dp", function() vim.diagnostic.goto_prev() end, opts)

        vim.keymap.set("n", "<leader>lh", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, opts)
        vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
    end,
})

-- Diagnostics
vim.diagnostic.config({
    virtual_text = true,
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = 'λ',
                luasnip = '⋗',
                buffer = 'Ω',
                path = '🖫',
            }

            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<CR>'] = cmp.config.disable, -- Don't select on Enter
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'buffer', keyword_length = 3},
        {name = 'luasnip', keyword_length = 2},
    },
    {
        { name = 'buffer' },
    })
})




-- Golang
lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = lsp_capabilities,
    settings = {
        gopls =  {
            buildFlags =  {"-tags=integration"},
            ['local'] = "github.com/sliide",
            gofumpt = true
        },
    },
})

