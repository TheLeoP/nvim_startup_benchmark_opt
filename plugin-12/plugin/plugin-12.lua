vim.api.nvim_create_user_command("Plugin12", function()
	print(require("plugin-12").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin12)", function()
	print(require("pluign-12").value)
end)
