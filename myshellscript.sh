#!/bin/bash
# 在 ~/.zshrc 中添加
# . /home/${USER}/.config/jshellscript/*.sh
##################################################################
## cd
##################################################################
alias cdws="cd ~/Desktop/dworkspace"
alias cshare="cd /media/dr/文档/Share"

alias cddg="cd ~/github/DGithub"
alias cddctf="cd ~/github/DGithub/DCtf"
alias cddt="cd ~/github/DGithub/DTemplate"
alias cddcpp="cd ~/github/DGithub/DTemplate/cpp"
alias cddpc="cd ~/github/DGithub/DPc/config_pc_dr"
alias cddshell="cd ~/github/drshellscript"
alias cddjvim="cd ~/.config/jvim"

alias cdjg="cd ~/github/JGithub"
alias cdjshell="cd ~/github/jShellscript"
alias cdjpc='cd ~/github/JGithub/jPC'
alias cdjserver='cd ~/github/JGithub/jServer'
alias cdjtemplate="cd ~/github/JGithub/jTemplate"
alias cdjsc="cd ~/github/JGithub/jVim/UltiSnips"
alias cdjvim="cd ~/github/JGithub/jVim/vimrc"
alias cdog="cd ~/github/otherpeople"

##################################################################
## vim
##################################################################
alias vimjms="vim ~/github/jShellscript/myscript"
alias vimms="cd ~/github/drshellscript/ && vim myshellscript.sh"

##################################################################
## git
##################################################################
alias gis="git status"
alias gia="git add ."
alias gial='git add --all'
alias gicommit='git commit -m'

##################################################################
## ssh
##################################################################
alias sshsv="ssh root@115.159.29.14"
alias sshrh3="ssh root@192.168.56.101"

########################################
## Shadowsocks 后面两个是统计和显示流量
########################################
#alias stass="sudo -S sslocal -c /etc/shadowsocks.json -d start && exit"
alias stass="sudo -S sslocal -c ~/github/JGithub/jPC/src/shadowsocks.json.bak -d start && exit"
alias stoss="sudo -S sslocal -c ~/github/JGithub/jPC/src/shadowsocks.json.bak -d stop && exit"
alias stassother="sudo -S sslocal -c ~/github/JGithub/jPC/src/shadowsocks.json -d start && exit"
alias stossother="sudo -S sslocal -c ~/github/JGithub/jPC/src/shadowsocks.json -d stop && exit"
#alias stass="echo '$mypassword' | sudo -S sslocal -c /etc/shadowsocks.json -d start && exit"
#alias stoss="echo '$mypassword' | sudo -S sslocal -c /etc/shadowsocks.json -d stop && exit"
#alias cstass="sudo sslocal -s 45.78.9.29 -p 443 -b 127.0.0.1 -l 1080 -k MzBhMDU4YT -m aes-256-cfb -t 500 --fast-open -d start -v"
alias cstass="sudo sslocal -s 45.78.9.29 -p 443 -b 127.0.0.1 -l 1080 -k MzBhMDU4YT -m aes-256-cfb -t 300 -d start -v"
alias cstoss="sudo sslocal -s 45.78.9.29 -p 443 -b 127.0.0.1 -l 1080 -k MzBhMDU4YT -m aes-256-cfb -t 300 -d stop -v"
alias staipt="sudo iptables -I OUTPUT -s 127.0.0.1 -p tcp --sport 1080"
alias showipt="sudo iptables -n -v -L -t filter |grep -i 'spt:1080' |awk -F' ' '{print $2}'"

##################################################################
##
##################################################################
alias flt="cd ~/floodlight/ && java -jar target/floodlight.jar"
alias qrsync="~/github/otherpeople/qrsync/qrsync ~/github/DGithub/DPc/config_pc_dr/src/qrsync_config.json"
alias cl="clear"
# alias dvim="docker run -i -t -v /home/dr/Desktop/dvim/vimrc:/home/coderdr31/.vimrc -v /home/dr/Desktop/dvim/vim:/home/coderdr31/.vim -u coderdr31 -w /home/coderdr31 coderdr31/ubuntu:16.04" #有bug
alias dvim='docker run -i -t -v /home/dr/Desktop/dvim/vim:/home/coderdr31/.vim -u coderdr31 -w /home/coderdr31 coderdr31/ubuntu:16.04 /bin/bash -c \
            "ln -s /home/coderdr31/.vim/dvimrc /home/coderdr31/.vimrc \
            && echo \"source /home/coderdr31/.vim/myshellscript.sh\" >> /home/coderdr31/.bashrc \
            && /bin/bash"'
alias greps="grep -riIn --color=always"  # example: greps hell
alias findname='find -iname'  # exapmle: findname "*.txt"


##################################################################
## CTF
##################################################################
alias stegsolve="java -jar ~/github/otherpeople/ctf-tools/stegsolve/bin/stegsolve.jar"

##################################################################
## 渗透
##################################################################
alias sqlmap="python ~/github/otherpeople/ctf-tools/sqlmap/bin/sqlmap.py"

##################################################################
## 运行软件
##################################################################
alias pycharm="/home/dr/applicationGreen/pycharm-2016.3.2/bin/pycharm.sh"
alias webstorm="/home/dr/applicationGreen/WebStorm-171.4249.40/bin/webstorm.sh"
alias cdmongodb="cd /usr/local/mongodb/bin"
alias mongodbstart="cd /usr/local/mongodb/bin && ./mongod"
alias studio3t="cd /home/dr/applicationGreen/studio-3t-5.2.2-linux-x64/bin && ./studio-3t.sh"


##################################################################
## intelmq
##################################################################
alias vimiout="vim /opt/intelmq/var/lib/bots/file-output/events.txt"
alias catiout="cat /opt/intelmq/var/lib/bots/file-output/events.txt"
alias cliout="> /opt/intelmq/var/lib/bots/file-output/events.txt"
alias cpiout="cp /opt/intelmq/var/lib/bots/file-output/events.txt"
# alias chintelmq="sudo chown -R intelmq.intelmq /opt/intelmq && sudo chgrp www-data /opt/intelmq/etc/*.conf"
# alias chidr="sudo chown -R dr.dr /opt/intelmq && sudo chgrp www-data /opt/intelmq/etc/*.conf"
alias choptintelmq="sudo chmod -R 777 /opt/intelmq"
alias rmiout="rm /opt/intelmq/var/lib/bots/file-output/* -f && rm /opt/intelmq/var/log/* -f"
alias cpi1="cp /opt/intelmq/etc/conf/1/* /opt/intelmq/etc"
alias cpi2="cp /opt/intelmq/etc/conf/12-20/* /opt/intelmq/etc"
alias cpi3="cp /opt/intelmq/etc/conf/3/* /opt/intelmq/etc"
