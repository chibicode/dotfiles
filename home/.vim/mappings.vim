vnoremap <c-@> <esc>
inoremap <c-@> <esc>
nnoremap <c-@> :noh<cr>
vnoremap <c-space> <esc>
inoremap <c-space> <esc>
nnoremap <c-space> :noh<cr>

noremap : ;
noremap ; :
noremap 0 g^
noremap ^ g0
noremap $ g$
noremap j gj
noremap k gk
noremap J 3j
noremap K 3k
nnoremap s :w<cr>
nmap m <Plug>(easymotion-s2)
xmap m <Plug>(easymotion-s2)
omap m <Plug>(easymotion-s2)
nnoremap S :sp<cr>
nnoremap R :checktime<cr>
nnoremap Q :q<cr>
nnoremap C :call ToggleQuickfix()<cr>

noremap gv `[v`]
vnoremap < <gv
vnoremap > >gv

cnoremap %% <C-R>=expand('%:h').'/'<cr>

vnoremap <c-j> :join<cr>
inoremap <c-h> <bs>
inoremap <c-l> =>

" v = paste from clipboard, p = from yank.
set pastetoggle=<F10>
inoremap <c-v> <F10><C-r>+<F10>
inoremap <c-p> <c-r>"
cnoremap <c-v> <c-r>"
cnoremap <c-p> <c-r>+

cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-b> <Left>
cnoremap <c-f> <Right>
cnoremap <c-j> <t_kd>
cnoremap <c-k> <t_ku>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
let g:user_emmet_leader_key='<c-e>'
let g:multi_cursor_next_key='<c-n>'
let g:multi_cursor_prev_key='<c-p>'
let g:multi_cursor_skip_key='<c-x>'
let g:multi_cursor_quit_key='<c-@>'

nnoremap <tab>l :bn<cr>
nnoremap <tab>h :bp<cr>
nnoremap <tab>q :bp <BAR> bd #<CR>
nnoremap <tab>d :1,1000bd<cr>
nnoremap <tab><cr> :res +5<cr>

nnoremap <space> :NERDTreeToggle<cr>
nnoremap <leader>. :NERDTreeFind<cr>
nnoremap <leader><space> :MaximizerToggle<CR>

nnoremap <leader>a :silent !atom %<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>c :VimuxCloseRunner<cr>
nnoremap <leader>C :VimuxInspectRunner<cr>
nnoremap <leader>d <nop>
nnoremap <leader>e :CtrlP .<cr>
nnoremap <leader>E :CtrlPMRU<cr>
nnoremap <leader>f <nop>
nnoremap <leader>g <nop>
nnoremap <leader>h <nop>
nnoremap <leader>i <nop>
nnoremap <leader>j <nop>
nnoremap <leader>k <nop>
nnoremap <leader>l <nop>
nnoremap <leader>m :silent !open -a Marked.app %<cr>
nnoremap <leader>n <nop>
nnoremap <leader>o <nop>
noremap  <leader>p <nop>
nnoremap <leader>q :qall!
nnoremap <leader>r :VroomRunTestFile<cr>
nnoremap <leader>R :VroomRunNearestTest<cr>
nnoremap <leader>s :Scratch<cr>
nnoremap <leader>S <c-w>t:q<cr><c-w>p
nnoremap <leader>t :tjump<space>
nnoremap <leader>T :TagsGenerate
nnoremap <leader>u <nop>
noremap <leader>v "+p
noremap <leader>V "+P
nnoremap <leader>w :call WindowSwap#EasyWindowSwap()<CR>
nnoremap <leader>x <nop>
vnoremap <leader>y "+y
nnoremap <leader>z <nop>

nnoremap <leader><leader>c :Ag <Space>-G="*.(css\|scss)"<S-Left><Left>
nnoremap <leader><leader>e :Ag <Space>-G="*"<S-Left><Left>
nnoremap <leader><leader>h :Ag <Space>-G="*.(erb\|slim\|html)"<S-Left><Left>
nnoremap <leader><leader>j :Ag <Space>-G="*.(js\|coffee)"<S-Left><Left>
nnoremap <leader><leader>r :Ag <Space>-G="*.(rb\|rake)"<S-Left><Left>

vnoremap <leader><leader>c y:Ag <c-r>" -G="*.(css\|scss)"<S-Left><Left><cr>
vnoremap <leader><leader>e y:Ag <c-r>" -G="*"<S-Left><Left><cr>
vnoremap <leader><leader>h y:Ag <c-r>" -G="*.(erb\|slim\|html)"<S-Left><Left><cr>
vnoremap <leader><leader>j y:Ag <c-r>" -G="*.(js\|coffee)"<S-Left><Left><cr>
vnoremap <leader><leader>r y:Ag <c-r>" -G="*.(rb\|rake)"<S-Left><Left><cr>
