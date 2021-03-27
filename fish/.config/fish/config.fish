alias ls='ls --color=auto'
alias ll='ls -lah'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ee='exa -alF'
alias ea='exa -A'
alias e='exa -F'

alias cp="cp -i"                          # confirm before overwriting something
alias mv='mv -i'
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias SS="sudo systemctl"

alias p="sudo pacman --color auto"
alias yay="yay --aur --color auto"

alias vimrc="$EDITOR ~/.config/nvim/init.vim"
alias vishellrc="$EDITOR ~/.config/fish/config.fish && shellrc"
alias shellrc="echo '[*] Sourcing shell rc file... '; source ~/.config/fish/config.fish"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias svim="EDITOR=nvim sudoedit"

alias igt="sudo intel_gpu_top"

alias tlp="sudo tlp"
alias tlp-stat="sudo tlp-stat"

alias podsos="nc localhost 4000"
