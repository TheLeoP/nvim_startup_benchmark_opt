# Nvim startup benchmark

All of the plugins in this repository are intended to be `git clone`d into `stdpath('data') .. '/site/pack/bench/opt'` and used with the following `init.lua`

```lua
vim.cmd.packadd({ "plugin-01", bang = true })
vim.cmd.packadd({ "plugin-02", bang = true })
vim.cmd.packadd({ "plugin-03", bang = true })
vim.cmd.packadd({ "plugin-04", bang = true })
vim.cmd.packadd({ "plugin-05", bang = true })
vim.cmd.packadd({ "plugin-06", bang = true })
vim.cmd.packadd({ "plugin-07", bang = true })
vim.cmd.packadd({ "plugin-08", bang = true })
vim.cmd.packadd({ "plugin-09", bang = true })
vim.cmd.packadd({ "plugin-10", bang = true })
vim.cmd.packadd({ "plugin-11", bang = true })
vim.cmd.packadd({ "plugin-12", bang = true })
vim.cmd.packadd({ "plugin-13", bang = true })
vim.cmd.packadd({ "plugin-14", bang = true })
vim.cmd.packadd({ "plugin-15", bang = true })
vim.cmd.packadd({ "plugin-16", bang = true })
vim.cmd.packadd({ "plugin-17", bang = true })
vim.cmd.packadd({ "plugin-18", bang = true })
vim.cmd.packadd({ "plugin-19", bang = true })
vim.cmd.packadd({ "plugin-20", bang = true })
```

## Results

The results where obtained by

1. `git clone https://github.com/TheLeoP/nvim_startup_benchmark_opt` into the correct location (for `NVIM_APPNAME=nvim_startup_benchmark` and a `unix` environment, it would be `~/.local/share/nvim_startup_benchmark`)
2. creating the `init.lua` mentioned above in the correct location (for `NVIM_APPNAME=nvim_startup_benchmark` and a `unix` environment, it would be `~/.config/nvim_startup_benchmark`)
3. Executing `NVIM_APPNAME=nvim_startup_benchmark nvim --startuptime startup` (or `$env:NVIM_APPNAME=nvim_startup_benchmark; nvim --startuptime startup` for `powershell` on Windows) 4 times

Both the Linux and the Windows executions where performed on the same machine with a dual boot setup (Windows 11 and Arch Linux) on Neovim `0.11.5`. The processor in the machine was a `13th Gen Intel(R) Core(TM) i7-1355U` and the machine had `16Gb` or RAM.

In addition to that, I also included a single run of my [personal config](https://github.com/theleop/nvim-config) in both Windows and Linux. But, since I enable `vim.loader` and both executions where hot runs, they may not be as representative.

## Windows quirks

It is not clear to me why file operations and launching processes in Windows is so much slower than on Linux, but some aspects that may influence this are:

- Windows has hooks on each file operation for things like Windows defender. Some users have reported that whitelisting the `nvim` process (as well as processes used by plugins like `rg` or `fzf`) and/or Neovim's configuration directory on Windows defender to avoid said hooks may improve performance.
- Windows uses `NTFS` instead of the faster `ext4`. Nonetheless, some users have reported Window's subsystem for Linux 2 (`wsl`) to have better performance (despite it algo being forced to use `NTFS`) as long as the barrier between Windows and Linux files is not crossed.
