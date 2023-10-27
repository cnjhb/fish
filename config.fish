if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_right_prompt -d "Write out the right prompt"
    set_color $fish_color_status; date "+%H:%M:%S"
end
