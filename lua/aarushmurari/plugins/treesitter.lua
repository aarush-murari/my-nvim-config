return {
	{
	    "nvim-treesitter/nvim-treesitter",
            branch = "main",
	    build = ":TSUpdate",
	    config = function () 
	      local configs = require("nvim-treesitter.configs")

	      configs.setup({
		  ensure_installed = {"rust", "go", "java", "python", "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "css", "jinja" },
		  sync_install = false,
		  highlight = { enable = true },
		  indent = { enable = true },  
		})
	    end
	 }
 }	
