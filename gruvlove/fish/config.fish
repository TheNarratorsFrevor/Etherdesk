#function fish_greeting
#    echo "Welcome to Parrot OS"
#end
#
#function fish_prompt
#    echo (set_color red)"┌["(set_color cyan)"$hostname"(set_color red)"]─["(set_color yellow)(date "+%H:%M-%d/%m")(set_color red)"]─["(set_color blue)"$PWD"(set_color red)"]"
#    echo (set_color red)"└╼"(set_color green)"$USER"(set_color yellow)(set_color yellow)"\$"(set_color normal)
#end

# set PATH ~/.local/bin /snap/bin /usr/sandbox/ /usr/local/bin /usr/bin /bin /usr/local/games /usr/games /usr/share/games /usr/local/sbin /usr/sbin /sbin $PATH

if status is-interactive
and not set -q TMUX
    exec tmux
end
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cat='bat'
set PATH ~/.local/bin /opt/lampp /snap/bin /usr/sandbox/ /usr/local/bin /usr/bin /bin /usr/local/games /usr/games /usr/share/games /usr/local/sbin /usr/sbin /sbin /home/dethereal/.cargo/bin/ ~/.node_modules/bin ~/.local/share/nvim/site/pack/packer/start /usr/share:~/.local/share/nvim/site/pack/packer/start/packer.nvim /home/haden/.local/share/gem/ruby/3.0.0/bin $PATH
# alias
#alias ls='exa -lbhUH'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vim='/usr/bin/nvim'
alias nvim='nvim-qt'
alias gnvim='/home/dethereal/gonenvim/goneovim'
alias conky='/home/dethereal/.conky.AppImage'
alias :D='cowsay :D'
alias ls='exa -lbhH'


