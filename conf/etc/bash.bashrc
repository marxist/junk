#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
                                                        
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
esac

[ -r /etc/bash_completion   ] && . /etc/bash_completion

# bin path
if [[ "${PATH}" !=  *"/home/jure/bin"* ]]; then
    PATH=${PATH}:/home/jure/bin
    export PATH
fi

# exports
export EDITOR=vim
export HISTSIZE=1000000
export HISTCONTROL=erasedups
export PYTHONPATH=/home/jure/lib/py
export PYTHONDONTWRITEBYTECODE=1

# verbose file operations
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias ln='ln -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias chmod='chmod -v'
alias chown='chown -v'
alias chgrp='chgrp -v'

# verbose operations (other)
alias rmmod='rmmod -v'
alias modprobe='modprobe -v'

# coloured output
alias ls='ls -h --color=auto'
alias grep='grep --color=auto'

# filesystem navigation
alias ~='cd ~'
alias home='cd ~'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'

# pacman
alias pacman='pacman-color'
alias pacman-orphans='pacman-color -Qdt'
alias pacman-by-me='pacman-color -Qet'

# interpreters and compilers
alias py='python -B'
alias py2='python2 -B'
alias py3='python3 -B'
alias javac='javac -Xlint:all'

# force password for all users, including root
# yes, if one were to use my computer while root was logged in,
# one could change these aliases. but one would still have to re-login
# for aliases to take effect. thus, one would have to know the root password
# anyway if one wanted to shutdown or reboot my computer
alias reboot='sudo -k reboot; logout'
alias shutdown='sudo -k shutdown -hP now; logout'

# various commands
alias e='exit'
alias q='exit'
alias :q='exit'
alias clr='clear'
alias nano='nano -x'
alias lsd='ls /var/run/daemons'
alias dirsize='du -h --max-depth=1'
alias def='dict-wrapper'
alias backup='berthes'
alias cmdcount="cat $HOME/.bash_history | grep -c"
alias rewritefs-jure="rewritefs -o config=/mnt/home/jure/.config/rewritefs,allow_other /mnt/home/jure /home/jure"

# git shortcuts
alias git-commit-preview='git commit -v --dry-run -a'
alias git-commit='git commit -a -m'
alias git-push='git push origin master'
alias git-untrack='git update-index --assume-unchanged'
alias git-track='git update-index --no-assume-unchanged'
alias git-ls='git ls-files'

# monitor
alias monitor='xrandr --output VGA1 --auto --left-of LVDS1'
alias monitor-off='xrandr --output VGA1 --off'

# suspend and lock
alias suspend='sleep-slock'
alias lock='slock-screen-off'
alias lock-disable='xautolock -disable'
alias lock-enable='xautolock -enable'

# mplayer (TODO: organize better)
alias mplay='mplayer'
alias mplayq='mplayer -quiet'
alias mplayqn='mplayer -quiet -a52drc 1.5'
alias mplayqq='mplayer -really-quiet'

# net (iftop need root permission)
alias ethernet='ip link set eth0 up; dhcpcd'
alias wlantop='sudo iftop -i wlan0'
alias ethtop='sudo iftop -i eth0'
alias ping5='ping -c 5 example.org'
alias rtor='rtorrent'

alias screenshot="scrot '/home/jure/pics/screens/%Y-%m-%d_%H-%M-%S.png'"
