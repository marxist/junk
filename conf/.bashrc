#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash prompt
PS1='[\u@\h \W]\$ '

# xterm transparency
[ -n "$WINDOWID" ] && transset-df -i $WINDOWID >/dev/null

# path
PATH=${PATH}:${HOME}/bin
export PATH

# X server
alias x='startx & logout'

# sudo file operations
alias sucp='sudo cp -v'
alias sumv='sudo mv -v'
alias surm='sudo rm -v'
alias sumkdir='sudo mkdir -v'
alias surmdir='sudo rmdir -v'
alias suln='sudo ln -v'
alias suchmod='sudo chmod -v'
alias suchown='sudo chown -v'

# other sudo commands
alias suvim='sudo vim'
alias sunano='sudo nano -x'
alias suconf='sudo conf'
alias surc.d='sudo rc.d'
alias supacman='sudo pacman'
alias reboot='sudo reboot & logout'
alias shutdown='sudo shutdown -hP now & logout'
