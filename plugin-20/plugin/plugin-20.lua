vim.api.nvim_create_user_command("Plugin20", function()
	print(require("plugin-20").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin20)", function()
	print(require("pluign-20").value)
end)
