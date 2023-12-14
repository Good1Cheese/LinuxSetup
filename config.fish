if status is-interactive
	#custom aliases
	alias fol='nautilus . &'
	alias nconf='cd ~/.config/nvim'
	alias prop='cd ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/gamemodes/cstrike'
	alias proj='cd ~/Projects'
	alias aws='cd ~/.config/awesome'
	alias qq='neovide'
	alias sudo='doas'
	alias pac='doas pacman'
	alias stdock='sudo docker-compose -f ~/Apps/devilbox/docker-compose.yml up -d'
	alias kldock='sudo docker-compose -f ~/Apps/devilbox/docker-compose.yml kill'
end

set -gx BSPWM "$HOME/.config/bspwm"
# $HOME/.config/bspwm/launchers
set -gx BSPWM_LAUNCHERS "$BSPWM/launchers"
# $HOME/.config/bspwm/configs
set -gx BSPWM_CONFIGS "$BSPWM/configs"

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end
