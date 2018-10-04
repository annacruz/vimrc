let g:ctrlp_match_window = 'bottom,order-ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
noremap <F6> :CtrlPBuffer<cr> " Search through buffers
nnoremap <silent> t :CtrlP<cr>
nnoremap <leader>. :CtrlPTag<cr>
