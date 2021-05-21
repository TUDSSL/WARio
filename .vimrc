" C++ configuration
" map to <Leader>fm in C++ code
autocmd FileType c,cpp,objc,h,hpp nnoremap <buffer><Leader>fm :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc,h,hpp vnoremap <buffer><Leader>fm :ClangFormat<CR>
autocmd FileType c,cpp,objc,h,hpp let g:clang_format#code_style = "google"
autocmd FileType c,cpp,objc,h,hpp let g:clang_format#style_options = {'DerivePointerAlignment': 'true', 'PointerAlignment': 'Right'}
"autocmd FileType c,cpp,objc,h set shiftwidth=2
"autocmd FileType c,cpp,objc,h set tabstop=2
"autocmd FileType c,cpp,objc,h set softtabstop=2
"autocmd FileType c,cpp,objc,h set expandtab
