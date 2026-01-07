vim.api.nvim_create_user_command("Plugin03", function()
	print(require("plugin-03").value)
end, {})

vim.keymap.set("n", "<Plug>(Plugin03)", function()
	print(require("pluign-03").value)
end)
