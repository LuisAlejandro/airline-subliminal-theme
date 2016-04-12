
" Color palette
let s:t_c1_bg    = 237  " Background for branch and file format blocks
let s:t_c1_fg    = 144  " Foreground for branch and file format blocks
let s:g_c1_bg      = '#5F5F5F'
let s:g_c1_fg      = '#AFAF87'

let s:t_c2_bg   = 234  " Background for middle block
let s:t_c2_fg   = 39   " Foreground for middle block
let s:g_c2_bg     = '#1C1C1C'
let s:g_c2_fg     = '#F5F5F5'

let s:t_n_bg    = 27   " Background for normal mode and file position blocks
let s:t_n_fg    = 15   " Foreground for normal mode and file position blocks
let s:g_n_bg    = '#5F87FF'
let s:g_n_fg    = '#FFFFFF'

let s:t_i_bg  = 70   " Background for insert mode and file position blocks
let s:t_i_fg  = 15   " Foreground for insert mode and file position blocks
let s:g_i_bg    = '#87AF5F'
let s:g_i_fg    = '#FFFFFF'

let s:t_v_bg  = 166  " Background for visual mode and file position blocks
let s:t_v_fg  = 15   " Foreground for visual mode and file position blocks
let s:g_v_bg    = '#ff8c00'
let s:g_v_fg    = '#FFFFFF'

let s:t_r_bg = 88   " Background for replace mode and file position blocks
let s:t_r_fg = 15   " Foreground for replace mode and file position blocks
let s:g_r_bg   = '#870000'
let s:g_r_fg   = '#FFFFFF'

let s:t_a     = 88   " Modified file alert color
let s:g_a       = '#870000'

let s:t_x_bg = 234 " Background for inactive mode
let s:t_x_fg = 239 " Foreground for inactive mode
let s:g_x_bg   = '#1C1C1C'
let s:g_x_fg   = '#4E4E4E'

" Branch and file format

" Normal mode
let s:N1 = [s:g_n_fg, s:g_n_bg, s:t_n_fg, s:t_n_bg] " Outside blocks in normal mode
let s:N2 = [s:g_c1_fg, s:g_c1_bg, s:t_c1_fg, s:t_c1_bg] " Branch and file format block    s
let s:N3 = [s:g_c2_fg, s:g_c2_bg, s:t_n_bg, s:t_c2_bg]     " Middle block

" Insert mode
let s:I1 = [s:g_i_fg, s:g_i_bg, s:t_i_fg, s:t_i_bg] " Outside blocks in insert mode
let s:I2 = [s:g_c1_fg, s:g_c1_bg, s:t_c1_fg, s:t_c1_bg] " Branch and file format block    s
let s:I3 = [s:g_i_bg, s:g_c2_bg, s:t_i_bg, s:t_c2_bg]   " Middle block

" Replace mode
let s:R1 = [s:g_r_fg, s:g_r_bg, s:t_r_fg, s:t_r_bg]  " Outside blocks in replace mode
let s:R2 = [s:g_c1_fg, s:g_c1_bg, s:t_c1_fg, s:t_c1_bg] " Branch and file format block    s
let s:R3 = [s:g_c1_fg, s:g_c2_bg, s:t_c1_fg, s:t_c2_bg]            " Middle block

" Visual mode
let s:V1 = [s:g_v_fg, s:g_v_bg, s:t_v_fg, s:t_v_bg] " Outside blocks in visual mode
let s:V2 = [s:g_c1_fg, s:g_c1_bg, s:t_c1_fg, s:t_c1_bg] " Branch and file format block    s
let s:V3 = [s:g_v_bg, s:g_c2_bg, s:t_v_bg, s:t_c2_bg]   " Middle block

" Inactive mode
let s:X1 = [s:g_x_fg, s:g_x_bg, s:t_x_fg, s:t_x_bg, '']
let s:X2 = [s:g_x_fg, s:g_x_bg, s:t_x_fg, s:t_x_bg, '']
let s:X3 = [s:g_x_fg, s:g_x_bg, s:t_x_fg, s:t_x_bg, '']

" Alert
let s:A = [s:g_a, s:g_c2_bg, s:t_a, s:t_c2_bg, '']

let g:airline#themes#subliminal#palette = {}
let g:airline#themes#subliminal#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#subliminal#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#subliminal#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#subliminal#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#subliminal#palette.inactive = airline#themes#generate_color_map(s:X1, s:X2, s:X3)

let g:airline#themes#subliminal#palette.normal_modified = {'airline_c': s:A}
let g:airline#themes#subliminal#palette.insert_modified = {'airline_c': s:A}
let g:airline#themes#subliminal#palette.replace_modified = {'airline_c': s:A}
let g:airline#themes#subliminal#palette.visual_modified = {'airline_c': s:A}
let g:airline#themes#subliminal#palette.inactive_modified = {'airline_c': s:A}


" CtrlP plugin colors
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let g:airline#themes#subliminal#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [s:g_n_fg, s:g_n_bg, s:t_n_fg, s:t_n_bg, ''],
      \ [s:g_c1_fg, s:g_c1_bg, s:t_c1_fg, s:t_c1_bg, ''],
      \ [s:g_c2_fg, s:g_c2_bg, s:t_c2_fg, s:t_c2_bg, 'bold'])
