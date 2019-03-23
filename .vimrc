"""""""""""""""""""" 
" Plug-ins 
""""""""""""""""""""
  call plug#begin('~/.vim/plugged') " To install vim-plug: https://github.com/junegunn/vim-plug
    Plug 'tpope/vim-fugitive' " Git wrapper. View any blob, tree, commit, or tag in the repository.
    Plug 'scrooloose/nerdtree' " File system explorer.
    Plug 'tpope/vim-sleuth' "  Automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
    Plug 'nathanaelkane/vim-indent-guides' " Display vertical lines at each indentation level.
    Plug 'chiel92/vim-autoformat' " Format code with one button press (or automatically on save). Run with :Autoformat
    Plug 'scrooloose/syntastic' " Syntax checking plugin.
      Plug 'bfrg/vim-cpp-modern' " Additional syntax highlighting for C and C++11/14/17/20 
    Plug 'vim-airline/vim-airline' " Nice statusline at the bottom of each window
      Plug 'vim-airline/vim-airline-themes' "
    Plug 'junegunn/seoul256.vim' " Color Scheme
    Plug 'ryanoasis/vim-devicons' "Always load the vim-devicons as the very last one.
  call plug#end() " Initialize plugin system
  packadd termdebug " Load the gdb plugin contained inside Vim8.
  filetype plugin indent on " It turns on "detection", "plugin" and "indent" at once.
  syntax enable " Turn on syntax highlighting: show parts of the text in another font or color. This allows using ":highlight" commands to set your preferred colors before or after using this command.  If you want Vim to overrule your settings with the defaults, use :syntax on. 
"""""""""""""""""""" 
" General 
""""""""""""""""""""
  set nocompatible " Don't try to be vi compatible. When you :set compatible, all the enhancements and improvements of Vi Improved are turned off.
  set encoding=utf-8 " Encoding
  set number " Show line numbers
  set laststatus=2 " Status line displayed always,see the current mode, file name, file status, ruler, etc.
  set cursorline " Enable highlighting of the current line.
  set cursorcolumn " Enable highlighting of the current column. 
  set autoindent " Auto-indent new lines
  set smartindent " Enable smart-indent
  set shiftwidth=4 " Number of auto-indent spaces
  set softtabstop=4 " Number of spaces per Tabset showcmd " Show (partial) command in status line.
  set expandtab " Expand tabs to spaces
  set smarttab " Enable smart-tabs
  set wrap " Turn on automatic line wrapping,
  set linebreak " Break lines at word (requires Wrap lines)
  set showbreak=~ " Indication when a line has been wrapped
  set breakindent " Indent the broken lines as far as the start of the line.
  set breakindentopt=shift:0 " add nº whitespace to the broken line
  " set listchars=tab:▸\ ,eol:¬ " Visualize tabs and newlines
  " set list " If 'list' is on, whitespace characters are made visible. 
""""""""""""""""""""
" Searching
""""""""""""""""""""
  set showmatch " Show matching brackets.
  set ignorecase " By default, searching is case sensitive. Do case insensitive matching.
  set smartcase " Do smart case matching search. /The would find only "The", while /the would find "the" or "The".
  set incsearch " Incremental search, provides functionality to highlight all matches while searching, to move cursor to next/previous match while searching.
  set hlsearch " Highlight all search results
  set mouse=a " Enable mouse usage (all modes).
""""""""""""""""""""
" Command-line
""""""""""""""""""""
  set wildmenu " Better command-line completion
  set confirm " Instead of failing a command because of unsaved changes, instead raise a dialogue asking if you wish to save changed files.
  set visualbell  " Use visual bell instead of beeping when doing something wrong
  set t_vb= " And reset the terminal code for the visual bell. If visualbell is set, and this line is also included, vim will neither flash nor beep. If visualbell is unset, this does nothing.
  set cmdheight=2 " Set the command window height to 2 lines, to avoid many cases of having to press <Enter> to continue"
""""""""""""""""""""
" Plug-in: Color Scheme
""""""""""""""""""""
  "let g:seoul256_background = 253 " Light Default: 253. Range:252 (darkest) ~ 256 (lightest)
  let g:seoul256_background = 234 " Dark Default: 237. Range:233 (darkest) ~ 239 (lightest)
  "Put color schemes in reverse order of what you really want.
  silent! colorscheme elflord " Color Scheme
  silent! colorscheme seoul256 " Color Scheme
""""""""""""""""""""
"Plug-in: Syntastic
""""""""""""""""""""
  set statusline+=%#warningmsg# "
  set statusline+=%{SyntasticStatuslineFlag()} "
  set statusline+=%* "
  let g:syntastic_always_populate_loc_list = 1 "
  let g:syntastic_auto_loc_list = 1 "
  let g:syntastic_check_on_open = 1 "
  let g:syntastic_check_on_wq = 0 "
""""""""""""""""""""
"Plug-in: vim-indent-guides
""""""""""""""""""""
  let g:indent_guides_enable_on_vim_startup = 1 "
  let g:indent_guides_start_level = 1 "
  let g:indent_guides_guide_size = 1 "
""""""""""""""""""""
"Plug-in: vim-airline
""""""""""""""""""""
  let g:airline#extensions#tabline#enabled = 1 "
  let g:airline_powerline_fonts = 1 "
  let g:airline_symbols = {} "
""""""""""""""""""""
"Plug-in: NERDTree
""""""""""""""""""""
  autocmd vimenter * NERDTree "
  autocmd StdinReadPre * let s:std_in=1 "
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif "
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "
