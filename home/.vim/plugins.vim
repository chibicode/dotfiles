hi link ExtraWhitespace Error

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_switch_buffer = 'e'
" NOTE: If %s is not a directory that already exists, it'll fail, so I can't
" do something like split %s and pass it to xargs.
let g:ctrlp_user_command = "/usr/local/bin/ag %s -l --nocolor -g ''"
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:40,results:40'
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

let g:rspec_command = "Dispatch rspec {spec}"
let g:rspec_runner = "os_x_iterm"

let g:agprg="/usr/local/bin/ag --nogroup --column"
