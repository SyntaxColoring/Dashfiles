function fish_prompt
	set last_status $status
	set_color -o blue
	echo -n (tilde_shorten (pwd))
	if [ $last_status != 0 ]
		set_color -o red
	end
	echo -n '% '
	set_color normal
end
