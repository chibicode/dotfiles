augroup vimrcEx
  au!

  " Automatically create parent directory on save if directory doesn't exist
  au BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif

  " Move to the last edited location
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

  " Fugitive - remove when done
  au BufReadPost fugitive://* set bufhidden=delete

  au WinEnter    * checktime
  au CursorHold  * checktime
  au InsertEnter * checktime
  au CmdwinEnter * let b:ei_save = &eventignore
                   \ | set eventignore=CursorHold,InsertEnter
  au CmdwinLeave * let &eventignore = b:ei_save

  " wrap lines in quickfix buffer, so that error messages won't get lost on
  " off-screen
  autocmd BufEnter    * if &buftype == 'quickfix' | setlocal wrap | endif
  autocmd BufWinEnter * if &buftype == 'quickfix' | setlocal wrap | endif

  au BufWinEnter,BufRead,BufNewFile Gemfile set ft=ruby
  au BufWinEnter,BufRead,BufNewFile Rakefile set ft=ruby
  au BufWinEnter,BufRead,BufNewFile Guardfile set ft=ruby
  au BufWinEnter,BufRead,BufNewFile Thorfile set ft=ruby
  au BufWinEnter,BufRead,BufNewFile Gruntfile set ft=javascript
  au BufWinEnter,BufRead,BufNewFile *.fdoc set ft=yaml
  au BufWinEnter,BufRead,BufNewFile *.md set ft=markdown
  au BufWinEnter,BufRead,BufNewFile *.slim set ft=slim

  au FileType * autocmd BufWritePre <buffer> StripWhitespace

  au FileType slim set commentstring=/\ %s
  au FileType slim set omnifunc=rubycomplete#Complete
  au FileType python set sw=4 sts=4 et
  au FileType css setlocal iskeyword+=-

  if did_filetype()
    finish
  endif
  if getline(1) =~# '^#!.*/bin/env\s\+node\>'
    setfiletype javascript
  endif
  if getline(1) =~# '^#!.*/bin/env\s\+ruby\>'
    setfiletype ruby
  endif
augroup END
