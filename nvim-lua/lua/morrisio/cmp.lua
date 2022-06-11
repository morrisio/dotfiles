local cmp = require('cmp')

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

local function config(_config)
	return vim.tbl_deep_extend("force", {
		capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
		on_attach = function()
			vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "<leader>vws", ":lua vim.lsp.buf.workspace_symbol()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "<leader>vd", ":lua vim.diagnostic.open_float()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "g[", ":lua vim.lsp.diagnostic.goto_next()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "g]", ":lua vim.lsp.diagnostic.goto_prev()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "<leader>vca", ":lua vim.lsp.buf.code_action()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("n", "<leader>vrn", ":lua vim.lsp.buf.rename()<CR>",  {noremap = true})
			vim.api.nvim_set_keymap("i", "<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>",  {noremap = true})
		end,
	}, _config or {})
end

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").gopls.setup(config({
    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}))
