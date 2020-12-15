# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/sdhou/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias qgg01="ssh remote@47.95.253.37"
alias qggdb="ssh -qTfnN remote@47.95.253.37 -L 3307:127.0.0.1:3306"
alias manting01="ssh remote@101.200.32.72"
alias mantingdb="ssh -qTfnN remote@101.200.32.72 -L 3307:127.0.0.1:3306"
alias bwg-fmt="ssh root@174.137.62.213 -v -p 29547"
alias bwg-cn2="ssh root@los.sdhou.com -v -p 26648"
alias sss="export http_proxy=http://127.0.0.1:20171;export https_proxy=http://127.0.0.1:20171;"
alias ssc="export http_proxy=;export https_proxy=;"
alias unionjd="ssh remote@47.103.82.106 -p 7788 -v"
alias unionjddb="ssh -p 7788 -fCPN remote@47.103.82.106 -L 3308:rm-uf6s0h018qv9uedzl.mysql.rds.aliyuncs.com:3306"
alias unionjdgitpull="ssh remote@47.103.82.106 'cd /data/code/admin/ && /usr/bin/git pull'"
alias jbp="ssh remote@122.112.235.198 -v"
alias smartshoe="ssh remote@47.103.128.231 -p 7788 -v"
alias smartshoedb="ssh -fCPN -p 7788 root@47.103.128.231 -L 3307:127.0.0.1:3306"
alias btob="ssh remote@47.110.255.180 -v -p 7788"
alias btobdb="ssh -fCPN -p 7788 remote@47.110.255.180 -L 3308:rm-bp1890ndndw9sn5r790150.mysql.rds.aliyuncs.com:3306"
alias btobgitpull="ssh -p 7788 remote@47.110.255.180 'cd /data/code/api/ && /usr/bin/git pull'"
alias greatpine="ssh remote@106.14.138.156 -v"
alias lottery="ssh remote@47.103.128.231 -v"
alias lotterydb="ssh -fCPN root@47.103.128.231 -L 3307:127.0.0.1:3306"
alias gitfb="git fetch && git rebase"
alias sand-dev-host08="ssh dev@172.28.250.24 -v"
alias sand-dev-gitlab="ssh dev@172.28.250.199 -v"
alias sand-dev-sentry="ssh dev@172.18.254.112 -v"
alias sand-dev-ban="ssh sdhou@172.18.254.16"
alias oye="ssh -qTfnN -D 7070 root@los.sdhou.com -p 26648"
alias oyek="ps auxf|grep qTfnN|grep -v grep|awk '{print \$2}'|xargs kill"
alias gp="ssh root@106.14.138.156 -v -p 7788"
alias gitlab="ssh root@47.116.14.5"
alias gold="ssh dev@47.242.95.228 -v"
alias freezer="ssh root@47.101.72.134 -v"
alias freezerdb="ssh -qTfnN root@47.101.72.134 -L 3307:127.0.0.1:3306"
alias parking="ssh dev@120.55.62.108 -v"
alias parkingdb="ps auxf|grep '3308:127.0.0.1:3306'|grep -v 'grep'|awk '{print \$2}'|xargs kill ;ssh -qTfnN root@120.55.62.108 -L 3308:127.0.0.1:3306"

export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export EDITOR=vim
#export http_proxy=http://192.168.62.59:20172;export https_proxy=http://192.168.62.59:20172;
