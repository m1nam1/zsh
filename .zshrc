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
plugins=(git)

# 履歴に日時を表示
HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

#====================
# Basic Configure
#====================

# 言語・文字コード設定
export LANG=ja_JP.UTF-8

# ビープ音を無効化
setopt NO_BEEP

# 自動でディレクトリをスタックに保存
setopt AUTO_PUSHD

# pushd の履歴は残さない
setopt PUSHD_IGNORE_DUPS

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-completions (補完強化)
fpath=(/usr/local/share/zsh-completions $fpath)

# コマンドの補完
autoload -U compinit
compinit -u

# cd の後に ls を実行
chpwd() { ls }

#====================
# History
#====================

# 履歴ファイルの保存先
HISTFILE="$HOME/.zsh_history"

# メモリに保存される履歴の件数
HISTSIZE=10000

# 履歴ファイルに保存される履歴の件数
SAVEHIST=10000000

# 重複を記録しない
setopt hist_ignore_dups

# 余分な空白を削除して履歴を保存
setopt HIST_REDUCE_BLANKS
