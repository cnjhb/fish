if status is-interactive
    function fish_right_prompt -d "Write out the right prompt"
	set_color $fish_color_status; date "+%H:%M:%S"
    end
    set -x EDITOR nvim

    set -g fish_key_bindings fish_vi_key_bindings

    bind -M insert \cf accept-autosuggestion
end
