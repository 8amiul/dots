# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return


parse_git_branch() {
    local branch=$(git branch --show-current 2>/dev/null)
    if [ -n "$branch" ]; then
        echo " ($branch)"
    fi
}

export PS1="\[\e[1;30m\][\[\e[1;34m\]\w\[\e[1;33m\]\$(parse_git_branch)\[\e[1;30m\]]\[\e[1;32m\] \$\[\e[0m\] "
#PS1="\[\e[1;30m\][\[\e[1;34m\]\w\[\e[1;30m\]]\[\e[1;32m\] \$\[\e[0m\] " 
