if status is-interactive
    set -x EDITOR nvim

    set -g fish_key_bindings fish_vi_key_bindings

    bind -M insert \cf accept-autosuggestion

	if type -q busybox
		for cmd in (busybox --list)
			if not type -q $cmd
				abbr $cmd "busybox $cmd"
			end
		end
	end

end
