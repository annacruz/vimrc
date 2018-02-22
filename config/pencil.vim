augroup pencil "Configuring to autoload pencil for markdown and text files
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'hard'})
  autocmd FileType text         call pencil#init()
augroup END

let g:pencil#autoformat = 1
let g:pencil#textwidth = 80
let g:airline_section_x = '%{PencilMode()}'
let g:pencil#mode_indicators = {'hard': 'H', 'auto': 'A', 'soft': 'S', 'off': '',}

"Default vim autoformat shortcuts explicited
vnoremap <silent> Q gq
nnoremap <silent> Q gqap


