#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# --- Better Bash prompt (colors + git branch) ---
# Enable color support for ls/grep/etc
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias vim='/usr/bin/nvim'

# Git branch in prompt (from git's prompt script)
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
  . /usr/share/git/completion/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWUPSTREAM='auto'
fi

# Colored prompt: user@host:cwd (git) $
# \[\e[...m\] wrappers prevent readline glitches
PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]$(__git_ps1 " \[\e[1;35m\](%s)\[\e[0m\]")\n\$ '


# --- Neofetch on interactive shells only ---
if [[ $- == *i* ]] && command -v neofetch >/dev/null 2>&1; then
  neofetch
fi

eval "$(starship init bash)"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
