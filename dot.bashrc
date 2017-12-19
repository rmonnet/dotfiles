##
##  ~/.bashrc
##

#   customize locale
export LC_CTYPE="en_US.UTF-8"

#   customize interactive prompt
shopt -s promptvars
PROMPT_DIRTRIM=11
PS1="\\u@\\h:\$PWD\n\\$ "
PS2="> "

#   perform shell window size checking
if expr $- : ".*i.*" >/dev/null; then
    shopt -s checkwinsize
fi

#   customize editor/pager handling
export EDITOR=vim
export PAGER="less -r"
export PAGER_FLAGS="-r"
alias more="less -r"

#   customize filesystem handling
umask 022
shopt -s dirspell
shopt -s cdspell
shopt -s no_empty_cmd_completion
shopt -s checkhash
shopt -s globstar
alias -- +="cd +"
alias -- -="cd -"
alias -- .="cd $OLDPWD"
alias -- ..="cd .."

#   customize history management
shopt -s cmdhist
shopt -s histappend
shopt -s lithist
HISTSIZE=1000
HISTFILESIZE=1000
HISTIGNORE="&"
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "

#   customize ls(1) command
alias ll="ls -l"
alias la="ls -la"
export BLOCKSIZE=1024

#   optionally load bash-fzf functionality
if [[ -f /usr/share/ps-bash-fzf/bash-fzf.rc ]]; then
    source /usr/share/ps-bash-fzf/bash-fzf.rc
fi
