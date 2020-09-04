# prompt
#PS1="\[\033[2;37m\] \w \[\033[0;37m\] » "
#PS1="\[\033[1;37m\]-> \[\033[0;37m\] "
#PS1="\[\033[1;37m\] ➜ \[\033[0;37m\] "
PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[    01;32m\]]\$\[\033[00m\] '

# aliases
alias 'v'='nvim'
alias 'm'='mpv'
alias 'k'='killall'
alias 'p'='sudo pacman'
alias 'f'='fff'
alias 'g'='git clone'

# pywal
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

# nvim stuf
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR

# reload xdefaults
xrdb ~/.Xdefaults
