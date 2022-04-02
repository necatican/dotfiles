# Start the default container if it is not running

start_limactl_if_not_started () {
  _limactlStatus=$(limactl list default -f "{{ .Status }}" ) # -f, --format string   Format the output using the given Go template

  if [[ $_limactlStatus == "Stopped" ]]; then
    limactl start default
  fi

  lima nerdctl "$@"
}