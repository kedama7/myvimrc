"ヴィジュアルモード時pで直前のヤンク貼り付け
vnoremap <silent> p "0p
"フォント設定(MigMix 8p)
set guifont=MigMix_1M:h8
set guifontwide=MigMix_1M:h8
"フォント設定(Ricty Diminished 10p)
"コピーペーストに関する設定
vnoremap <C-c> "+y
noremap <C-p> "+gP

"行に関する設定(行のハイライト｜折り返して表示しない｜行数表示)
" IME ON時のカーソルの色を設定(設定例:赤)
highlight CursorIM guibg=Red guifg=NONE
" 挿入モード・検索モードでのデフォルトのIME状態設定
set iminsert=0 imsearch=0
""""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
""""""""""""""""""""""""""""""
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

