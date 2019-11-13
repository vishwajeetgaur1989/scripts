# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
PS1="\[\e[0;36m\]\[$(tput bold)\]Vishwajeet\[\e[m\]~\[\e[0;31m\]\[$(tput bold)\]\\@\[\e[m\]:\[$(tput setaf 3)\]\[$(tput bold)\]\W> \[$(tput setaf 7)\]"
~/.gsettings
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias mycode='f(){ clear && cd ~/Documents/Personal/"$@";  unset -f f; }; f'
complete -W "`ls ~/Documents/Personal -F | grep \/$ | cut -d '/' -f1`" mycode
alias mypcap='f(){ 
                if [ -z "$@" ]
                then 
                clear
                echo "No arg Supplied..." 
                cd ~/Downloads/Pcaps/
                else 
                clear 
                wireshark ~/Downloads/Pcaps/"$@" &
                fi
                unset -f f; }; f' 
complete -W "`ls ~/Downloads/Pcaps`" mypcap

alias myppt='f(){ 
                if [ -z "$@" ]
                then 
                clear
                echo "No arg Supplied..." 
                cd ~/Documents/PPT/
                else 
                clear
                /opt/libreoffice6.0/program/soffice.bin ~/Documents/PPT/"$@" &
                fi
                unset -f f; }; f' 

complete -W "`ls ~/Documents/PPT`" myppt
complete -W "client server stack" go
alias l="ls -Qlt"
alias ds="cd /home/vishwajeet/Documents/Personal/Diameter/serverHSS1"
# Faced Problem for ZMQ shared library. Working fine now !!
export LD_LIBRARY_PATH="/usr/local/lib"

#while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-11));echo -e "\e[31m`date +%r`\e[39m";tput rc;done &
