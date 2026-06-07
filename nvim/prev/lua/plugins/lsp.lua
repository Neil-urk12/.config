return {
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    "folke/lazydev.nvim",
	    ft = "lua",
	    opts = {
		library = {
		    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	    },
	},
	config = function()
	   -- vim.lsp.enable('cssmodules_ls')
	   -- vim.lsp.enable('emmet_ls')
	   -- vim.lsp.config('eslint', {
		--- ...
	--	on_attach = function(client, bufnr)
	--	vim.api.nvim_create_autocmd("BufWritePre", {
	--	buffer = bufnr,
	--	command = "EslintFixAll",
	   -- })
	   -- vim.lsp.enable('golangci_lint_ls')
	   -- vim.lsp.gopls.setup({})
	   -- vim.lsp.config('html', {
--		capabilities = capabilities,
--	    })
	   -- vim.lsp.enable('html')
	   -- require("lspconfig").lua_ls.setup{}
	    
	    require("lspconfig").eslint.setup{}
	    require("lspconfig").cssmodules_ls.setup{}
	    require("lspconfig").emmet_ls.setup{}
	    require("lspconfig").golangci_lint_ls.setup{}
	    require("lspconfig").gopls.setup{}
	end,
    }
}
