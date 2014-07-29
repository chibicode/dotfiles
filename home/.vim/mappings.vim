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
nnoremap x "_x
nnoremap s :w<cr>
nnoremap S :sp<cr>
noremap Q :q<cr>
nnoremap C :call ToggleQuickfix()<cr>

noremap gv `[v`]
vnoremap < <gv
vnoremap > >gv

cnoremap %% <C-R>=expand('%:h').'/'<cr>

vnoremap <c-j> :join<cr>
vnoremap <c-y> "+y
noremap <c-p> "+p
set pastetoggle=<F10>
inoremap <c-p> <F10><C-r>+<F10>
inoremap <c-h> <bs>
inoremap <c-l> =>

cnoremap <c-p> <c-r>+
cnoremap <c-v> <c-r>"
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

nnoremap <space> :NERDTreeToggle<cr>
nnoremap <leader><space> :call RunLastSpec()<CR>
nnoremap <leader>. :NERDTreeFind<cr>
nnoremap <leader>a :CtrlP ./app/<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>c <nop>
nnoremap <leader>d <nop>
nnoremap <leader>e :CtrlP .<cr>
nnoremap <leader>f :CtrlPTag<CR>
nnoremap <leader>F :silent !ctags -R ./app ./lib ./spec<cr>
nnoremap <leader>g <nop>
nnoremap <leader>h <nop>
nnoremap <leader>i <nop>
nnoremap <leader>j <nop>
nnoremap <leader>k <nop>
nnoremap <leader>l :CtrlP ./lib/<cr>
nnoremap <leader>m :MaximizerToggle<CR>
nnoremap <leader>n :call RenameFile()<cr>
nnoremap <leader>o <nop>
nnoremap <leader>p <nop>
nnoremap <leader>q :qall!
nnoremap <leader>r :call RunCurrentSpecFile()<CR>
nnoremap <leader>s :CtrlP ./spec/<CR>
nnoremap <leader>t :call RunNearestSpec()<CR>
nnoremap <leader>u <nop>
nnoremap <leader>v <nop>
nnoremap <leader>w <nop>
nnoremap <leader>x <nop>
nnoremap <leader>y <nop>
nnoremap <leader>z <nop>
nnoremap <leader><leader>s :Ag <Space>-G="*"<S-Left><Left>
nnoremap <leader><leader>c :Ag <Space>-G="*.(css\|scss)" app<S-Left><S-Left><Left>
nnoremap <leader><leader>j :Ag <Space>-G="*.(js\|coffee)" app<S-Left><S-Left><Left>
nnoremap <leader><leader>r :Ag <Space>-G="*.(rb\|rake)"<S-Left><Left>
nnoremap <leader><leader>t :Ag <Space>-G="*_spec.rb" spec<S-Left><S-Left><Left>
nnoremap <leader><leader>v :Ag <Space>-G="*.(erb\|slim)" app<S-Left><S-Left><Left>
