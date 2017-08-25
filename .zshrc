# Powerline prompt
source "/usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh"

# Online ZSH help
unalias run-help 2>/dev/null
autoload run-help
export HELPDIR="/usr/local/share/zsh/help"

# Initialize zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Plugins

# Let zplug manage itself
zplug "zplug/zplug"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
