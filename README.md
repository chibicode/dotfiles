# My dotfiles

## Installation

### Download and symlink

```
gem install homesick
homesick clone chibicode/cc
homesick link cc -f
for s in ~/.cc-install/*; do [ -x $s ] && $s || : ;done
```

### Set login shell

After installing zsh with homebrew, make sure to change login shell to it ([Stackoverflow](http://superuser.com/questions/362372/change-the-login-shell-of-mac-os-x-lion-from-bash-to-zsh#comment680433_362374)):

1. Add `/usr/local/bin/zsh` to `/etc/shells`
2. `chsh -s /usr/local/bin/zsh`

### Fix $PATH inside Vim

See: https://github.com/dotphiles/dotzsh#mac-os-x

```
sudo chmod ugo-x /usr/libexec/path_helper
```
