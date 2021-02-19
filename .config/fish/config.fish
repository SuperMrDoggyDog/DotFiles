### EXPORT
set fish_greeting
set TERM "alacritty"
set EDITOR "nvim"
set PATH "/home/trey/.emacs.d/bin:/home/trey/.local/bin:$PATH"

### ALIASES

# root
alias r='su -'

# ls
alias ls='exa -lah --color=always --group-directories-first'

# cat to bat
alias cat="bat"

# vim
alias vim="nvim"

# find
alias find="fd"

# git dotfiles
alias dfgit='/usr/bin/git --git-dir=/mnt/Games1/git-repos/DotFiles/ --work-tree=$HOME'
alias dfpush='dfgit push all'

# grep
alias grep='rg --color=auto'

# pacman and paru
alias sysupd="paru -Syu --noconfirm; sysclean"  #Update Everything
alias sysclean='sudo paru -Rns (paru -Qtdq)' #Remove orphaned packages

# cp
alias cp="cp -iv"

# mv
alias mv='mv -iv'

# rm
alias rm='rm -iv'
alias frm="rm -rfiv"

# lightdm
alias lock='light-locker-command -l'

# clear
alias clear='clear; echo " "; neofetch'

# testing
alias testtetext='curl https://www.cl.cam.ac.uk/~mgk25/ucs/examples/UTF-8-demo.txt'
alias testpl='ping archlinux.org'

# memey
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

### Startup
echo " "
neofetch
starship init fish | source
