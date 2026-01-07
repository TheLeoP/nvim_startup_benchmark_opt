vim.api.nvim_create_user_command("Plugin13", function()
	print(require("plugin-13").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin13)", function()
	print(require("pluign-13").value)
end)
