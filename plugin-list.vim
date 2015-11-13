" ===========================================================
"  Author: Wes
"  Filename: plugin-list.vim
"  Modified: 2015-11-30
"  Description: Vim plugin manage with NeoBundle.
"  Reference: 
" =========================================================== 

filetype off " required
filetype plugin indent off
" set number
set tabstop=4
set shiftwidth=4
set expandtab

let $MYVIMRC=$HOME
" let $MYVIMRC .= '/.vimrc'
let $MYVIMRC .= '/.vim/plugin-list.vim'

NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
	\     'windows' :'make -f make_mingw32.mak',
	\     'cygwin' : 'make -f make_cygwin.mak',
	\     'mac' : 'make -f make_mac.mak',
	\     'unix' : 'make -f make_unix.mak',
	\    },
	\ }

" ## snipMate (auto-complete)
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'garbas/vim-snipmate'

" ## snippets
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

" ## vim-airline
NeoBundle 'bling/vim-airline'
let g:airline_theme='wombat'
" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" ## Vim Auto Complete Popup (need L9)
NeoBundle 'othree/vim-autocomplpop'
NeoBundle 'L9'
" autocomplete with snippets.
let g:acp_behaviorSnipmateLength = 1

" ## Colorscheme
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'mukiwu/vim-tomorrow-night'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'romainl/Apprentice'

" ## ctrlp.vim
NeoBundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links'
  \ }
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

" ## Vim EasyMotion
NeoBundle 'easymotion/vim-easymotion'

" ## NERDTree
NeoBundle 'scrooloose/nerdtree'
let NERDTreeWinPos=1                " Open NERDTree at right window.
nmap <leader>e  :NERDTreeToggle<CR>

" ## nerdtree-git-plugin
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" ## Vim Git Gutter
NeoBundle 'airblade/vim-gitgutter'
" let g:gitgutter_sign_column_always = 1

" ## HTML5 omnicomplete and syntax
NeoBundle 'othree/html5.vim'

" ## indentLine
NeoBundle 'Yggdroot/indentLine'
"let g:indentLine_enabled = 1
"let g:indentLine_color_term = 239
"let g:indentLine_char = 'c'
"let g:indentLine_char = '┆'


" ## pythoncomplete
NeoBundle 'pythoncomplete'

NeoBundle 'fatih/vim-go'
let g:go_snippet_engine = "neosnippet"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_disable_autoinstall = 0

" ## Tagbar
NeoBundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

NeoBundleLazy 'osyo-manga/unite-boost-online-doc', {
	\ 'autoload': {
	\   'filetypes': 'cpp',
	\ },
	\ 'depends': [
	\   'Shougo/unite.vim',
	\   'tyru/open-browser.vim',
	\   'mattn/webapi-vim',
	\ ],
	\ }
NeoBundleLazy 'Shougo/unite.vim', {
	\ 'autoload': {
	\   'commands': [
	\     'Unite',
	\     'UniteWithBufferDir',
	\     'UniteWithCurrentDir',
	\     'UniteWithProjectDir',
	\   ],
	\ },
	\ }
NeoBundleLazy 'tyru/open-browser.vim', {
	\ 'autoload': {
	\   'commands': 'OpenBrowser',
	\ },
	\ }
NeoBundleLazy 'mattn/webapi-vim'

