## Set terminal tab width
tabs -4

## Git
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose"

# Change PS1
# See:
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt

PS1_EXIT_STATUS_OK="\[$(tput setaf 2)\]"
PS1_EXIT_STATUS_ERROR="\[$(tput setaf 1)\]"
PS1_EXIT_STATUS="\$(EXIT=\$?; if [[ \$EXIT == 0 ]]; then echo \"$PS1_EXIT_STATUS_OK\"; else echo \"$PS1_EXIT_STATUS_ERROR\"; fi; echo \$EXIT)"
PS1_CURRENT_TIME="\[$(tput setaf 6)\]\t"
PS1_USER_NAME="\[$(tput setaf 3)\]\u"
PS1_WORKING_DIR="\[$(tput setaf 2)\]\w"
export PROMPT_COMMAND='__git_ps1 "\n$PS1_EXIT_STATUS $PS1_CURRENT_TIME $PS1_USER_NAME $PS1_WORKING_DIR\[\033[0m\]" "\n$ \[$(tput sgr0)\]"'
