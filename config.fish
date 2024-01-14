if status is-interactive
	#custom aliases
	alias nconf='cd ~/.config/nvim'
	alias proj='cd ~/Projects'
	alias aws='cd ~/.config/awesome'
	alias fide='cd ~/.config/fish'

    alias lg='lazygit'
	alias qq='neovide'

	alias sudo='doas'
	alias pac='doas pacman'
	alias std='shutdown now'
	alias knv='killall neovide'
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
