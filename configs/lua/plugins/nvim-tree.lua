return {
	"kyazdani42/nvim-tree.lua",
	dependencies = {"kyazdani42/nvim-web-devicons"},

	config = function ()
		require("nvim-tree").setup({
			view = {
				width = 40
			}
		})
	end
}
