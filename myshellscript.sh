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

alias cdjg="cd ~/github/JGithub"
alias cdjshell="cd ~/github/jShellscript"
alias cdjpc='cd ~/github/JGithub/jPC'
alias cdjserver='cd ~/github/JGithub/jServer'
alias cdjtemplate="cd ~/github/JGithub/jTemplate"
alias cdjsc="cd ~/github/JGithub/jvim/UltiSnips"
alias cdjvim="cd ~/github/JGithub/jvim/vimrc"
alias cdog="cd ~/github/otherpeople"

##################################################################
## vim
##################################################################
alias vimjms="vim ~/github/jShellscript/myscript"
alias vimms="cd ~/github/drshellscript/ && vim myshellscript.sh"

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

##################################################################
## cd
##################################################################
alias cddjvim="cd ~/.config/jvim"

##################################################################
## CTF
##################################################################
alias stegsolve="java -jar ~/github/otherpeople/ctf-tools/stegsolve/bin/stegsolve.jar"

##################################################################
## 渗透
##################################################################
alias sqlmap="python ~/github/otherpeople/ctf-tools/sqlmap/bin/sqlmap.py"
