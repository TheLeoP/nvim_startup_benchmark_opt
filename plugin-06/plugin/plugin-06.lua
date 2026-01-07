vim.api.nvim_create_user_command("Plugin06", function()
	print(require("plugin-06").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin06)", function()
	print(require("pluign-06").value)
end)
