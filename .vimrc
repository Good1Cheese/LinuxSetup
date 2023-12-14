" [[ Setting sensible default options ]]
" These are some of the settings enabled by default in Neovim.
" These are options believed by many Vim users to be essential.
" Find the list of the options using: `:options` and/or `:h option-list`

" switch on file type detection, without syntax highlighting
filetype on
" start using syntax highlighting
syntax on
" automatically set the indent of a new line
set autoindent
" automatically read a file when it was modified outside of Vim
set autoread
" "dark" or "light"; the background color brightness
set background=dark
" specifies what <BS>, CTRL-W, etc. can do in Insert mode
set backspace=indent,eol,start
" do not ring the bell for these reasons
set belloff=all
" include "lastline" to show the last line even if it doesn't fit
" include "uhex" to show unprintable characters as a hex number
set display=lastline
" character encoding used in Vim: "latin1", "utf-8",
set encoding=utf-8
" don't unload a buffer when no longer shown in a window
" (Allow opening other files w/o saving current buffer)
set hidden
" how many command lines are remembered
set history=10000
" highlight all matches for the last used search pattern
set hlsearch
" show match for partly typed search command
set incsearch
" use two spaces after '.' when joining a line
set nojoinspaces
" 0, 1 or 2; when to use a status line for the last window
set laststatus=2
" list of strings used for list mode
set listchars=tab:>\ ,trail:-,nbsp:+
" show cursor position below each window
set ruler
" show (partial) command keys in location given by 'showcmdloc'
set showcmd
" a <Tab> in an indent inserts 'shiftwidth' spaces
"  NOTE: See `:help tabstop` to learn how tabs in Vim work
set smarttab
" many jump commands move the cursor to the first non-blank
set nostartofline
" "useopen" and/or "split"; which window to use when jumping to a buffer
set switchbuf=uselast
" use menu for command line completion
set wildmenu
" specifies how command line completion is done
set wildoptions=pum,tagfile


" [[ Settings other options ]]
" NOTE: You can change these options as you wish!

" Make line numbers default
set number
set relativenumber

" Enable mouse mode
set mouse=a

" Sync clipboard between OS and Neovim.
"  Remove this option if you want your OS clipboard to remain independent.
"  See `:help 'clipboard'`
" set clipboard=unnamedplus

" Enable break indent
set breakindent

" Save undo history
"  By default, undo files (.file.txt.un~) are saved in the current directory.
"  This makes the file system very messy, so undofile is disabled by default.
"
"  If would like to enable undofile, I recommend you to change undodir:
"  1. Create the undo directory: `:! mkdir -p ~/.local/state/vim/undo`
"  2. Uncomment the following line starting with "set undodir" and save the file
"  3. Source the .vimrc: `:source ~/.vimrc`
"  4. Now undo history will persist between Vim sessions
"
"  NOTE: See `:help undofile` and `:help undodir` for more information
"    You may change the undodir to another directory you prefer
"set undodir=~/.local/state/vim/undo// undofile

" Case-insensitive searching UNLESS \C or capital in search
set ignorecase
set smartcase

" Keep signcolumn on by default
set signcolumn=yes

" Decrease update time
set updatetime=250
set timeoutlen=300

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect

" NOTE: You should make sure your terminal supports this
" set termguicolors
