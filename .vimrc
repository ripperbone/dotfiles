set tabstop=3
set shiftwidth=3
set expandtab

filetype on
syntax on

let g:netrw_banner = 0
let g:netrw_liststyle = 4
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20


" preserve tabs in Makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0


function StripWhitespace()
    " Save the current search and cursor position
    let _s=@/
    let l = line('.')
    let c = col('.')


    silent execute '%s/\s\+$//e'

    " Restore the saved search and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd FileType c,cpp,java,markdown,php,ruby,python autocmd BufWritePre <buffer> call StripWhitespace()
