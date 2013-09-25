if [[ $TTY = "/dev/tty6" ]]; then
	exec nohup startx 2>&1 >/dev/null
else
	if [[ ! $TERM = "screen" ]]; then
		tmux
	fi
fi
