vim.api.nvim_create_user_command("Plugin04", function()
	print(require("plugin-04").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin04)", function()
	print(require("pluign-04").value)
end)
