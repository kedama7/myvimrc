"���B�W���A�����[�h��p�Œ��O�̃����N�\��t��
vnoremap <silent> p "0p
"�t�H���g�ݒ�(MigMix 8p)
set guifont=MigMix_1M:h8
set guifontwide=MigMix_1M:h8
"�t�H���g�ݒ�(Ricty Diminished 10p)
"�R�s�[�y�[�X�g�Ɋւ���ݒ�
vnoremap <C-c> "+y
noremap <C-p> "+gP

"�s�Ɋւ���ݒ�(�s�̃n�C���C�g�b�܂�Ԃ��ĕ\�����Ȃ��b�s���\��)
" IME ON���̃J�[�\���̐F��ݒ�(�ݒ��:��)
highlight CursorIM guibg=Red guifg=NONE
" �}�����[�h�E�������[�h�ł̃f�t�H���g��IME��Ԑݒ�
set iminsert=0 imsearch=0
""""""""""""""""""""""""""""""
" �}�����[�h���A�X�e�[�^�X���C���̐F��ύX
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

