"  reset augroup
augroup MyAutoCmd
autocmd!
augroup END
" 
au GUIEnter * simalt ~x

" https://thinca.hatenablog.com/entry/20160302/1456892154
" let g:vimproc#download_windows_dll = 1

" 
set ignorecase


let NERDTreeShowHidden=1

" ステータスライン
" 編集中のファイル名
" 編集中のファイルフォーマット（DOS、Unix）
" Vimが認識している現在のファイルタイプ
" カーソル位置にあるキャラクタのASCIIおよび16進値
" ドキュメント中の位置を示す行および列番号
" ファイルの長さ（行数）
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=[HEX=\%02.2B]\ [LEN=%L]\ %F%m%r%h%w\
set laststatus=2

"半角文字の設定
"set guifont=Myrica_M:h14
"set guifont=Myrica_M:h20

"全角文字の設定
"set guifontwide=Myrica_M:h14
"set guifontwide=Myrica_M:h20

"改行文字とタブ文字を表示
set number
set list
set listchars=tab:>-,eol:<
"改行文字とタブ文字の色設定（NonTextが改行、SpecialKeyがタブ）
hi NonText guibg=NONE guifg=#1C05FF
autocmd ColorScheme * highlight NonText guibg=NONE guifg=#BAB7E0
autocmd ColorScheme * highlight SpecialKey guibg=NONE guifg=#BAB7E0

" 以下のコマンドは :colorscheme の前に設定します
" コメントを濃い緑にする
" autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800
autocmd ColorScheme * highlight Comment  gui=NONE guifg=#c0c0d0 guibg=NONE
autocmd ColorScheme * highlight Normal   guifg=#f0f0f8 guibg=#000000
autocmd ColorScheme * highlight LineNr ctermfg=239 guifg=#c0c0d0
autocmd ColorScheme * highlight Number guifg=#ef75bc
autocmd ColorScheme * highlight Visual guifg=#FFFF00
autocmd ColorScheme * highlight list guifg=#1C05FF
set background=dark

" 
""let g:terminal_color_0  = '#2e3436'
""let g:terminal_color_1  = '#cc0000'
""let g:terminal_color_2  = '#4e9a06'
""let g:terminal_color_3  = '#c4a000'
""let g:terminal_color_4  = '#3465a4'
""let g:terminal_color_5  = '#75507b'
""let g:terminal_color_6  = '#0b939b'
""let g:terminal_color_7  = '#d3d7cf'
""let g:terminal_color_8  = '#555753'
""let g:terminal_color_9  = '#ef2929'
""let g:terminal_color_10 = '#8ae234'
""let g:terminal_color_11 = '#fce94f'
""let g:terminal_color_12 = '#729fcf'
""let g:terminal_color_13 = '#ad7fa8'
""let g:terminal_color_14 = '#00f5e9'
""let g:terminal_color_15 = '#eeeeec'
let g:terminal_color_0  = "#1b2b34" "black
let g:terminal_color_1  = "#ed5f67" "red
let g:terminal_color_2  = "#deffde" "green
let g:terminal_color_3  = "#fbc963" "yellow
let g:terminal_color_4  = "#669acd" "blue
let g:terminal_color_5  = "#c695c6" "magenta
let g:terminal_color_6  = "#5fb4b4" "cyan
let g:terminal_color_7  = "#c1c6cf" "white
let g:terminal_color_8  = "#65737e" "bright black
let g:terminal_color_9  = "#fa9257" "bright red
let g:terminal_color_10 = "#88eb94" "bright green
let g:terminal_color_11 = "#4f5b66" "bright yellow
let g:terminal_color_12 = "#74bef2" "bright blue
let g:terminal_color_13 = "#ced4df" "bright magenta
let g:terminal_color_14 = "#9cf7a8" "bright cyan
let g:terminal_color_15 = "#db273f" "bright white
let g:terminal_color_background="#1b2b34" "background
let g:terminal_color_foreground="#c1c6cf" "foreground
" リーダー
let mapleader = "\<Space>"

" マッピング
" 空行挿入
nnoremap <Leader>o :<C-u>call append(expand('.'), '')<CR>j

nnoremap <Esc><Esc> :<C-u>noh<CR>

nnoremap tt :<C-u>terminal<CR>i

" terminal
tnoremap <silent> jj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>

" ウィンドウ分割を楽にする設定
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap svn :<C-u>vnew<CR>
nnoremap sq :<C-u>q<CR>
nnoremap saq :<C-u>qa<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

"タブ操作
nnoremap st :<C-u>tabnew<CR>
nnoremap sn :<C-u>tabnext<CR>
nnoremap sp :<C-u>tabprevious<CR>
nnoremap sc :<C-u>tabclose<CR>
nnoremap so :<C-u>tabonly<CR>

" ウインドウ幅
nnoremap > <C-w>>
nnoremap < <C-w><
nnoremap <S-j> <C-w>+
nnoremap <S-k> <C-w>-

noremap <S-h> ^
noremap <S-l> $
inoremap <silent> jj <esc>
nnoremap j gjzz
nnoremap k gkzz
nnoremap n nzz
nnoremap N Nzz

map <F1> <Nop>
imap <F1> <Nop>
cmap <F1> <Nop>
map <F1> <Nop>
imap <F13> <Nop>
cmap <F13> <Nop>
map <F37> <Nop>
imap <F37> <Nop>
cmap <F37> <Nop>

"inoremap { {}<Left>
"inoremap {<Enter> {}<Left><CR><ESC><S-o>X<C-h>
"inoremap [ []<Left>
"inoremap [<Enter> []<Left><CR><ESC><S-o>X<C-h>
"inoremap ( ()<Left>
"inoremap (<Enter> ()<Left><CR><ESC><S-o>X<C-h>
"inoremap " ""<Left>
"inoremap '''<Enter> ''''''<Left><Left><Left><CR><ESC><S-o>X<C-h>

" 空行インデント維持
nnoremap o oX<C-h>
nnoremap O OX<C-h>
inoremap <CR> <CR>X<C-h>

"noremap <Leader>p <C-p>
"noremap! <Leader>p <C-p>
"noremap <Leader>n <C-n>
"noremap! <Leader>n <C-n>

" カーソル行ハイライト
set cursorline

" 横幅80
let &colorcolumn=join(range(81,999),",")
hi ColorColumn ctermbg=200 guibg=#ff0000
"hi ColorColumn ctermbg=235 guibg=#2c2d27

" インデント
"" set tabstop = 4
"" set shiftwidth = 4
"" set softtabstop = 0
"" set expandtab
"" set smarttab
"" set shiftround

set ambiwidth=double
set noswapfile
set clipboard+=unnamedplus

let g:python2_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'

" dein

let s:dein_home_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_home_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/.config/nvim')

" dein.vim がなければ git clone
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
" set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" プラグイン読み込み＆キャッシュ作成
if dein#load_state(s:dein_home_dir)
  call dein#begin(s:dein_home_dir)
  call dein#load_toml(s:toml_dir.'/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir.'/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" https://gist.github.com/yoshikaw/3727973
set tabline=%!MyTabLine()
function! MyTabLine()
  let tabs = []
  let tabcurbufnames = ['dummy']
  for n in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(n)
    let curbufnr = bufnrs[tabpagewinnr(n) - 1]

    let selected = n == tabpagenr() ? 'Sel' : ''
    let modifier = len(filter(bufnrs, 'getbufvar(v:val, "&modified")')) ? '+' : ' '
    let filename = fnamemodify(bufname(curbufnr), ':t')
    if len(filename) == 0
      let filename = '[No Name]'
    endif

    let label = ''
    let label .= '%#TabLine' . selected . '#'
    let label .= n . ')'
    let label .= modifier
    let label .= filename

    let tab = '%' . n . 'T' . label . ' %T' . (n == tabpagenr() ? '%999XX' : ' ')
    call add(tabs, tab)
    call add(tabcurbufnames, filename)
  endfor

  let info = ''
  let dirname = fnamemodify(bufname('%'), ':~:h')
  if len(dirname) > &columns / 2
    let dirname = pathshorten(dirname)
  endif
  let info .= dirname

  let tabs = s:adjust_tab_label(tabs, info, tabcurbufnames)

  return join(tabs, '') . '%#TabLineFill#%T' . info
endfunction

function! s:adjust_tab_label(tabs, info, tabcurbufnames)
  let tab_frame_len = (len(a:tabs) * (3 + 2)) + len(a:info)
  if &columns > len(join(a:tabcurbufnames)) + tab_frame_len
    return a:tabs
  endif

  let least_label_len = 1
  let newlabels = repeat([''], len(a:tabs) + 1)
  let remains = &columns - (len(a:tabcurbufnames[tabpagenr()]) + tab_frame_len)
  if remains > 0
    let tabrange = range(1, len(a:tabs))
    if least_label_len > (remains / (len(a:tabs) - 1))
      let remains += (len(a:tabs) - 1) * 2
      if tabpagenr() == 1
        let tabrange = [tabpagenr() + 1, tabpagenr() + 2]
      elseif tabpagenr() == tabpagenr('$')
        let tabrange = [tabpagenr() - 2, tabpagenr() - 1]
      else
        let tabrange = [tabpagenr() - 1, tabpagenr() + 1]
      endif
    endif

    let index = 0
    while remains > 0
      for n in tabrange
        if n != tabpagenr() && index < len(a:tabcurbufnames[n])
          let newlabels[n] .= a:tabcurbufnames[n][index]
          let remains -= 1
          if remains <= 0 | break | endif
        endif
      endfor
      let index += 1
    endwhile
  endif

  let n = 1
  let newtabs = []
  for tab in a:tabs
    if n == tabpagenr()
      call add(newtabs, tab)
    else
      let pos = stridx(tab, ')')
      if len(newlabels[n]) <= least_label_len
        call add(newtabs, tab[ : pos] . '%T')
      elseif len(a:tabcurbufnames[n]) == len(newlabels[n]) + 1
        call add(newtabs, tab[ : pos + 1] . a:tabcurbufnames[n] . ' %T')
      elseif len(a:tabcurbufnames[n]) > len(newlabels[n])
        call add(newtabs, tab[ : pos + 1] . newlabels[n] . '. %T')
      else
        call add(newtabs, tab)
      endif
    endif
    let n += 1
  endfor

  return newtabs
endfunction

" Prevent corruptions of output in Haskell
if has('win32') || has('win64')
    let g:quickrun_config['haskell'] = { 
    \   "hook/output_encode/enable" : 1,
    \   "hook/output_encode/encoding" : "cp932",
    \}
endif


