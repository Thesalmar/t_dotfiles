# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/thesalmar/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="wedisagree"
# export TERM="xterm-256color"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

FULLNAME=`cat /etc/passwd | grep $USER | cut -d ':' -f 5 | cut -d ',' -f 1`

# Exports and y'all

export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export CPATH=$CPATH:/usr/local/include
export CGP_INSTALL_DIR=$CGP_INSTALL_DIR:/usr/local
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/berkeley-db@4/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/python/libexec/bin:$PATH"
export LIBRARY_PATH=$LIBRARY_PATH:/home/thesalmar/.libs/CSFML-2.2/lib
export LD_LIBRARY_PATH=$LIBRARY_PATH:/home/thesalmar/.libs/CSFML-2.2/lib
export CPATH=$CPATH:/home/thesalmar/.libs/CSFML-2.2/include
export LIBRARY_PATH=$LIBRARY_PATH:/home/thesalmar/.libs/SFML-2.2/lib
export LD_LIBRARY_PATH=$LIBRARY_PATH:/home/thesalmar/.libs/SFML-2.2/lib
export CPATH=$CPATH:/home/thesalmar/.libs/SFML-2.2/include
export LIBRARY_PATH=$LIBRARY_PATH:/home/thesalmar/.libs/GLEW-1.10.0/lib
export LD_LIBRARY_PATH=$LIBRARY_PATH:/home/thesalmar/.libs/GLEW-1.10.0/lib
export CPATH=$CPATH:/home/thesalmar/.libs/GLEW-1.10.0/include
export PATH="$PATH:/sbin"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:~/local/bin
export GOPATH=/home/thesalmar

# Aliases

alias ll='ls -alF'
alias la='ls -lA'
alias l='ls -CF'
alias ne='emacs -nw'
alias emacs='emacs -nw'
alias clean='rm -f *~ | rm -f \#*\#'
alias cleann='make clean && clean && clear'
alias ralias='source ~/.zshrc'
alias myalias='emacs ~/.zshrc'
alias down='sudo shutdown -P now'
alias reboot='sudo reboot'
alias j='jobs'
alias reload='. ${HOME}/.zshrc'
alias lock='xscreensaver-command -lock'
alias xresources_reload='xrdb -merge ~/.Xresources'
alias fs='fortune -s'
alias mapscii='telnet mapscii.me'
alias norme="/home/thesalmar/norminette/norminette"
alias norme_update="/home/thesalmar/norminette/update.sh"
alias norme_debug="/home/thesalmar/norminette/debug.sh"
alias theme='gnome-tweak-tool'
alias fix_screen='xrandr -o 0'
alias blih='blih -u come.lemargue@epitech.eu'
alias ns_auth='ns_auth -u come.lemargue@epitech.eu'
alias fluxion='sudo fluxion'
alias redhawk='php ~/repos/RED_HAWK/rhawk.php'
alias zboob='echo "Zboob !"'
alias pusho='git push origin master'
alias pull= 'git pull'
alias brew='~/repos/homebrew/bin/brew'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
