" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Shortcut for Steve-style comment box fixup:
vnoremap <Leader>vc :EasyAlign -2/-/ig['!Comment']l0r0<Enter>
