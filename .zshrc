#====================
# oh-my-zsh
#====================

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

#====================
# Zsh Options
#====================

# Basic Configure
export LANG=ja_JP.UTF-8
setopt no_beep

# Change Directory
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt correct

# Completion
setopt always_to_end
setopt complete_in_word
autoload -U compinit
compinit -C

# History
HIST_STAMPS="mm/dd/yyyy"
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000000
setopt hist_ignore_dups
setopt hist_reduce_blanks

#====================
# Aliases
#====================

alias rm='rm -i'
alias reload='exec $SHELL -l'
alias op='open .'

# GitHub Desktop
alias gh='github .'

# Goland
alias gl='goland .'

# PyCharm
alias ch='charm .'

#====================
# Zplug
#====================

# Syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting"

# Completion
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions", use:'src/_*', lazy:true
zplug "zsh-users/zsh-history-substring-search"

## Install required packages
zplug check --verbose || zplug install

zplug load

#====================
# Functions
#====================

# cd の後に ls を実行
chpwd() { ls }

# .zshrc自動コンパイル
if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi
