" q - block with fprintf
let @q="o{\<CR>}\<Esc>kofprintf(stderr, \"\\n\");\<CR>exit(1);\<Esc>kf\\i"

" a - if check with fprintf block | error if return value != 0
let @a="^yt;iif (\<Esc>A\<BS> != 0)\<Esc>o{\<CR>}\<Esc>kofprintf(stderr, \"\\n\");\<CR>exit(1);\<Esc>kf\\ierror: \<Esc>p\<Esc>"

" w - block with perror
let @w="o{J\<BS>\<CR>perror(\"\");\<CR>exit(1);\<CR>}\<Esc>kkf\"a\\n\<Esc>hi"

" s - if check with perror block | error if return value != 0
let @s="^yt;iif (\<Esc>A\<BS> != 0)\<Esc>@werror: \<Esc>p\<Esc>"

" x - if check with perror block | error if return value == -1
let @x="@skk$hciw-1\<Esc>F!r="
