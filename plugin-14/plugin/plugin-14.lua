vim.api.nvim_create_user_command("Plugin14", function()
	print(require("plugin-14").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin14)", function()
	print(require("pluign-14").value)
end)
