function tilde_shorten
	set whole_path $argv[1]
	switch $whole_path
		case $HOME "$HOME/**"
			set whole_length (expr length + $whole_path)
			set remainder_start (math (expr length + $HOME) + 1)
			set remainder_length (math $whole_length - $remainder_start + 1)
			set remainder (expr substr + $whole_path $remainder_start $remainder_length)
			echo '~'$remainder
			return
	end
	echo $whole_path
end
