# https://linoxide.com/how-tos/change-linux-shell-prompt-with-different-colors/
# https://github.com/lastnitescurry/documentum164/blob/master/roles/basic/files/time_prompt.sh
# TODO Its probably not a good thing to defined this for none interactive shells
export PS1="[\e[0;32m\d \t\e[m] \e[0;33m\u@\h\e[m: \w \$ "
