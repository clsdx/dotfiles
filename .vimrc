" vim:fdm=marker

" TODO check if I need IndentAnything.vim in case I broke everything

"set statusline+=%f
filetype off



" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins {{{1
" The plugin manager iteself
Plugin 'gmarik/vundle'

" Distraction free plugin goyo
Plugin 'junegunn/goyo.vim'

" Belle barre
Plugin 'bling/vim-airline'

" enables solarized colors on vim
Plugin 'altercation/vim-colors-solarized'

" Improved commentaries
Plugin 'tpope/vim-commentary'

" Enables custom repetition
Plugin 'tpope/vim-repeat'

" git integration in vim
Plugin 'tpope/vim-fugitive'

" adds symbols for git management in vim
" Plugin 'airblade/vim-gitgutter'
" TODO learn

" vim/tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" semantic web highlighting
Plugin 'seebi/semweb.vim'

" javascript integration
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'

" json highlighting
Plugin 'elzr/vim-json'

" LaTeX highlighting
Plugin 'LaTeX-Box-Team/LaTeX-Box'

" Markdown integration
Plugin 'plasticboy/vim-markdown'

" vim outliner
Plugin 'vimoutliner/vimoutliner'
" TODO learn

" html5 integration
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

" TODO learn

call vundle#end()


filetype indent plugin on

" Enable syntax highlighting
syntax on

" edited out, seems to have problems
" TODO check it out
" helptags ~/.vim/doc


set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu
set wildignore+=*.swp,*.swo
set wildignore+=*.pdf
set wildignore+=*.jpg,*.bmp,*.gif
set wildignore+=*.o,*.dll,*.obj,*.exe


" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
set incsearch
set showmatch

" better copy and paste
set clipboard=unnamed

" fold by syntax
set foldmethod=syntax

" smarter split
set splitbelow
set splitright

" set encoding
set encoding=utf-8

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" set 5 lines under the cursor, at the bottom of the screen, for easier
" reading
set scrolloff=5

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR>
inoremap jj <ESC>


" wrap lines visually but not hard wrap
set wrap

" only smart break at break characters (.,:)
set linebreak
set nolist

"   q: allow formatting of comments
"   r: carry the current comment forward on next line
"   n: smart indent on lists (when wrapping in an item)
"   l: no automatic linebreak
set formatoptions=qrnl
" TODO regarder mieux

" remap for better line wrapping
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk

" reselect visual block after indent
vnoremap > >gv
vnoremap < <gv
vnoremap = =gv

" in case I use buffers
nnoremap <Leader><Leader> <C-^>

"------------------------------------------------------------

"Plugin config {{{1

" Goyo
nnoremap <Leader>f :Goyo<CR>
function! GoyoBefore()
    set scrolloff=999
endfunction
function! GoyoAfter()
    set scrolloff=5
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

" vim-airline
let g:airline_powerline_fonts=0
let g:airline_exclude_preview=1
let g:pwerline_loaded=1

" vim-solarized
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized


"
