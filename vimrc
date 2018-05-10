""はじめに"""""""""""""""""""""""""""""""""""""""""""""
"【必要となる設定】
" ■gitの設定(プラグイン管理の為)
" ■関数一覧表示のctags
" ■環境変数PATHに通して再起動すること
" ■下記フォルダを作成すること
" ~/.vim/undo
" ~/.vim/swap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32")
    if has("vim_starting")
        set nocompatible
        set runtimepath+=~/.vim/bundle/neobundle.vim
        set runtimepath+=~/.vim/bundle/*
    endif

    call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    " NeoBundle 'vobornik/vim-mql4'
    NeoBundle 'Lokaltog/vim-easymotion'
    NeoBundle 'Shougo/neocomplete.vim' 
    NeoBundle 'tomtom/tcomment_vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/vimshell.vim'
    NeoBundle 'Shougo/vimfiler.vim'
    NeoBundle 'itchyny/lightline.vim'
    NeoBundle 't9md/vim-textmanip'
    NeoBundle 'AndrewRadev/switch.vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'ujihisa/unite-colorscheme'
    NeoBundle 'tomasr/molokai'
    NeoBundle 'scrooloose/nerdtree'  
    NeoBundle 'Shougo/neocomplcache.vim'
    NeoBundle 'thinca/vim-quickrun'
    NeoBundle "h1mesuke/unite-outline"
    NeoBundle 'nathanaelkane/vim-indent-guides'
    NeoBundle 'tyru/current-func-info.vim'
    NeoBundle 'mattn/multi-vim'
    NeoBundle 'terryma/vim-multiple-cursors'
    NeoBundle 'tyru/restart.vim'
    NeoBundle 'mbbill/undotree'
    NeoBundle 'YankRing.vim'
    NeoBundle 'troydm/easybuffer.vim'
    NeoBundle 't9md/vim-quickhl'
    NeoBundle "Shougo/neosnippet.vim"
    NeoBundle "osyo-manga/vim-marching"
    NeoBundle "Shougo/neosnippet-snippets"
    NeoBundle "honza/vim-snippets"
    NeoBundle "rhysd/wandbox-vim"
    NeoBundle 'mattn/webapi-vim'                                
    NeoBundle 'mattn/excitetranslate-vim'
    NeoBundle 'vim-scripts/LanguageTool'
    NeoBundle 'drillbits/nyan-modoki.vim'
    NeoBundle 'majutsushi/tagbar'
    NeoBundle 'itchyny/thumbnail.vim'
    NeoBundle 'koron/codic-vim'
    NeoBundle 'yuratomo/dotnet-complete'
    NeoBundle 'ujihisa/neco-look'
    NeoBundle 'tpope/vim-dispatch'
    NeoBundle 'osyo-manga/vim-anzu'
    " NeoBundle 'tpope/vim-fugitive'
    call neobundle#end()

    " Installation check.
    NeoBundleCheck
    set runtimepath+=$VIM/plugins/quickrun
    set runtimepath+=$VIM/plugins/vimshell
    set runtimepath+=$VIM/plugins/vimproc

elseif has("unix")
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

    call dein#begin(expand('~/.vim/dein'))

    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})

    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/neomru.vim')
    call dein#add('Shougo/neosnippet')


    call neobundle#begin(expand('~/.vim/bundle/'))
    call dein#add('Shougo/neobundle.vim')
    call dein#add('Lokaltog/vim-easymotion')
    call dein#add('Shougo/neocomplete.vim' )
    call dein#add('tomtom/tcomment_vim')
    call dein#add('Shougo/unite.vim')
    call dein#add('Shougo/vimshell.vim')
    call dein#add('Shougo/vimfiler.vim')
    call dein#add('itchyny/lightline.vim')
    call dein#add('t9md/vim-textmanip')
    call dein#add('AndrewRadev/switch.vim')
    call dein#add('Shougo/unite.vim')
    call dein#add('ujihisa/unite-colorscheme')
    call dein#add('tomasr/molokai')
    call dein#add('scrooloose/nerdtree'  )
    call dein#add('Shougo/neocomplcache.vim')
    call dein#add('thinca/vim-quickrun')
    call dein#add('nathanaelkane/vim-indent-guides')
    call dein#add('tyru/current-func-info.vim')
    call dein#add('mattn/multi-vim')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('tyru/restart.vim')
    call dein#add('mbbill/undotree')
    call dein#add('leafcage/yankround.vim')
    call dein#add('troydm/easybuffer.vim')
    call dein#add('t9md/vim-quickhl')
    call dein#add('mattn/webapi-vim')
    call dein#add('mattn/excitetranslate-vim')
    call dein#add('vim-scripts/YankRing.vim')
    call dein#add('drillbits/nyan-modoki.vim')
    call dein#add('majutsushi/tagbar')
    call dein#add('itchyny/thumbnail.vim')
    call dein#add('koron/codic-vim')
    call dein#add('yuratomo/dotnet-complete')
    call dein#add('ujihisa/neco-look')
    call dein#add('tpope/vim-dispatch')
    call dein#add('osyo-manga/vim-anzu')
    call dein#end()
endif

" undotree.vim
" [?]でヘルプ。,uでundo履歴
" http://vimblog.com/blog/2012/09/02/undotree-dot-vim-display-your-undo-history-in-a-graph/
" https://github.com/r1chelt/dotfiles/blob/master/.vimrc
nmap ,u :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SplitWidth = 35
let g:undotree_diffAutoOpen = 1
let g:undotree_diffpanelHeight = 25
let g:undotree_RelativeTimestamp = 1
let g:undotree_TreeNodeShape = '*'
let g:undotree_HighlightChangedText = 1
let g:undotree_HighlightSyntax = "UnderLined"
" YankRing.vim
" [,],[y]でヤンク履歴
" http://nanasi.jp/articles/vim/yankring_vim.html
" https://github.com/yuroyoro/dotfiles/blob/master/.vimrc.plugins_setting
nmap ,y :YRShow<CR>
"バフ履歴
" nmap ,b :new<CR>:EasyBuffer<CR>
nmap ,b :Thumbnail<CR>
"~,swpファイルの出力先
"自動改行防止
:set tw=0
vnoremap <silent> p "0p
colorscheme molokai
autocmd ColorScheme * highlight diffchange gui=bold guifg=fg guibg=#000000
" au   BufEnter ;   execute ":lcd " . expand("%:p:h")
" noremap ; "zy:let @/ = @z<CR>n
nmap <Space>f *
vmap <Space>f "zy:let @/ = @z<CR>n
nmap <expr> <Space>F ':vimgrep ;\<' . expand('<cword>') . '\>; ** \| cw'
noremap <C-c> "+y
noremap <C-p> "+gP
"ファイルタイプショートカットキー
map ft :filetype=
"grep時に自動的にQFウインドウを立ち上げる
autocmd QuickFixCmdPost *grep* cwindow
noremap dif :vertical diffsplit 
noremap dio :DiffOrig<CR> 
"カーソル移動
noremap <Space>j L
noremap <Space>k H
noremap <Space>h 0
noremap <Space>l $
noremap J <C-d>
noremap K <C-u>
noremap H <S-Left>
noremap L <S-Right>
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap  <C-,> <C-w> >
noremap <C-.> <C-w> <
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
noremap b %
nnoremap wp ciw<C-r>0<ESC>
"スペース2回で繰り返し
noremap <Space><Space> .
"タブ
noremap tab :tabnew.<CR>
noremap th gT
noremap tl gt
" 翻訳
map eh :ExciteTranslate<CR>
" 検索次へ/前へ
map n nzz
map N Nzz

"NERDTree
noremap tre :NERDTree<cr>

"行に関する設定(行のハイライト｜折り返して表示しない｜行数表示)
:set cursorline
:set nowrap " https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
:set number
:set relativenumber
set re=0
"インデントの関係 !！特別な理由がない限り変更しない
set smartindent
set autoindent
filetype plugin indent on
"文字色つける
:syntax on
"Switch関連の処理
noremap s :Switch<cr>
noremap mlt :MultipleCursorsFind 
let g:switch_custom_definitions =
			\ [
			\   ['TRUE', 'FALSE'],
			\   ['START', 'END'],
			\   ['ON', 'OFF'],
			\   ['OK', 'NG'],
			\   ['VALID', 'INVALID'],
			\   ['LOW', 'HIGH'],
			\   ['ACT_L', 'ACT_H'],
			\   ['PULS', 'MINUS'],
			\   ['SET', 'CLEAR'],
			\   ['SIGNED', 'UNSIGNED'],
			\   ['OUT', 'IN'],
			\   ['READ', 'WRITE'],
			\   ['UP', 'DOWN'],
			\   ['LEFT', 'RIGHT'],
			\   ['GO', 'STOP'],
			\   ['GOOD', 'BAD'],
			\   ['MAX', 'MIN'],
			\   ['HEIGHT', 'WIDTH'],
			\   ['OPEN', 'CLOSE'],
			\   ['Start', 'End'],
			\   ['True', 'False'],
			\   ['On', 'Off'],
			\   ['Ok', 'Ng'],
			\   ['Valid', 'Invalid'],
			\   ['Low', 'High'],
			\   ['Act_l', 'Act_h'],
			\   ['Puls', 'Minus'],
			\   ['Set', 'Clear'],
			\   ['Signed', 'Unsigned'],
			\   ['Out', 'In'],
			\   ['Read', 'Write'],
			\   ['Up', 'Down'],
			\   ['Left', 'Right'],
			\   ['Go', 'Stop'],
			\   ['Good', 'Bad'],
			\   ['Max', 'Min'],
			\   ['Height', 'Width'],
			\   ['Open', 'Close'],
			\   ['Enable', 'Disable'],
			\   ['public', 'private', 'protected'],
			\   ['Send', 'Receive'],
			\   ['+', '-'],
			\   ['foo', 'bar', 'baz']
			\ ]
" 下記vimrcをutf-8に変換時、2バイト文字がswitch出来なくなった為、保留させている
" \   ['成功', '失敗'],
" \   ['失敗', '成功'],
" \   ['進む', '戻る'],
" \   ['戻る', '進む'],
" \   ['なし', 'あり'],
" \   ['あり', 'なし'],
" \   ['受信', '送信'],
" \   ['送信', '受信'],
" \   ['開始', '終了'],
" \   ['終了', '開始'],
" \   ['右', '左'],
" \   ['左', '右'],
" \   ['上', '下'],
" \   ['下', '上'],
" \   ['前', '後'],
" \   ['後', '前']
" \ "-"        : "+",
" \ "+"        : "-",
" \ "○"       : "×",
" \ "×"       : "○",
" \ "♂"       : "♀",
" \ "♀"       : "♂",
" \ "→"       : "↓",
" \ "↓"       : "←",
" \ "←"       : "↑",
" \ "↑"       : "→",
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
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><CR>  neocomplcache#close_popup()
inoremap <expr><C-z>  neocomplcache#cancel_popup()
"関数名表示"
let &statusline = '[%{cfi#get_func_name()}()]'
let &statusline = '%{cfi#format("[%s()]", "no function")}'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" 終了時に保存するセッションオプションを設定する
let g:restart_sessionoptions
    \ = 'blank,buffers,curdir,folds,help,localoptions,tabpages'
noremap ZR :Restart<CR>
" タブを表示するときの幅
set expandtab
set tabstop=4
" タブを挿入するときの幅
set shiftwidth=4
"文法チェックの設定
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_mode_map={ 'mode': 'passive',
	                        \ 'active_filetypes': ['php', 'ruby', 'javascript', 'json'],
	                        \ 'passive_filetypes': []
	                        \}
	let g:syntastic_ruby_checkers=['rubocop']
	let g:syntastic_javascript_checkers=['jshint']
	let g:syntastic_php_checkers=['php','phpcs']
	let g:syntastic_quite_warnings=0
"関数一覧表示
set tags=tags
nmap func :Tlist<CR>
let Tlist_Use_Right_Window = 1              
let Tlist_Exit_OnlyWindow = 1                      
"ハイライト設定
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)
" 関数等ヘッダー
nmap fch o/************************************************************************/<CR>
			\/* 関数     : 															*/<CR>
			\/* 関数名   : 															*/<CR>
			\/* 引数     : 															*/<CR>
			\/* 戻り値   : 															*/<CR>
			\/* 変更履歴 : <C-R>=strftime("%Y/%m/%d")<CR> Axia Soft Design S.Nakata	初版作成			*/<CR>
			\/************************************************************************/<CR>
			\/* 機能 :																*/<CR>
			\/*																		*/<CR>
			\/************************************************************************/<CR>
			\/* 注意事項 :															*/<CR>
			\/* なし																*/<CR>
			\/************************************************************************/<ESC>
nmap fich o/************************************************************************/<CR>
			\/* システム名	: 														*/<CR>
			\/* ファイル名	: 														*/<CR>
			\/* 機能			:														*/<CR>
			\/* 変更履歴		: <C-R>=strftime("%Y/%m/%d")<CR> Axia Soft Design S.Nakata	初版作成		*/<CR>
			\/* 注意事項		:														*/<CR>
			\/************************************************************************/<ESC>
nmap fcph o////////////////////////////////////////////////////////////////////////<CR>
			\関数名	:<CR>
			\----------------------------------------------------------------------<CR>
			\入力		:<CR>
			\出力		:<CR>
			\----------------------------------------------------------------------<CR>
			\機能		:<CR>
			\----------------------------------------------------------------------<CR>
			\変更履歴	: <C-R>=strftime("%Y/%m/%d")<CR> Axia Soft Design S.Nakata	初版作成<CR>
			\////////////////////////////////////////////////////////////////////<ESC>
nmap ccsh o/// <summary><CR>
			\</summary><CR>
			\<remarks> Create: <C-R>=strftime("%Y/%m/%d")<CR> Axia Soft Design S.Nakata	</remarks><ESC>
nmap fcsh o/// <summary><CR>
			\</summary><CR>
			\<param name=""></param><CR>
			\<returns></returns><CR>
			\<remarks> Create: <C-R>=strftime("%Y/%m/%d")<CR> Axia Soft Design S.Nakata	</remarks><ESC>
nmap fvbh o''' <summary><CR>
			\''' <CR>
			\''' </summary><CR>
			\''' <param name=""></param><CR>
			\''' <returns></returns><CR>
			\''' <remarks> Create: <C-R>=strftime("%Y/%m/%d")<CR> Axia Soft Design S.Nakata	</remarks><ESC>

"色設定
highlight Pmenu     ctermbg=8  guibg=#606060
highlight PmenuSel  ctermbg=12 guibg=SlateBlue
highlight PmenuSbar ctermbg=0  guibg=#404040
"全角スペースをハイライト表示
function! ZenkakuSpace()
	highlight ZenkakuSpace cterm=reverse ctermfg=Red gui=reverse guifg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
"--- <F6>  タイムスタンプを挿入 ----
nmap <F6> <ESC>a<C-R>=strftime(" %Y.%m.%d Axia Soft Design 中田 ")<CR><ESC>
"--- <F11>  全画面表示 ----
map <F11> :SM6<CR>
"--- <F12>  ウインドウ表示 ----
map <F12> :SM1<CR>

" Alignを日本語環境で使用するための設定
:let g:Align_xstrlen = 3
map <Space>= \tsp
map mini :MinimapSync<CR>
" easy motion 用仮設定
nmap F <Plug>(easymotion-s2)
" 検索用
nmap <C-f> /


"スニペット用の設定
"==================================================================================
" スニペットを展開するキーマッピング
" <Tab> で選択されているスニペットの展開を行う
" 選択されている候補がスニペットであれば展開し、
" それ以外であれば次の候補を選択する
" また、既にスニペットが展開されている場合は次のマークへと移動する
imap <expr><CR> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? neocomplcache#close_popup() : "\<CR>"
smap <expr><CR> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<CR>"
" 現在の filetype のスニペットを編集する為のキーマッピング
" こうしておくことでサッと編集や追加などを行うことができる
" 以下の設定では新しいタブでスニペットファイルを開く
nnoremap <Space>ns :execute "tabnew\|:NeoSnippetEdit ".&filetype<CR>
" スニペットファイルの保存ディレクトリを設定
let g:neosnippet#snippets_directory = "~/.neosnippet"
" 非同期ではなくて同期処理で補完する
let g:marching_backend = "sync_clang_command"
" オプションの設定
" これは clang のコマンドに渡される
let g:marching_clang_command_option="-std=c++1y"
" neocomplete.vim と併用して使用する場合
" neocomplete.vim を使用すれば自動補完になる
let g:marching_enable_neocomplete = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.cpp =
    \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
"エンターキーで候補の確定
" imap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"
" 確定
"検索のループを禁止する
" set nowrapscan
"ヤンクした文字列をクリップボードに格納
set clipboard=unnamed,autoselect
"================================================================================================

"とりあえずクイックランを動作させたい （動作が重いためとりあえずクイックランは諦めた）
"=================================================================================
"
" map <F5> :QuickRun<CR>
" 出力先
" 成功した場合：quickrun 専用の出力バッファ
" 失敗した場合：quickfix を :copen で開く
" バッファの開き方：botright 8sp
"
" コマンドの実行は vimproc.vim を使用する
" runner に vimproc を設定
" runner/vimproc/updatetime には更新するタイミングを設定
" この値が大きいとコンパイルが終了していても
" 結果が出力されるまでに時間がかかる可能性がある。
"
" cpp.type にて使用するコンパイラなどを設定する
" cpp.cmdopt にコマンドラインオプションを設定
" let g:quickrun_config = {
" \   "_" : {
" \       "outputter" : "error",
" \       "outputter/error/success" : "buffer",
" \       "outputter/error/error"   : "quickfix",
" \       "outputter/buffer/split" : ":botright 8sp",
" \       "outputter/quickfix/open_cmd" : "copen",
" \       "runner" : "vimproc",
" \       "runner/vimproc/updatetime" : 500,
" \   },
" \   "cpp" : {
" \       "type" : "cpp/clang++",
" \       "cmdopt" : "-std=c++1y -ID:/home/cpp/boost/boost_1_55_0",
" \   },
" \   "c" : {
" \       "type" : "c/gcc",
" \   },
" \}

" :QuickRun 時に quickfix の中身をクリアする
" こうしておかないと quickfix の中身が残ったままになってしまうため
" let s:hook = {
" \   "name" : "clear_quickfix",
" \   "kind" : "hook",
" \}
"
" function! s:hook.on_normalized(session, context)
"     call setqflist([])
" endfunction
"
" call quickrun#module#register(s:hook, 1)
" unlet s:hook
" =======================================================================
map <Space>sc :SyntasticToggleMode<CR>
map ,e :Errors<CR>
let  g:syntastic_always_populate_loc_list = 1 
let  g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'mode': 'active'} 
let g:syntastic_enable_signs=0
let g:syntastic_auto_loc_list=2
"ファイルオープンでシンタックスチェックする
let g:syntastic_check_on_open = 0
" C
let g:syntastic_c_check_header = 0
autocmd VimEnter * execute 'syntax keyword Type UB B H UH W UW INT UINT BOOL FLOAT DOUBLE'
" autocmd syntax keyword Type UB B H UH W UW INT UINT BOOL FLOAT DOUBLE
" C++
let g:syntastic_cpp_check_header = 0
" augroup AutoSyntastic
"     autocmd!
"     autocmd InsertLeave,TextChanged * call s:syntastic() 
" augroup END
" function! s:syntastic()
"     w
"     SyntasticCheck
" endfunction

" 保管行の高さ設定
set pumheight=10
" 対応するカッコの表示時間を0.5(デフォルト)から0.1秒に
set matchtime=0
" 英語スペルチェッカーの設定
let g:languagetool_jar='$HOME/.languagetool/LanguageTool-2.1/languagetool-commandline.jar'
"カーソル下グレップ
map <Space>g :vim <C-r><C-w> 
"ワードコピー
map yw yiw
"カレントディレクトリ変更
map <Space>cd :cd %:h<CR>
map cd :lcd %:h<CR>
"grepのNEXT表示
map gj :cn<CR>
map gk :cN<CR>

"マークワープの設定
map <Space>@ '

"折りたたみの設定
set foldmethod=syntax
set foldlevel=100
set foldlevelstart=100

"アンドゥ履歴の永続化
set backup
set backupdir=~/.vim/undo
set undofile
set undodir=~/.vim/undo

"スワップファイルの保存先
set directory=~/.vim/swap

"ヴィジュアルモードの入力
vmap i I
vmap a A


"ステータスラインの設定
" !!関数名を表示したい場合以下をコメント解除しanzu と cekephpの間に挿入
      " \   'currenttag': 'MyCurrentTag',
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'mode_map': {'c': 'NORMAL'},
      \ 'active': {
      \   'left': [ ['mode', 'paste'], ['fugitive', 'filename', 'currenttag',  'anzu'] ]
      \ },
      \ 'component': {
      \   'lineinfo': ' %3l[%L]:%-2v',
      \ },
	  \ 'separator': { 'left': '>', 'right': '<' },
      \ 'subseparator': { 'left': '>', 'right': '<' },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \   'anzu': 'anzu#search_status',
      \   'cakephp': 'MyCakephp',
      \   'nyan': 'NyanModoki',
      \ }
      \ }


function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? ' ' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head())
      return ' ' . fugitive#head()
    endif
catch
  endtry
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! MyCurrentTag()
  return tagbar#currenttag('%s', '')
endfunction

function! MyCakephp()
  return exists('*cake#buffer') ? cake#buffer('type') : ''
endfunction

function! NyanModokiPri()
  return &ft = %F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
endfunction

"にゃんもどきの設定
set laststatus=2
" set statusline+=
let g:nyan_modoki_select_cat_face_number = 4
let g:nayn_modoki_animation_enabled= 1
"minimap
let g:minimap_highlight='Visual'
"tcomment
if !exists('g:tcomment_types')
	let g:tcomment_types = {}
endif
let g:tcomment_types['phpunit'] = '// %s'
let g:tcomment_types['vb'] = "\' %s"
let g:tcomment_types['vb.net'] = "\' %s"

"gvimでもタブをテキストベースで表示
set guioptions-=e

"Codicの設定
nmap co :Codic<Space>

"dotnetcomplete の設定
au BufNewFile,BufRead *.xaml    setf xml
au BufNewFile,BufRead *.xaml    setl omnifunc=xaml#complete

au BufNewFile,BufRead *.cs      setl omnifunc=cs#complet
au BufNewFile,BufRead *.cs      setl bexpr=cs#balloon()
au BufNewFile,BufRead *.cs      setl ballooneval

set encoding=utf-8
set fileencodings=utf-8,sjis
set fileformats=unix,dos,mac
" :edit ++encoding=utf-8

nnoremap <ESC><ESC> :nohlsearch<CR>

"バイナリ編集(xxd)モード（vim -b での起動、もしくは *.bin ファイルを開くと発動します）
augroup BinaryXXD
  autocmd!
  autocmd BufReadPre  *.bin let &binary =1
  autocmd BufReadPost * if &binary | silent %!xxd -g 1
  autocmd BufReadPost * set ft=xxd | endif
  autocmd BufWritePre * if &binary | %!xxd -r | endif
  autocmd BufWritePost * if &binary | silent %!xxd -g 1
  autocmd BufWritePost * set nomod | endif
augroup END

" vim-anzu関連 {{{
nmap n <Plug>(anzu-n-with-echo)zz
nmap N <Plug>(anzu-N-with-echo)zz
" nmap n <Plug>(anzu-mode-n) " 検索対象文言の横にヒット数を表示する場合
" nmap N <Plug>(anzu-mode-N) " 検索対象文言の横にヒット数を表示する場合
nmap * <Plug>(anzu-star-with-echo)zz
nmap # <Plug>(anzu-sharp-with-echo)zz
augroup vim-anzu
" 一定時間キー入力がないとき、ウインドウを移動したとき、タブを移動したときに
" 検索ヒット数の表示を消去する
    autocmd!
    autocmd WinLeave,TabLeave * call anzu#clear_search_status()
augroup END
"}}}
set helplang=ja,en
" ハイライト
augroup DebugHighlight
  au!
  autocmd VimEnter * match ToDo /\<DEBUG\>/
augroup END
autocmd BufNewFile,BufReadPost *.mq[h4] setlocal filetype=mql4

" TODOグレップ

