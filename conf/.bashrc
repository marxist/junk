#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash prompt
PS1='[\u@\h \W]\$ '

# path
if [[ "${PATH}" !=  *"${HOME}/bin"* ]]; then
    PATH=${PATH}:${HOME}/bin
    export PATH
fi

# X server
alias x='startx & logout'

# pass aliases to sudo (note the space)
alias sudo='sudo '

# sudo file operations
alias sucp='sudo cp -v'
alias sumv='sudo mv -v'
alias surm='sudo rm -v'
alias sumkdir='sudo mkdir -v'
alias surmdir='sudo rmdir -v'
alias suln='sudo ln -v'
alias suchmod='sudo chmod -v'
alias suchown='sudo chown -v'

# system-state commands; -k option to force password prompt
alias reboot='sudo -k reboot; logout'
alias shutdown='sudo -k shutdown -hP now; logout'

# other sudo commands
alias sued='sudo confedit'
alias suvim='sudo vim'
alias sunano='sudo nano -x'
alias surc.d='sudo rc.d'
alias supacman='sudo pacman'
