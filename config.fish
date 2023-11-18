if status is-interactive
	#custom aliases
	alias fol='nautilus . &'
	alias nconf='cd ~/.config/nvim'
	alias prop='cd ~/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/gamemodes/cstrike'
	alias proj='cd ~/Projects'
	alias qq='neovide.AppImage'
	alias stdock='sudo docker-compose -f ~/Apps/devilbox/docker-compose.yml up -d'
	alias kldock='sudo docker-compose -f ~/Apps/devilbox/docker-compose.yml kill'

	#custom path vars
	#export PATH="/home/pashkevich/.config/lsp/lua-language-server/bin:$PATH"
end

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
