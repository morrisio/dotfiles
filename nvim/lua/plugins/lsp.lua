local function config()
	vim.lsp.config("gopls", {
		settings = {
			gopls = {
				hints = {
					assignVariableTypes = true,
					compositeLiteralFields = true,
					compositeLiteralTypes = true,
					constantValues = true,
					functionTypeParameters = true,
					parameterNames = true,
					rangeVariableTypes = true,
				},
				buildFlags = { "-tags=integration e2e" },
				["local"] = "github.com/sliide",
				gofumpt = true,
			},
		},
	})
    vim.lsp.enable('gopls')

	vim.lsp.enable("lua_ls")
	vim.lsp.enable("stylua")
	vim.lsp.enable("delve")

	local disable_semantic_tokens = {
		lua = true,
	}

	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(args)
			local bufnr = args.buf
			local client = assert(vim.lsp.get_client_by_id(args.data.client_id), "must have valid client")

			vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
			vim.keymap.set("i", "<c-k>", vim.lsp.buf.signature_help)

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0 })
			vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })

			local filetype = vim.bo[bufnr].filetype
			if disable_semantic_tokens[filetype] then
				client.server_capabilities.semanticTokensProvider = nil
			end
		end,
	})

	-- Autoformatting Setup
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt" },
		},
	})

	vim.api.nvim_create_autocmd("BufWritePre", {
		callback = function(args)
			require("conform").format({
				bufnr = args.buf,
				lsp_fallback = true,
				quiet = true,
			})
		end,
	})
end

return {
		"neovim/nvim-lspconfig",
    dependencies = {
		-- Autoformatting
		"stevearc/conform.nvim",
    },
	config = config,
}
