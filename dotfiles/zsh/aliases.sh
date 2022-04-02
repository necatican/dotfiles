# Kubernetes aliases
alias k='kubectl'
alias ka='kubectl apply -f'
alias kd='kubectl delete -f'
alias kg='kubectl get'
alias kdpo='kubectl delete po --force'

# General
alias ls='ls --color=auto'
alias la='ls -lah'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'

# Docker | https://medium.com/nttlabs/containerd-and-lima-39e0b64d2a59
alias docker='start_limactl_if_not_started' # My brain is hardwired to type docker in certain situations. :(
alias lnc='start_limactl_if_not_started'