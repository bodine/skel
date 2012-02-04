
###
# umask. Bow down. 
#
umask 077



###
# SSH Stuph
#
SSH_ENV="$HOME/var/run/ssh-agent"

function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
     echo succeeded
     chmod 600 "${SSH_ENV}"
     . "${SSH_ENV}" > /dev/null
     /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     #ps ${SSH_AGENT_PID} doesn't work under cywgin
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
     start_agent;
fi 



###
# history philes. All those ancient people are dead. This is our world now.
#
BASH_HISTORY=0
HISTORY=0
unset HISTFILE
HISTSIZE=0


###
# colors. represent
#
unalias ls > /dev/null 2>&1
