" Highlight whitespace at end of lines.
set nolist
highlight default link TrailingWhitespace Error
augroup filetypedetect
  autocmd WinEnter,BufNewFile,BufRead * match TrailingWhitespace /\s\+$/
augroup END
autocmd InsertEnter * match none
autocmd InsertLeave * match TrailingWhitespace /\s\+$/

function! HighlightTooLongLines()
  highlight def link RightMargin Error
  if &textwidth != 0
    exec 'match RightMargin /\%>' . &textwidth . 'v.\+/'
  endif
endfunction

augroup filetypedetect
  au WinEnter,BufNewFile,BufRead * call HighlightTooLongLines()
augroup end

filetype plugin indent on
syntax enable
set autoindent nocindent
set background=dark		" Best for dark terminals.
set backspace=indent,eol,start
set expandtab
set formatoptions=croqlj	" Good for Google style.
set hidden			" Keep buffers loaded in background.
set history=200			" Stores 200 lines of command history.
set ignorecase smartcase
set laststatus=2		" Means every window always has a status line.
set nocompatible		" Give up on Vi compatibility.
set number			" Shows line numbering.
set ruler			" Ruler shows the line number and length in the status bar.
set scrolloff=3			" Prevents the cursor from being closer than 3 lines to the edge of the screen.
set shiftwidth=2
set smarttab
set t_Co=256
set tabstop=2
set textwidth=80
set viminfo='50,\"200		" Store marks for 50 files, and 200 lines of registers.
set wildmenu			" Fancy tab-completion for files and commands.
colorscheme peaksea

" Key remappings.
set pastetoggle=<insert>	" Remap Insert to toggle between paste and normal insert modes.
