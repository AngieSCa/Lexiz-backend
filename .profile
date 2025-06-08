env=~/.ssh/agent.env

agent_load_env () { test -f  && .  >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| )
    .  >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=2

if [ !  ] || [  = 2 ]; then
    agent_start
    ssh-add
elif [  ] && [  = 1 ]; then
    ssh-add
fi

unset env
