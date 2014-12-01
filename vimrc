" Mine vim config

" Vundle
  " Setting up Vundle - the vim plugin bundler
  let iCanHazVundle=1
  let vundle_readme=expand("~/.vim/bundle/vundle/README.md")
  if !filereadable(vundle_readme)
  "if !isdirectory("~/.vim/bundle/vundle")
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
  endif
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  Bundle 'gmarik/vundle'
  " Setting up Vundle - the vim plugin bundler end

  " Bundles
    " General Vim
      Bundle 'scrooloose/nerdtree'
      Bundle 'scrooloose/nerdcommenter'
      Bundle 'jeetsukumaran/vim-buffergator'
      Bundle 'rking/ag.vim'
      Bundle 'tpope/vim-fugitive'
      Bundle 'kien/ctrlp.vim'
      Bundle 'loremipsum'
      Bundle 'majutsushi/tagbar'
      Bundle 'taglist.vim'
      "Bundle 'mutewinter/vim-indent-guides'
      Bundle 'rosenfeld/conque-term'
      "Bundle 'scrooloose/syntastic'
      Bundle 'sjl/clam.vim'
      Bundle 'peterhoeg/vim-tmux'
      Bundle 'benmills/vimux'
      Bundle 'Lokaltog/vim-powerline'
      Bundle 'Lokaltog/vim-easymotion'
      Bundle 'mattn/gist-vim'
      Bundle 'mattn/webapi-vim'
      Bundle 'SearchComplete'
      " Bundle 'TaskList.vim'
      Bundle 'mru.vim'
      Bundle 'tpope/vim-unimpaired'
      "Bundle 'ervandew/supertab'
      Bundle 'bronson/vim-trailing-whitespace'
      Bundle 'skammer/vim-css-color', {'rtp': 'after/syntax/'}
    " General Vim end

    " Color Schemes
        Bundle 'altercation/vim-colors-solarized'
        " Bundle 'cschlueter/vim-ir_black'
        " Bundle 'Zenburn'
        Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
        Bundle 'flazz/vim-colorschemes'
        " Bundle 'werks.vim'
    " Color Schemes end

    " Web (generic)
      Bundle 'mattn/emmet-vim'
      Bundle 'HTML-AutoCloseTag'
      Bundle 'juvenn/mustache.vim'
      " Bundle 'groenewege/vim-less'
      " Bundle 'Rykka/colorv.vim'
      Bundle 'gregsexton/MatchTag'
      Bundle 'wavded/vim-stylus'
      Bundle 'JavaScript-Indent'
      Bundle 'tangledhelix/vim-octopress'
    " Web (generic) end

    " Javascript / node / coffeescript
      Bundle 'pangloss/vim-javascript'
      Bundle 'itspriddle/vim-jquery'
      Bundle 'digitaltoad/vim-jade'
      Bundle 'leshill/vim-json'
      Bundle 'kchmck/vim-coffee-script'
      Bundle 'walm/jshint.vim'
      Bundle 'mmalecki/vim-node.js'
      Bundle 'lambdalisue/nodeunit.vim'
      Bundle 'heartsentwined/vim-emblem'
    " Javascript / node /coffeescript end

    " Ruby
      Bundle 'vim-ruby/vim-ruby'
      Bundle 'tpope/vim-haml'
      Bundle 'tpope/vim-rails'
      Bundle 'tpope/vim-rake'
      Bundle 'tpope/vim-endwise'
      Bundle 'skalnik/vim-vroom'
      Bundle 'edsono/vim-matchit'
      Bundle 'kana/vim-textobj-user'
      Bundle 'nelstrom/vim-textobj-rubyblock'
    " Ruby end

    " Puppet
      Bundle 'rodjek/vim-puppet'
    " Puppet end

    " Misc
      Bundle 'vim-scripts/nginx.vim'
      Bundle 'uguu-org/vim-matrix-screensaver'
    " Misc end


    " Unused (for now)
      "Bundle 'bash-support.vim'
      "Bundle 'SuperTab'
      "Bundle 'dickeytk/status.vim'
      "Bundle 'snipMate'
      "Bundle 'kana/vim-smartinput'
      "Bundle 'sjl/gundo.vim'
      "Bundle 'int3/vim-taglist-plus'
      "Bundle 'reinh/vim-makegreen'
      "Bundle 'flomotlik/vim-livereload'
    " Unused (for now) end
  " Bundles end

  if iCanHazVundle == 0
      echo "Installing Bundles, please ignore key map error messages"
      echo ""
  :BundleInstall
  endif
" Vundle end

"Set Vim defaults
  set nocompatible               " be iMproved
  set history=256                " Number of things to remember in history.
  set notimeout
  set ttimeout
  set timeoutlen=50              " Time to wait after ESC (default causes an annoying delay)
  set clipboard+=unnamed         " Yanks go on clipboard instead.
  set modeline
  set modelines=5                " default numbers of lines to read for
  set autowrite                  " Writes on make/shell commands
  set autoread
  set directory=/tmp/           " prepend(^=) $HOME/.tmp/ to default path;
  " use full path as backup filename(//)
  set hidden                     " The current buffer can be put to the background without writing to disk
  set hlsearch                   " highlight search
  set incsearch                  " show matches while typing
  let g:is_posix = 1             " vim's default is archaic bourne shell,
  set tabstop=2                  " tab size eql 2 spaces
  set softtabstop=2
  set sts=2
  set sw=2
  set expandtab
  " set tw=120
  " set winwidth=120 nice idea, but a bit annoying on small terminalz
  " set winminwidth=120
  set autoindent
  set backupdir=~/.vim/backup " where to put backup files
  set clipboard+=unnamed " share windows clipboard
  set directory=~/.vim/tmp " directory to place swap files in
  set mouse=a "enable mouse in GUI mode
  set mousehide                 " Hide mouse after chars typed
  set showmatch                 " Show matching brackets.
  set novisualbell              " No blinking
  set noerrorbells              " No noise.
  " set cc=121 " Right column
  set encoding=utf8
  set ai "Auto indent
  set si "Smart indet
  set wrap "Wrap lines
  set number                    " Line numers
  set nobackup
  set noswapfile
  set shortmess=at              " Hide enter to continue for external apps - GIT
  set colorcolumn=80            " Highligth column 80

  " Set ignore list
  set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem          " Disable output and VCS files
  set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz                      " Disable archive files
  set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/* " Ignore bundler and sass cache
  set wildignore+=*.swp,*~,._*i,.DS_Store                                      " Disable temp and backup files
  set wildignore+=*.png,*.gif,*.jpg,*.jpeg                                     " Ignore non-text files
  set wildignore+=*/public/assets/*                                            " Ignore precompiled assets


  " Open new split panes to right and bottom, which feels more natural
  set splitbelow
  set splitright

  try
    lang en_US
  catch
  endtry
  "set exrc     " enable per-directory .vimrc files
  "set secure         " disable unsafe commands in local .vimrc files

  "http://vim.wikia.com/wiki/Create_underlines,_overlines,_and_strikethroughs_using_combining_characters
  " modify selected text using combining diacritics
  command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
  command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
  command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
  command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

  function! s:CombineSelection(line1, line2, cp)
    execute 'let char = "\u'.a:cp.'"'
    execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
  endfunction
" Vim defaults end

" Keymaps
  map <silent> <Leader>n :silent NERDTreeToggle <CR>
  map <silent> <Leader>b :silent BuggergatorToggle <CR>
  "map <Leader>] <Plug>MakeGreen " change from <Leader>t to <Leader>]
  "map <silent> <F8> :call MakeGreen() <RETURN>
  "Oy vei, trying without arrows
  "nnoremap <up> <nop>
  "nnoremap <down> <nop>
  "nnoremap <left> <nop>
  "nnoremap <right> <nop>
  "inoremap <up> <nop>
  "inoremap <down> <nop>
  "inoremap <left> <nop>
  "inoremap <right> <nop>
  map <F1> <Esc>
  imap <F1> <Esc>
  nmap <F8> :TagbarToggle<CR>
  nmap <F12> :RopeGotoDefinition<CR>

  " Maps to make handling windows a bit easier
  noremap <silent> ,h :wincmd h<CR>
  noremap <silent> ,j :wincmd j<CR>
  noremap <silent> ,k :wincmd k<CR>
  noremap <silent> ,l :wincmd l<CR>

  " Fugitive
  map <silent> <Leader>gb :Gblame<CR>
  map <silent> <Leader>gs :Gstatus<CR>
  map <silent> <Leader>gd :Gdiff<CR>
  map <silent> <Leader>gl :Glog<CR>
  map <silent> <Leader>gc :Gcommit<CR>
  map <silent> <Leader>gp :Git push<CR>

  " Resize windows quickly
  " reset with -=
  nmap <leader>l :vertical res +60<cr>
  nmap <leader>h :vertical res -60<cr>
  nmap <leader>j :res +30<cr>
  nmap <leader>k :res -30<cr>

" Keymaps end

" Abbreviations
  ab bp require 'pry'; binding.pry;

" Filetype overrides

  " Ruby
    au BufRead,BufNewFile *.rb set filetype=ruby
    au BufRead,BufNewFile *.ruby set filetype=ruby
  " Ruby end

  " Javascript / Coffeescript / Node
    au BufNewFile,BufRead *.less set filetype=less
    au BufNewFile,BufRead *.coffee set filetype=coffee
    au! BufRead,BufNewFile *.json set filetype=json
    au BufRead,BufNewFile *.ejs set filetype=html
    au BufRead,BufNewFile *.eco set filetype=html
    au BufNewFile,BufRead *.coffee set shiftwidth=2
    au FileType javascript set shiftwidth=2
    au BufNewFile,BufRead *.coffee set tabstop=2
    au FileType javascript set tabstop=2
    au BufNewFile,BufRead *.coffee set softtabstop=2
    au FileType javascript set softtabstop=2
    "au BufNewFile,BufRead *.coffee compiler nodeunit
    "au BufNewFile,BufRead *.coffee compiler coffee
    "autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow
    "au FileType javascript compiler nodeunit
  " Javascript / Coffeescript / Node end

  " Web
    au BufNewFile,BufRead *.styl set filetype=stylus
    au BufNewFile,BufRead *.stylus set filetype=stylus
    au! BufWinEnter *.scss call colorv#preview("S")
    au! bufwritepost *.scss call colorv#preview("S")
    au! BufWinEnter *.styl call colorv#preview("S")
    au! bufwritepost *.styl call colorv#preview("S")
    autocmd BufNewFile,BufRead *.markdown setfiletype octopress
  " Web end

  " Misc
    au BufNewFile,BufRead *tmux.conf set filetype=tmux
  " Misc end
" Filetype overrides end


" Vim Plugin Configs
  set background=dark
  set t_Co=256
  colorscheme Tomorrow-Night
  let g:solarized_termcolors=256
  "let g:solarized_termcolors=16
  call togglebg#map("<F5>")
  let g:solarized_termtrans=1
  if has ('gui_running')
    if has('mac')
      set gfn=Monaco:h13
    else
      set guifont=Monaco\ For\ Powerline\ 13
    endif
      set guioptions+=LlRrbmT
      set guioptions-=LlRrbmT
      "set background=light
  "else
  "    colorscheme ir_black
  "    set background=light
  endif
  if has('statusline')
    set laststatus=2
    " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
    set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
  endif
  let g:user_zen_expandabbr_key='<C-e>'
  syntax on                      " enable syntax
  filetype plugin indent on " load filetype plugins/indent settings
  let NERDTreeShowHidden=1
  let NERDTreeMouseMode       =   3
  "let g:ConqueTerm_TERM = 'xterm-color256'
  let g:ConqueTerm_ReadUnfocused = 1
  let g:ConqueTerm_InsertOnEnter = 1
  let g:syntastic_check_on_open=0
  "let g:syntastic_auto_loc_list=1
  "let g:ropevim_guess_project=1
  let g:Powerline_symbols = 'fancy'

" Vim Plugin Configs end

" Custom functions FTW
  let g:ctags_path = "/usr/local/bin/ctags"
  " Load tags from more places
  set tags+=gems.tags

  function GenCTags(target, sources)
    execute ':! ' . g:ctags_path . ' -R -a -f ' . a:target . ' ' . a:sources
  endfunction

  command Ct     call GenCTags('tags', '.')
  command Ctgems call GenCTags('gems.tags', '`bundle show --paths`')
" Custom functions FTW end
