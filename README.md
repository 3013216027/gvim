====

**Info:** As I had started using [git-bash](https://git-scm.com/downloads) long before, this repository is never useful and would NEVER be updated any more. Also, I have migirated to [babun](http://babun.github.io/) now, it is based on [Cygwin](https://www.cygwin.com/) and is easily use and include some popular software like `vim`, so refer to [vim profile](https://github.com/3013216027/vim) from now on :smile:

====

# JBer's [gvim](https://github.com/3013216027/gvim) configuration profile
## Attantion
For Unix like/git-bash user, also see my [vim configuration profile](https://github.com/3013216027/vim)

---

# Fast Configuration
Vim is installed by default most times at most popular linux destributions nowadays, but for PC users, you must install it yourself. You can get more detail or download gvim(gui vim, which has a windows-x86 version) from [here](http://www.vim.org/download.php#pc)
- Don't forget to add the path of gvim.exe to your windows system's PATH, then you can run it from `cmd` with command `gvim` directly or just type `Win+R` and input `gvim<Enter>`.
- If you don't like cmd, you can use git-bash instead, read [Configurate with git-bash](## Congirutate with git) for more information.

## Configurate with cmd/power shell
If you don't take git installed on your pc, then you can open `\_vimrc` in this repository on the web browser, then right click the **Raw** button at the right-top corner the file, choose `Save As` to download it into your gvim install directory(which may be `C:/Program Files (x86)/Vim` by default) directly, just overwrite the default one or backup it before overwrite.

What's more, use a plugin manager to manage your vim plugins would make your life easier. This configuration use a popular vim plugin manager [vundle](https://github.com/VundleVim/Vundle.vim) to manager all plugins. You could visit [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim) to [download vundle plugin for vim](https://github.com/VundleVim/Vundle.vim/archive/master.zip), unzip it and rename the folder to `Vundle.vim` and copy it into `<Your-gvim-install-directory>/vimfiles/plugin/`, the configuration file `\_vimrc` would load it by command `set rtp+=./vimfiles/plugin/Vundle.vim`

If it goes well, we can now get everything done. However, before the final step, you should take a glance at the `\_vimrc`, comment the plugins that you don't need. Then open gvim and type `:PluginInstall` to finish the work.

Now, everything is well prepared for you, just enjoy this amazing editor:)

## Configurate with git-bash
If you think cmd or power shell is so awful a shell, I would recommand you take a try at [git-bash](https://git-scm.com/downloads). vim is installed itself. Then git-bash can be recognized as something like bash in linux, so you can continue your configuration by my [vim](https://github.com/3013216027/vim) profile.
- If you do like this way, DO NOT add the path of gvim into the PATH, more specifically, you have no need to install gvim any more.
