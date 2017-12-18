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
alias gipush='git push origin master'

##################################################################
## ssh
##################################################################
alias sshsv="ssh root@115.159.29.14"
alias sshrh3="ssh root@192.168.56.101"

########################################
## Shadowsocks 后面两个是统计和显示流量 + Kcptun 加速
########################################
alias sslog='tail /var/log/shadowsocks.log'
# 搬瓦工自带 python
alias stass="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.python.json -d start && exit"  # 这样默认是全局的, -d 会在后台运行
alias stoss="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.python.json -d stop && exit"
alias restass='sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.python.json -d stop && sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.python.json -d start && exit'
# 搬瓦工 go
alias stassgo="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.go.json -d start && exit"
alias stossgo="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.go.json -d stop && exit"
alias stassgokcptun="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.go_kcptun.json -d start && exit"
alias stossgokcptun="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.go_kcptun.json -d stop && exit"
alias stassgokcptunall='stakcp stassgokcptun'  # OnO...
# kcptun 参考 断流: https://github.com/xtaci/kcptun/issues/218
# 手动参数设定: https://github.com/xtaci/kcptun/issues/137
alias stakcp='nohup ~/Downloads/client_linux_amd64 -r "45.78.9.29:18384" -l ":11080" -mode fast2 -mtu 512 >/dev/null 2>&1 &'
# 有时候不行了就改 mtu, 512, 1024 两个换着来
# function stakcp() { nohup ~/Downloads/client_linux_amd64 -r "45.78.9.29:18383" -l ":11080" -mode fast2 -mtu 256 >/dev/null 2>&1 & }
alias showkcp="ps -ef | grep client_linux_amd64 | grep -v grep | awk '{print $2}'"  # 这里原意是只输出 PID, 可还是会输出整个命令, 也还行
function stokcp() { kill `ps -ef | grep client_linux_amd64 | grep -v grep | awk '{print $2}'` } # 直接 stokcp 既可以执行函数了
# shadowsocksR
alias stassr='sudo python ~/github/others/shadowsocks/shadowsocks/local.py -s 45.78.9.29 -p 443 -k 6irwnc8jck -m aes-256-cfb -d start'  # 后台运行
alias stossr='sudo python ~/github/others/shadowsocks/shadowsocks/local.py -d stop'  # 停止
# 别人的免费
alias stassy="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.yzy.json -d start && exit"
alias stossy="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.yzy.json -d stop && exit"
alias stassother="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.json -d start && exit"
alias stossother="sudo -S sslocal -c ~/.config/jshadowsocks/shadowsocks.json -d stop && exit"
#alias cstass="sudo sslocal -s 45.78.9.29 -p 443 -b 127.0.0.1 -l 1080 -k MzBhMDU4YT -m aes-256-cfb -t 500 --fast-open -d start -v"

alias lsofi1080='sudo lsof -i:1080'
alias staiptall="sudo iptables -I OUTPUT -s 127.0.0.1 -p tcp --sport 1080"
alias showipt="sudo iptables -n -v -L -t filter |grep -i 'spt:1080' |awk -F' ' '{print $2}'"
# 设置防火墙, 每次开机后要重设
alias staipt="sudo iptables -A INPUT -p tcp -s 0/0 --sport 1080 -d 45.78.9.29 --dport 443 -m state --state NEW,ESTABLISHED -j ACCEPT &&
sudo iptables -A INPUT -p tcp -s 0/0 --sport 1080 -d 45.78.9.29 --dport 443 -m state --state ESTABLISHED,RELATED -j ACCEPT &&
sudo iptables -A OUTPUT -p tcp -s 45.78.9.29 --sport 443 -d 0/0 --dport 1080 -m state --state ESTABLISHED -j ACCEPT"
alias iptsta='sudo iptables -L -n | grep 1080'

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
alias pythonsimpleserver="python -m http.server"


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
