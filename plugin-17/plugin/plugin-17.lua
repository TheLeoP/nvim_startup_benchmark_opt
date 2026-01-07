vim.api.nvim_create_user_command("Plugin17", function()
	print(require("plugin-17").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin17)", function()
	print(require("pluign-17").value)
end)
