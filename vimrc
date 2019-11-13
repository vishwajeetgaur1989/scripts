syntax on
augroup MyColors
    autocmd!
    autocmd ColorScheme * hi ColorColumn ctermbg=235 
augroup END

"Following colorscheme can be used !!

colorscheme koehler
"colorscheme darkblue
"colorscheme default
"colorscheme delek
"colorscheme desert
"colorscheme elflord
"colorscheme evening
"colorscheme koehler
"colorscheme morning
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme ron
"colorscheme shine
"colorscheme slate
"colorscheme torte
"colorscheme zellner

set backspace=indent,eol,start
set number
set relativenumber
set paste
set autoindent
set copyindent
set preserveindent
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftround                      
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
nnoremap <silent> <leader>nb :set relativenumber!<CR>
set tags+=~/Documents/Personal/.tags
set tags+=~/Documents/Personal/.c_tags
set tags+=~/Documents/Personal/tags
set tags+=~/Downloads/Package/GIT/freeDiameter/tags
"To be modified ..
"fun! SetMyTodos()
"    syn match myTodos /\%(HABA:\)\|\%(NOTE:\)/
"    hi link myTodos Todo
"endfu
"autocmd bufenter * :call SetMyTodos()
"autocmd filetype * :call SetMyTodos()
hi ColorColumn ctermbg=238
au BufWritePost *.py,*.c,*.cpp,*.h silent! !eval 'ctags -R -o newtags; mv newtags tags' &
