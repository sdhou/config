# Path to your oh-my-zsh installation.
export ZSH=/Users/sdhou/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

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

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
export HOMEBREW_GITHUB_API_TOKEN=2ba63834fcfff1118c5f16b1a434dcf25d7eda34
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$PATH:`yarn global bin`"
export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll='ls -alh'
alias vim='mvim'
alias odlb="ssh remote@106.75.65.156"
alias odapp01="ssh remote@123.59.80.156"
alias odapp02="ssh remote@123.59.80.164"
alias odapp03="ssh remote@180.150.179.19"
alias odapp04="ssh remote@180.150.178.177"
alias odjob01="ssh remote@123.59.80.157"
alias odtest01="ssh remote@106.75.50.140"
alias odgit="ssh remote@123.59.80.166"
alias oddb="ssh -qTfnN remote@odtest01 -L 3307:127.0.0.1:3306"
alias odhrdb="ssh -qTfnN sdhou@1.0.1.166 -L 3306:127.0.0.1:3306"
alias sdhou="ssh remote@sdhou.com"
alias gitfb='git fetch && git rebase'
alias brewup="brew update -v && brew upgrade -v && brew cleanup && brew doctor"
alias fmtphp="fmt.phar --psr2 --no-backup --ignore=vendor ./"
alias ciji="ssh remote@120.26.54.198"
alias qgg01="ssh remote@47.95.253.37"
alias qggdb="ssh -qTfnN remote@47.95.253.37 -L 3307:127.0.0.1:3306"
alias manting01="ssh remote@101.200.32.72"
alias mantingdb="ssh -qTfnN remote@101.200.32.72 -L 3307:127.0.0.1:3306"
alias cvw01="ssh remote@47.97.103.0"
alias glances="python /usr/local/lib/python2.7/site-packages/glances"
alias fmm-gitlab="ssh fanmm@59.110.116.175"
alias fmm-pf01="ssh fanmm@47.93.178.239 -i ~/.ssh/sdhou.pem -v"
alias fmm-pf02="ssh fanmm@47.93.83.63 -i ~/.ssh/sdhou.pem -v"
alias fmm-pf03="ssh fanmm@59.110.106.0 -i ~/.ssh/sdhou.pem -v"
alias fmm-web9="ssh root@59.110.104.13 -p9889 -v -i .ssh/sdhou.pem"
alias fmm-website2="ssh root@39.96.116.165 -v -i ~/.ssh/sdhou.pem -p9889"
alias bwg-fmt="ssh root@174.137.62.213 -v -p 29547"
alias bwg-cn2="ssh root@104.36.67.47 -v -p 26648"
alias sss="export http_proxy=http://0.0.0.0:1087;export https_proxy=http://0.0.0.0:1087;"
alias lzns01="ssh remote@47.99.163.119 -v"

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

#export JAVA_HOME=/opt/jdk1.7.0_79/Contents/Home
#export PATH=$JAVA_HOME/bin:$PATH
#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

export GOOGLE_API_KEY="AIzaSyCRuO6o44QO8DU1cqCflJwjYWQI96sTwZM"
export GOOGLE_DEFAULT_CLIENT_ID="881538212363-p66ie30up5k9qh3kcaenajlhcu7ierp9.apps.googleusercontent.com"
export GOOGLE_DEFAULT_CLIENT_SECRET="4u8YtOaqbMY_qpxOeR_iq1Hp"
