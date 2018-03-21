# If you come from bash you might have to change your $PATH.
  export PATH=$HOME/bin:/usr/local/bin:$PATH
  export VMWARE_USE_SHIPPED_LIBS='yes'

# Path to your oh-my-zsh installation.
  export ZSH=/home/kevin/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
#source $HOME/.shell_prompt.sh

# Prompt pure
autoload -U promptinit; promptinit
prompt pure

#PURE_PROMPT_SYMBOL=❯
PURE_PROMPT_SYMBOL=$
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cnc="connman-ncurses"
alias ll="ls -a"
alias startfb="fbterm_bgimg /home/kevin/Imágenes/SolidBackground.png -- fbterm_color"
alias vimrc="nvim ~/.vimrc"
alias zshrc="nvim ~/.zshrc"
alias i3conf="nvim ~/.config/i3/config"
alias tmuxconf="nvim ~/.tmux.conf"
alias fbtermrc="nvim ~/.fbtermrc"
alias cc11="g++ -std=gnu++11"
alias cc14="g++ -std=gnu++14"
alias cc17="g++ -std=gnu++17"
alias startway="XDG_SESSION_TYPE=wayland dbus-run-session gnome-session"
alias vi="nvim"
alias vig="nvim-gtk"
alias music="ncmpcpp"
alias pdf="zathura --fork" 
alias ungz="tar -zxvf"
alias unbz="tar -jxvf"
alias cmake="env TERM='xterm-256color' cmake"
alias make="env TERM='xterm-256color' make"
alias primusrun_novsync="vblank_mode=0 primusrun"

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

mkcd() {
  mkdir "$1"
  cd "$1"
}

bset() {
  echo "Setting brightness to $1"
  xbacklight -set $1
}

bget() {
	BR=$(xbacklight -get)
	echo "The brightness is $BR"
}

export TERMINAL="alacritty"

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk 
export VISUAL="nvim"
export EDITOR="nvim"
export WEBAPPS="/usr/share/tomcat8/webapps"
export CATALINA_HOME="/usr/share/tomcat8"
zstyle ':completion:*' rehash true
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

LS_COLORS=$LS_COLORS:'tw=35;04':'ow=34;04'; export LS_COLORS

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=green
ZSH_HIGHLIGHT_STYLES[alias]=fg=green
ZSH_HIGHLIGHT_STYLES[builtin]=fg=green
ZSH_HIGHLIGHT_STYLES[function]=none
ZSH_HIGHLIGHT_STYLES[command]=fg=green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=none
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[globbing]=none
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[assign]=none

