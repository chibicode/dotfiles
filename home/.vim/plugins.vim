hi link ExtraWhitespace Error

hi link EasyMotionTarget IncSearch
hi link EasyMotionShade  Comment

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ctrlp_lazy_update = 10
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer = 'e'
" NOTE: If %s is not a directory that already exists, it'll fail, so I can't
" do something like split %s and pass it to xargs.
let g:ctrlp_user_command = "/usr/local/bin/ag %s -l --nocolor -g ''"
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'
let g:ctrlp_map = ''
let g:ctrlp_prompt_mappings = {
\ 'ToggleType(1)':        [''],
\ 'ToggleType(-1)':       [''],
\ 'PrtExit()':            ['<esc>', '<c-c>'],
\ 'AcceptSelection("h")': ['<H>'],
\ 'AcceptSelection("v")': ['<V>'],
\ 'PrtBS()':              ['<c-h>', '<bs>'],
\ 'PrtCurLeft()':         ['<c-b>'],
\ 'PrtCurRight()':        ['<c-f>'],
\ 'PrtClearCache()':      [','],
\ 'PrtExpandDir()':       [''],
\ 'PrtInsert("c")':       ['<c-p>'],
\ }

let g:NERDTreeChDirMode=2
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1

let g:ycm_key_detailed_diagnostics = ''
let g:ycm_key_invoke_completion = ''
let g:ycm_complete_in_strings=0

vmap s S
" Key: "-"
let g:surround_45 = "<% \r %>"
" Key: "="
let g:surround_61 = "<%= \r %>"
" Key: "``"
let g:surround_33 = "```\r```"

let g:rspec_command = "Dispatch bin/rspec {spec}"
let g:rspec_runner = "os_x_iterm"

let g:agprg="/usr/local/bin/ag --nogroup --column"
let g:multi_cursor_use_default_mapping=0

let g:EasyMotion_do_mapping = 0 "Disable default mappings
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_keys = ';HKLYUIOPNM,QWERTASDGZXCVBJF'

let g:windowswap_map_keys = 0 "prevent default bindings

" Note - tags are created in under .git directory
let g:vim_tags_use_vim_dispatch = 1
let g:vim_tags_ctags_binary="/usr/local/bin/ctags"

let g:rubycomplete_rails=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_include_object=1
let g:rubycomplete_include_objectspace=1

let g:vroom_use_vimux=1
let g:vroom_use_bundle_exec=0
let g:vroom_write_all=1
let g:vroom_map_keys=0
let g:vroom_use_colors=1
let g:vroom_spec_command="rspec --no-profile"
