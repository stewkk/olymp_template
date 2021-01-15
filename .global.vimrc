set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'vim-scripts/AutoClose'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'cpiger/NeoDebug'
Plugin 'xavierd/clang_complete'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'jeffkreeftmeijer/vim-numbertoggle'
"Plugin 'vim-scripts/Conque-GDB'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set exrc
set secure
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"let g:ycm_global_ycm_extra_conf = "/usr/lib/ycmd/ycm_extra_conf.py"
filetype on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
let &path.="src/include,/usr/include/AL,"
nnoremap <F4> :make!<cr>
nnoremap <F6> :make! d<cr>
nnoremap  <F5> :!./a<cr>
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
"set makeprg=make\ -C\ ../build\ -j9
set ai 
set cin
set showmatch
set hlsearch
set incsearch
set ignorecase
if !has('gui_running')
set mouse=
endif
set pastetoggle=<F2>
set number
syntax on
set scrolloff=3
let g:ycm_confirm_extra_conf = 0
set rnu
" set mouse=a
let g:clang_library_path='/usr/lib/'
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction
inoremap <tab> <c-r>=Smart_TabComplete()<CR>
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:delimitMate_expand_cr = 1
" map to delete trailing spaces
nnoremap <silent> <F9> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
