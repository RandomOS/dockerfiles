# ~/.bashrc

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gocache='cd /run/shm'

PS1='\u@\h '      # user@host<space>
PS1="$PS1"'\w'    # current working directory
PS1="$PS1"'\n'    # new line
PS1="$PS1"'$ '    # prompt: always $
