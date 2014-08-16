unsetopt correct_all
function chpwd() { emulate -LR zsh; ls -a; }

alias cb="git-branch-current"
alias ga="git add --all; gs"
alias gb="git branch -v"
alias gd="git diff"
alias gg="git add --all; gcm"
alias gdc="git diff --cached"
alias gp="git push -u origin \$(cb)"
alias gu="git pull --rebase"
alias gs="git status"
alias gls='for ref in $(git for-each-ref --count=20 --sort=-committerdate --format="%(refname)" refs/heads/ ); do git log -n1 $ref --pretty=format:"%Cgreen%cr%Creset %C(yellow)%d%Creset %C(bold blue)<%an>%Creset%n" | cat ; done | awk '"'! a["'$0'"]++'"

galias () { alias | grep "git $1" --color=never | sort -f | less }

alias rm="nocorrect rm"
alias r="rails"
alias vi="vim"
alias e="vim"
alias ms="mux start"
alias reload="exec $SHELL -l"
alias takeover="tmux detach -a"

chmodbin() {
  chmod +x bin/*
  chmod +x bin.private/*
}

alias fs="foreman start"
alias f="fg"
alias rename="massren" # https://github.com/laurent22/massren

# http://www.mfasold.net/blog/2008/11/moving-or-renaming-multiple-files/
autoload -U zmv
alias mmv='noglob zmv -W'

export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
precmd() { eval "$PROMPT_COMMAND"  }
export EDITOR="/usr/local/bin/vim"
export VISUAL="/usr/local/bin/vim"
export SHELL="/usr/local/bin/zsh"

export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin"
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.bin.private:$PATH"
export PATH="./bin:$PATH"
export PATH="./bin.private:$PATH"
eval "$(direnv hook zsh)"
# export PATH="$(consolidate-path)"

# See: https://github.com/mathiasbynens/dotfiles/blob/master/.exports
# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Fix C Compiler
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments

# Prefer US English and use UTF-8
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Highlight section titles in manual pages
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X";

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto";

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

if [ -f $HOME/.secrets ]; then
  source $HOME/.secrets
fi
