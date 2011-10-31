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

# interpreters
alias py='python -B'
alias py2='python2 -B'
alias py3='python -B'

# various commands
alias e='exit'
alias ping5='ping -c 5 example.org'
alias nano='nano -x'
alias lsdaemon='ls /var/run/daemons'
alias git-commit-preview='git commit -v --dry-run -a'
alias git-commit='git commit -a -m'
alias git-push='git push origin master'
alias monitor='xrandr --output VGA1 --auto --left-of LVDS1'
alias monitor-off='xrandr --output VGA1 --off'
alias suspend='sleep-slock'
alias lock='slock-screen-off'
alias mplay='mplayer'
alias mplayq='mplayer -quiet'
alias mplayqn='mplayer -quiet -a52drc 1.5'
alias mplayqq='mplayer -really-quiet'
alias wlantop='iftop -i wlan0'
alias dirsize='du -h --max-depth=1'
alias screenshot="scrot '/home/jure/pics/screens/%Y-%m-%d_%H-%M-%S.png'"
