source ~/.zsh/prompt
#echo "Prompt loaded."
source ~/.zsh/completion
#echo "Completion loaded."
source ~/.zsh/keybinds
#echo "Keybinds loaded."
source ~/.zsh/aliases
#echo "Aliases loaded."
source ~/.zsh/functions
#echo "Functions loaded."
source ~/.zsh/startup
#echo "Startup loaded."
source ~/.zsh/history
#echo "History loaded."

autoload -Uz compinit
compinit

# Lines configured by zsh-newuser-install
setopt autocd extendedglob notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

if [ -f ~/.profile ]; then
	source ~/.profile
fi
ZSH_SYNTAX=/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [ -f $ZSH_SYNTAX ]; then
	source $ZSH_SYNTAX
fi
VENVWRAPPER=/usr/bin/virtualenvwrapper.sh
if [ -f $VENVWRAPPER ]; then
	source $VENVWRAPPER
fi
