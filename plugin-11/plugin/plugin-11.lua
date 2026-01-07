vim.api.nvim_create_user_command("Plugin11", function()
	print(require("plugin-11").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin11)", function()
	print(require("pluign-11").value)
end)
