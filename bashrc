source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator_completion
alias tmux="TERM=screen-256color-bce tmux"
