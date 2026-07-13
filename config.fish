if status is-interactive
	set -x EDITOR nvim

	set -g fish_key_bindings fish_vi_key_bindings

	bind -M insert \cf accept-autosuggestion

	set -x SHELL fish

	if type -q busybox
		for cmd in (busybox --list)
			if not type -q $cmd
				abbr $cmd "busybox $cmd"
			end
		end
	end

	function http_proxy -a addr port
		export http_proxy=$addr:$port
		export https_proxy=$addr:$port
	end
	if type -q awesome-client
		function awecom
			argparse d/device= b/baudrate= -- $argv || return
			if not set -q _flag_device 
				set _flag_device /dev/ttyUSB0
			end
			if not set -q _flag_baudrate
				set _flag_baudrate 115200
			end
			awesome-client "require'awecom'{device='$_flag_device',baudrate=$_flag_baudrate}:show_all()"
		end
	end
end
