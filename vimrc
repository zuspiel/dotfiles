" Set mapleader
let mapleader = ","
let g:mapleader = ","

"let xterm16_colormap = 'allblue'

"colorscheme railcast
"set spell

"Make status line more informative
"TODO: Need toggle for that...
":set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%4l,%4v]\ [%p%%]\ [LEN=%L]
":set laststatus=2

set hlsearch                                                        "highlight what I find
set incsearch                                                       "show matches as I type

set nocompatible 
"filetype plugin indent on 
syntax on 

" This is for working across multiple xterms and/or gvims
" Transfer/read and write one block of text between vim sessions (capture
" whole line):
" Write
nmap ;w :. w! ~/.vimxfer<CR>
" Read
nmap ;r :r ~/.vimxfer<CR>
" Append 
nmap ;a :. w! >>~/.vimxfer<CR>

if has('gui_running')
    " set columns=300                                                     "set width of window off open
    " set lines=50                                                        "height of window off open
    set guitablabel=%t                                                  "tabs display file name

    "kick it old school, no gui needed.
    set guioptions-=T                                                   "kill toolbar
    set guioptions-=m                                                   "kill menu
    "set guioptions-=r                                                   "kill right scrollbar
    "set guioptions-=l                                                   "kill left scrollbar
    "set guioptions-=L                                                   "kill left scrollbar with multiple buffers
endif

" English {{{
iab beacuse    because
iab becuase    because
iab acn        can
iab cna        can
iab centre     center
iab chnage     change
iab chnages    changes
iab chnaged    changed
iab chnagelog  changelog
iab Chnage     Change
iab Chnages    Changes
iab ChnageLog  ChangeLog
iab debain     debian
iab Debain     Debian
iab defualt    default
iab Defualt    Default
iab differnt   different
iab diffrent   different
iab emial      email
iab Emial      Email
iab figth      fight
iab figther    fighter
iab fro        for
iab fucntion   function
iab ahve       have
iab homepgae   homepage
iab logifle    logfile
iab lokk       look
iab lokking    looking
iab mial       mail
iab Mial       Mail
iab miantainer maintainer
iab amke       make
iab mroe       more
iab nwe        new
iab recieve    receive
iab recieved   received
iab erturn     return
iab retrun     return
iab retunr     return
iab seperate   separate
iab shoudl     should
iab soem       some
iab taht       that
iab thta       that
iab teh        the
iab tehy       they
iab truely     truly
iab waht       what
iab wiht       with
iab whic       which
iab whihc      which
iab yuo        you
iab databse    database
iab versnio    version
iab obnsolete  obsolete
iab flase      false
iab recrusive  recursive
iab Recrusive  Recursive
"}}}
" Days of week {{{
iab monday     Monday
iab tuesday    Tuesday
iab wednesday  Wednesday
iab thursday   Thursday
iab friday     Friday
iab saturday   Saturday
iab sunday     Sunday
"}}}

" have <F1> prompt for a help topic, rather than displaying the introduction
" page, and have it do this from any mode:
nnoremap <F1> :help<Space>
vmap <F1> <C-C><F1>
omap <F1> <C-C><F1>
map! <F1> <C-C><F1>

set number                    " line numbers
set undolevels=1000           " 1000 undos
set nocp


set tags+=tags;/
" configure tags - add additional tags here or comment out not-used ones
set tags=~/.tags
set tags+=~/.vim/stdtags
" " build tags of your own project with CTRL+F12
"map retag :!ctags -f ~/.tags -R --c++-kinds=+p --fields=+iaS --extra=+q ~/workspace/trunk/src<CR>
"noremap <leader>t :TlistToggle<CR>
"noremap <leader>r :TlistUpdate<CR>

map <leader>newclassimpl \+cni
map <leader>newclasstimpl \+tcni
map <leader>newclass \+cn
map <leader>newclasst \+tcn
map <leader>newfunc \if

" " OmniCppComplete
" let OmniCpp_NamespaceSearch = 1
" let OmniCpp_GlobalScopeSearch = 1
" let OmniCpp_ShowAccess = 1
" let OmniCpp_MayCompleteDot = 1
" let OmniCpp_MayCompleteArrow = 1
" let OmniCpp_MayCompleteScope = 1
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

let g:clang_library_path='/opt/rh/llvm-toolset-7/root/usr/lib64/libclang.so'

" automatically open and close the popup menu / preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif

autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set completeopt=menuone,menu,longest,preview

syntax on
set visualbell

set cinoptions=:0,>1s,p4,t0,(0,g0 " :.5s = indent case statements 1/2 shiftwidth
        " >1s = indent 1 shiftwidth
        " p0 = indent function definitions 0 spaces
        " t0 = indent function return type 0 spaces
        " (0 = indent from unclosed parantheses
" g2 = indent C++ scope resolution 2 spaces

set cinwords=if,else,while,do,for,switch,case,class,template

"set formatoptions=cqor " t=text, c=comments, q=format with "gq", o,r=autoinsert comment leader
set formatoptions=q " t=text, c=comments, q=format with "gq", o,r=autoinsert comment leader
set cindent             " indent on cinwords
set showcmd             " Show (partial) command in status line.
set autowrite           " Automatically save before commands like :next and :make
set showmatch
set textwidth=0
set tabstop=4
set expandtab
set number
set ruler
set sw=4
set ai
filetype plugin on

nmap <C-N><C-N> :set invnumber<CR>
"nmap <C-F><C-O> :Sex<CR>
nmap <Tab> :wincmd w<CR>

set indentexpr=GetTemplateIndent()
set indentkeys='0{,0},:,0#,!^F,o,O,e,>'
set bs=indent,eol,start

"nnoremap <C-W>O :call MaximizeToggle ()<CR>
"nnoremap <C-W>o :call MaximizeToggle ()<CR>

nnoremap <leader>n :vertical resize +10<CR>
nnoremap <leader>m :vertical resize -10<CR>

set complete=.,w,b,u,t,i

function! MaximizeToggle()
    if exists("s:maximize_session")
        exec "source " . s:maximize_session
        call delete(s:maximize_session)
        unlet s:maximize_session
        let &hidden=s:maximize_hidden_save
        unlet s:maximize_hidden_save
    else
        let s:maximize_hidden_save = &hidden
        let s:maximize_session = tempname()
        set hidden
        exec "mksession! " . s:maximize_session
        only
    endif
endfunction

map <leader>/ :s/^\(\s*\)/\1\/\//<CR>
map <leader>? :s/^\(\s*\)\/\//\1/<CR>

set comments=s1:/*,mb:*,ex:*/
set formatoptions=cqor
"function! UPDATE_TAGS()
"    let _f_ = expand("%:p")
"    let _cmd_ = '"ctags -a -f /dvr/tags --c++-kinds=+p --fields=+iaS --extra=+q " ' . '"' . _f_ . '"'
"    let _resp = system(_cmd_)
"    unlet _cmd_
"    unlet _f_
"    unlet _resp
"endfunction
"autocmd BufWrite *.cpp,*.h,*.c call UPDATE_TAGS()

" ==========================================================
" JJ's settings
" ==========================================================

" Turn off any kind of bell
:set vb t_vb=''

" Truncate messages
:set shortmess=tT

" Put all backup and temp files in specific directory
set backupdir=/local/jheyd/tmp/vim-backup,/tmp
set directory=/local/jheyd/tmp/vim-backup,/tmp

"Use unnamed register by default (useful since it's the clipboard)
set clipboard=unnamed

"Sets how many lines of history VIM har to remember
set history=400

"Set to auto read when a file is changed from the outside
set autoread

"Turn off the stupid more thing
set nomore

"Have the mouse enabled all the time:
set mouse=a
set mousemodel=popup
set ttymouse=xterm2
set clipboard=unnamed

set showcmd
set showmode
set showmatch
set nocompatible
set bs=2
set hlsearch

"Set 7 lines to the cursors - when moving vertical..
set so=7

"Always show current position
set ruler

" Keep context around current line visible
set scrolloff=2

"Scrolling (both in normal *and* insert mode)
"nnoremap <M-u>     <C-y>
nnoremap <C-t>     <C-e>
inoremap <C-y>     <C-x><C-y>
inoremap <C-t>     <C-x><C-e>

"do not redraw, when running macros.. lazyredraw
set lz

"backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"show matching brackets
set matchpairs+=<:> " match, to be used with %
set showmatch

" Search options

set ignorecase
set smartcase
set incsearch

" Vim Grep Settings
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn'
let Grep_Cygwin_Find = 1

" Make navigation like less
nnoremap <Space> <PageDown>
nnoremap <BS>    <PageUp>
"nnoremap f	 <PageDown>
"nnoremap b	 <PageUp>

" Reformatting
" have F reformat the current paragraph (or selected text if there is any):
"nnoremap F gqap
nnoremap F i<zqfm><esc>gqip?<zqfm><cr>df>
vnoremap F gq

" have Y behave analogously to D and C rather than to dd and cc (which is
" already done by yy):
noremap Y y$

" Remap the original 'z' to 'Z'
nnoremap Z z

" Close file
noremap z :q<cr>

"   Edit another file in the same directory as the current file
"   uses expression to extract path from current file's path
if has("unix")
    nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
else
    nnoremap <leader>e :e <C-R>=expand("%:p:h") . "\" <CR>
endif 

" Toggle line numbers on and off
"nnoremap <leader>N :set invnumber <CR>

" Keymaps to insert and append one character
nnoremap s      :exec "normal i".nr2char(getchar())."\e"<cr>

" Turn off search highlighting by hitting enter
nnoremap <silent> <CR> :noh<CR><CR>

" Fast saving
nnoremap <leader>w :w<cr>
"nnoremap <leader>f :find<cr>

" Fast reloading of the .vimrc
"nnoremap <leader>r :source ~/.vimrc<cr>
" Fast editing of .vimrc
nnoremap <leader>re :e! ~/.vimrc<cr>

" Easier macros (record with qq, playback using Q)
nnoremap Q @q

" Spelling interface
"nnoremap <leader>L :setlocal spell! spelllang=en_us<cr>
"nnoremap <leader>l ]s
"nnoremap <leader>l zg

"--------------------------------------------------------------------
" Visual Mode keymaps
"--------------------------------------------------------------------

" Remap visual mode keybindings
nnoremap v V
nnoremap V <C-v>
nnoremap <C-v> v

" Shifting visual blocks
set shiftwidth=4
vnoremap < <gv
vnoremap > >gv 

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR> 

"--------------------------------------------------------------------
" Highlight current line
"--------------------------------------------------------------------

"hi CursorLine   term=#333333 cterm=DimGrey guibg=DimGrey
"hi CursorColumn term=#333333 cterm=#333333 guibg=#f4f4f4

augroup vim7highlightCurrentLineInActiveWindow
  au WinEnter * if g:HighlightCurrentLine | setlocal cul | endif
  au WinLeave * if g:HighlightCurrentLine | setlocal nocul | endif
augroup end

function!  s:ToggleHighlightCurrentLine()
  if !exists('g:HighlightCurrentLine') || g:HighlightCurrentLine==0
    setlocal cursorline
    let g:HighlightCurrentLine=1
  else
    setlocal nocursorline
    setlocal nocursorcolumn
    let g:HighlightCurrentLine=0
  endif
endfunction

command! ToggleHighlightCurrentLine :call <sid>ToggleHighlightCurrentLine() 

" Turn it on by default
let g:HighlightCurrentLine=0
ToggleHighlightCurrentLine

nnoremap <leader>h :ToggleHighlightCurrentLine <CR>

"--------------------------------------------------------------------
" Autocommand stuff
"--------------------------------------------------------------------

function! SaveCompileLatex()
  write
  exe '!./comp'
endfunction

function! SaveMake()
  write
  "make install
  make
endfunction

function! SaveCleanMake()
  write
  make clean
  make install
endfunction

" Only do this part when compiled with support for autocommands
if has("autocmd")

  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.tex		set tw=78
  autocmd BufRead *.txt		set tw=78

  " Force correct syntax colors
  autocmd BufEnter *            call SetSyntaxColors()

  " Turn on spell checking
  autocmd BufRead *.tex		setlocal spell! spelllang=en_us
  autocmd BufRead *.txt		setlocal spell! spelllang=en_us

  " Turn on automatic paragraph formatting for text files (too slow)
  "autocmd BufRead *.tex	set formatoptions=ac1
  "autocmd BufRead *.tex	set comments=:a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,:n,:o,:p,:q,:r,:s,:t,:v,:w,:x,:y,:z
  "autocmd BufRead *.txt		set formatoptions=at1
  " Turn on automatic paragraph formatting for comments
  "autocmd BufRead *.c		set formatoptions=ac
  "autocmd BufRead *.h		set formatoptions=ac

  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost * if line("'\"") | exe "normal '\"" | endif

  "When .vimrc is edited, reload it
  autocmd! bufwritepost .vimrc source ~/.vimrc
  autocmd! bufwritepost .vimrc-myterm source ~/.vimrc-myterm

  "Turn on indentation for C files
  "filetype plugin indent on 
  "autocmd BufRead *.c  		source ~/.vim/indent/template.vim
  "autocmd BufRead *.cpp 	source ~/.vim/indent/template.vim
  "autocmd BufRead *.tpp 	source ~/.vim/indent/template.vim
  "autocmd BufRead *.h  		source ~/.vim/indent/template.vim
  "autocmd BufRead *.hpp 	source ~/.vim/indent/template.vim
  autocmd BufRead *.c  		filetype plugin indent on
  autocmd BufRead *.cpp 	filetype plugin indent on
  autocmd BufRead *.tpp 	filetype plugin indent on
  autocmd BufRead *.h  		filetype plugin indent on
  autocmd BufRead *.hpp 	filetype plugin indent on

  " Make in the directory of the current file
  "autocmd BufRead *.c  		nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.cpp 	nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.tpp 	nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.h  		nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.hpp 	nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.lex		nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.yacc 	nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.texi 	nmap <leader>m :call SaveMake()<cr>
  "autocmd BufRead *.tex 	nmap <leader>m :call SaveMake()<cr>

  "autocmd BufRead *.c  		nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.cpp 	nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.tpp 	nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.h  		nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.hpp 	nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.lex		nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.yacc 	nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.texi 	nmap <leader>M :call SaveCleanMake()<cr>
  "autocmd BufRead *.tex 	nmap <leader>M :call SaveCleanMake()<cr>
  " Latex compile keymap
  "autocmd BufRead *.tex		nmap <leader>m :call SaveCompileLatex()<cr>

  " Automatic parentheses for C (annoying)
  "autocmd BufRead *.[ch] inoremap ( ()<left>
  "autocmd BufRead *.[ch] inoremap ) <esc>t)<right>a
  "autocmd BufRead *.[ch] inoremap { {<cr>}<esc>O
  "autocmd BufRead *.[ch] inoremap } <esc>:set nohlsearch<cr>/}/e+1<C-M>O
  "autocmd BufRead *.[ch] noremap / :set hlsearch<cr>/

  " Automatic parentheses for Tex (annoying)
  "autocmd BufRead *.tex inoremap ( ()<left>
  "autocmd BufRead *.tex inoremap ) <esc>t)<right>a
  "autocmd BufRead *.tex inoremap { {}<left>
  "autocmd BufRead *.tex inoremap } <esc>t}<right>a

endif

"--------------------------------------------------------------------
" CommandT
"--------------------------------------------------------------------
let g:CommandTSelectNextMap         = [ '<C-j>' , '<Down>' ]
let g:CommandTSelectPrevMap         = [ '<C-k>' , '<Up>'   ]
let g:CommandTCancelMap             = [ '<C-c>' , '<Esc>'  ]
let g:CommandTAcceptSelectionTabMap =   '<CR>'
let g:CommandTAcceptSelectionMap    =   '<C-t>'
let g:CommandTSmartCase             = 1
"nnoremap <leader>u :CommandT /vol1/vortex/jheyd/svn/kernel/trunk<cr>
"nnoremap <leader>i :CommandT /vol1/vortex/jheyd/svn/modules/trunk<cr>
nnoremap <leader>u :CommandT /net/perseus_development/users/jheyd/svn/kernel/trunk<cr>
nnoremap <leader>i :CommandT /net/perseus_development/users/jheyd/svn/modules/trunk<cr>

"--------------------------------------------------------------------
" Tabs
"--------------------------------------------------------------------

"Open new tab with Explorer
set suffixes='.bak,~,.o,.in,.a,.exe,.h,.info,.swp,.obj'
let g:netrw_hide = 1
let g:netrw_list_hide= '^\..*,.\.o$,\.a$'
"let g:netrw_list_hide= '.\.o$,\.a$'
nnoremap <leader>o :tabnew<cr>:Explore<cr>
"nnoremap <leader>u :tabnew<cr>:Explore /vol1/vortex/jheyd/svn/kernel/3.15.0/src<cr>
"nnoremap <leader>i :tabnew<cr>:Explore /vol1/vortex/jheyd/svn/modules/trunk<cr>

"Tab hotkeys
"nnoremap <leader>ta :tab ball<cr>
"nnoremap <leader>tn :tabnew %<cr>
"nnoremap <leader>tc :tabclose<cr>
"nnoremap <leader>tm :tabmove 
nnoremap <S-left>  :tabp<cr>
nnoremap <S-right> :tabn<cr>
nnoremap <M-j>     :tabp<cr>
nnoremap <M-k>     :tabn<cr>
nnoremap <C-j>     :tabp<cr>
nnoremap <C-k>     :tabn<cr>
nnoremap <leader>j :tabp<cr>
nnoremap <leader>k :tabn<cr>

"--------------------------------------------------------------------
" Print setup
"--------------------------------------------------------------------

function! PrintFile(fname)
  call system("lpr -Pdufy" . a:fname) 
  call delete(a:fname)
  return v:shell_error
endfunc

set printoptions=paper:letter,duplex:on,left:5
set printfont=:h9
set printexpr=PrintFile(v:fname_in)

"--------------------------------------------------------------------
" Text folding
"--------------------------------------------------------------------

" Folding in C code
" Toggle fold state between closed and opened.
"
" If there is no fold at current line, just moves forward.
" If it is present, reverse it's state.
fun! ToggleFold()
if foldlevel('.') == 0
  "normal! 1
  " Don't do anything...
else
  if foldclosed('.') < 0
    . foldclose
  else
    . foldopen
  endif
endif
" Clear status line
echo
endfun

function! JJ_C_fold()
"   syn region Comment start="/\*" end="\*/" fold
"   syn region myFold start="{" end="}" transparent fold
"   syn sync fromstart
    set foldmethod=indent
    set foldlevel=99
    " Map this function to Enter key.
    nnoremap <cr> :call ToggleFold()<CR>
endfunction

function! JJ_TXT_fold()
    set foldmethod=expr
    set foldexpr=getline(v:lnum-1)=~'^\\s*$'&&getline(v:lnum)=~'\\S'?'>1':1
    set foldlevel=99
    " Map this function to Enter key.
    nnoremap <cr> :call ToggleFold()<CR>
endfunction

fun! TexFoldContextWithDepth(line)
    if a:line =~ '\\part\>'			| return 1
    elseif a:line =~ '\\chapter\>'		| return 2
    elseif a:line =~ '\\section\>'		| return 3
    elseif a:line =~ '\\subsection\>'		| return 4
    elseif a:line =~ '\\subsubsection\>'	| return 5
    elseif a:line =~ '\\paragraph\>'		| return 6
    elseif a:line =~ '\\subparagraph\>'		| return 7
    else					| return 0
    endif
endfun

fun! TexFoldContextFlat(line)
    if a:line =~ '\\\(part\|chapter\|\(sub\)\+section\|\(sub\)\=paragraph\)\>'
	return 1
    else
	return 0
    endif
endfun

fun! TexFold(lnum)
    " remove comments
    let line = substitute(getline(a:lnum), '\(^%\|\s*[^\\]%\).*$', '', 'g')
    " let level = TexFoldContextFlat(line)
      let level = TexFoldContextWithDepth(line)
    if level
	exe 'return ">'.level.'"'
    elseif line =~ '.*\\begin\>.*'
	return 'a1'
    elseif line =~ '.*\\end\>.*'
	return 's1'
    else
	return '='
    endif
endfun

function! JJ_TeX_fold()
    set foldmethod=expr
    set foldexpr=TexFold(v:lnum)
    set foldlevel=2
    " Map this function to Enter key.
    nnoremap <cr> :call ToggleFold()<CR>
endfunction

" Autocommands to enable folding

"au  BufEnter  *.c        :call JJ_C_fold() 
"au  BufEnter  *.cpp      :call JJ_C_fold() 
"au  BufEnter  *.h        :call JJ_C_fold() 
"au  BufEnter  *.hpp      :call JJ_C_fold() 
"au  BufEnter  *.txt      :call JJ_TXT_fold() 
"au  BufEnter  *.tex      :call JJ_TeX_fold() 

" Map to turn on folding
function! JJ_start_folding()
  " Hack for TeX at the moment...
  call JJ_TeX_fold()
endfunction

nnoremap <leader>f :call JJ_start_folding()<cr>

" General fold/unfold
nnoremap + za

"--------------------------------------------------------------------
" Syntax highlighting and term colors
"--------------------------------------------------------------------

":set guifont=-*-lucidatypewriter-medium-*-*-*-*-*-100-100-*-*-*-*
set guifont=Liberation\ Mono\ 10
"set guifont=Consolas:h14.50

if has("terminfo")
  set t_Co=16
  set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

function! SetSyntaxColors()
  syntax on
  hi Conditional ctermfg=DarkBlue guifg=DarkBlue
  hi Operator    ctermfg=DarkBlue guifg=DarkBlue
  hi Repeat      ctermfg=DarkBlue guifg=DarkBlue
  hi Statement   ctermfg=DarkBlue guifg=DarkBlue
  hi Comment     ctermfg=DarkGreen guifg=DarkGreen
  hi Identifier  ctermfg=DarkBlue guifg=DarkBlue
  hi Type        ctermfg=DarkBlue guifg=DarkBlue
  hi String      ctermfg=DarkRed  guifg=DarkRed
  hi Include     ctermfg=DarkRed  guifg=DarkRed
  hi PreProc     ctermfg=DarkRed  guifg=DarkRed
  hi Constant    ctermfg=DarkRed  guifg=DarkRed
endfunction

set novisualbell

" Generic completion in insert mode
function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-P>"
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

" Colors for completion window
hi  Pmenu       ctermfg=0 ctermbg=lightgreen gui=NONE guifg=Black guibg=lightgreen
hi  PmenuSel    ctermfg=0 ctermbg=lightblue  gui=NONE guifg=Black guibg=lightblue
hi  PmenuSbar   ctermfg=0 ctermbg=lightgreen gui=NONE guifg=Black guibg=lightgreen
hi  PmenuThumb  ctermfg=0 ctermbg=lightblue  gui=NONE guifg=Black guibg=lightblue

" Quickfix stuff
"noremap <leader>c :cn<cr>
"noremap <leader>v :copen<cr>

" Pathogen is a vim plugin manager
"execute pathogen#infect()

