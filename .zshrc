DISABLE_MAGIC_FUNCTIONS=true
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

alias gitfb="git fetch && git rebase"
alias oye="ssh -qTfnN -D 7070 root@los.sdhou.com -p 26648"
alias oyek="ps auxf|grep qTfnN|grep -v grep|awk '{print \$2}'|xargs kill"
alias sss="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias ssc="export http_proxy= export https_proxy= export all_proxy="

alias qgg01="ssh remote@47.95.253.37"
alias qggdb="ssh -qTfnN remote@47.95.253.37 -L 3307:127.0.0.1:3306"
alias manting01="ssh remote@101.200.32.72"
alias mantingdb="ssh -qTfnN remote@101.200.32.72 -L 3307:127.0.0.1:3306"
alias bwg-fmt="ssh root@174.137.62.213 -v -p 29547"
alias bwg-cn2="ssh root@los.sdhou.com -v -p 26648"
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
alias gp="ssh root@106.14.138.156 -v -p 7788"
alias gold="ssh dev@47.242.95.228 -v"
alias freezer="ssh dev@8.133.172.205 -v"
alias freezerdb="ps auxf|grep '3307:127.0.0.1:3306'|grep -v 'grep'|awk '{print \$2}'|xargs kill ;ssh -qTfnN dev@8.133.172.205 -L 3307:127.0.0.1:3306"
alias parking="ssh dev@8.133.172.205 -v"
alias parkingdb="ps auxf|grep '3308:127.0.0.1:3306'|grep -v 'grep'|awk '{print \$2}'|xargs kill ;ssh -qTfnN dev@8.133.172.205 -L 3308:127.0.0.1:3306"

alias xj01="ssh ubuntu@106.75.209.159 -v -p 2222"
alias xj104="ssh shxj@192.168.108.104 -v -p 2222"
alias xj105="ssh shxj@192.168.108.105 -v -p 2222"
alias xj106="ssh shxj@192.168.108.106 -v -p 2222"
alias xfy-api-up="ssh shxj@192.168.108.104 -v 'cd /home/shxj/xingfuyun/xingfuyun-server && git pull && docker-compose -f /home/shxj/xingfuyun/docker-compose.yml exec node_server pm2 restart all'"
alias xj-gpu="ssh westwell@10.66.65.13 -v -p 2222"
alias xijing-prod="ssh root@106.75.226.3 -v"
alias xijing-zhdn-test="ssh ubuntu@113.31.157.154 -v"
alias xijing-zhdn="ssh ubuntu@113.31.154.49 -v"
alias xijing-zhdn-prod="ssh user@192.168.109.195 -v"
alias xijing-happiness-cloud01="ssh user@192.168.109.113 -v"
alias xjxx="ssh westwell@192.168.109.127 -v"
alias xjzx01="ssh root@101.132.255.112 -i ~/.ssh/id_rsa_new -v"
alias xjzxuppc="rsync -e 'ssh -i ~/.ssh/id_rsa_new' -avz --delete --exclude='node_modules' --exclude='*.log' --exclude='.git/' --exclude='.env' dist/* root@101.132.255.112:/data/static/pc/"
alias xjzxupapi="rsync -e 'ssh -i ~/.ssh/id_rsa_new' -avz --delete --exclude='node_modules' --exclude='*.log' --exclude='.git/' --exclude='.env' /opt/code/westwell/community-relation/api/ root@101.132.255.112:/data/api && ssh -i ~/.ssh/id_rsa_new root@101.132.255.112 -v 'source /root/.nvm/nvm.sh && /root/.nvm/versions/node/v22.16.0/bin/pm2 restart all'"
alias xjxxup="mvn clean package -Dmaven.test.skip=true && scp target/xx-manage-service-0.0.1-SNAPSHOT.jar westwell@192.168.109.127:/opt/xx-manage-service/app/app.jar && ssh westwell@192.168.109.127 'cd /opt/xx-manage-service && docker-compose restart && tail -f /opt/xx-manage-service/app/logs/xx-manage-service.log'"
alias xjxxupdata="mvn clean package -Dmaven.test.skip=true && scp target/xx-data-service-0.0.1-SNAPSHOT.jar westwell@192.168.109.127:/opt/xx-data-service/app/app.jar && ssh westwell@192.168.109.127 'cd /opt/xx-data-service && docker-compose restart && tail -f /opt/xx-data-service/app/logs/xx-data-service.log'"
alias xcssh="ssh XC_CY_XFYEQ_wangliang@100.80.0.16 -p 60022 -v -i ~/.ssh/id_rsa -o HostKeyAlgorithms=+ssh-rsa -o PubkeyAcceptedAlgorithms=+ssh-rsa"
alias test="time echo 'scale = 5000; 4 * a(1)' | bc -l -q"
alias brewup="sss && brew update -v && brew upgrade -v && brew list --cask|xargs brew upgrade --cask && ssc && brew cleanup --prune=all"
alias weather="curl wttr.in"
alias 71route='sudo route add -net 10.0.0.0 -netmask 255.0.0.0 10.235.99.129 && sudo route add -net 11.0.0.0 -netmask 255.0.0.0 10.235.99.129 && sudo route add -net 58.0.0.0 -netmask 255.0.0.0 10.235.99.129 && sudo route add -net 100.0.0.0 -netmask 255.0.0.0 10.235.99.129'
alias 71deroute='sudo route delete -net 10.0.0.0 -netmask 255.0.0.0 10.235.99.129 && sudo route delete -net 11.0.0.0 -netmask 255.0.0.0 10.235.99.129 && sudo route delete -net 58.0.0.0 -netmask 255.0.0.0 10.235.99.129 && sudo route delete -net 100.0.0.0 -netmask 255.0.0.0 10.235.99.129'

export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR=vim
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/Users/sdhou/.local/ActiveState/StateTool/release/bin:$PATH"
export PATH="/Users/sdhou/Library/Caches/activestate/bin:$PATH"
export NODE_MIRROR=https://mirrors.ustc.edu.cn/node/
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export JAVA_HOME=$(brew --prefix openjdk)
export PATH="${JAVA_HOME}/bin:${PATH}"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sdhou/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sdhou/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sdhou/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sdhou/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
