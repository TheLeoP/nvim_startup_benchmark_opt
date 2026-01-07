vim.api.nvim_create_user_command("Plugin18", function()
	print(require("plugin-18").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin18)", function()
	print(require("pluign-18").value)
end)
