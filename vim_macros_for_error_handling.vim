" q - block with fprintf
let @q='o{ }kofprintf(stderr, "\n"); exit(1);kf\i'

" a - if check with fprintf block | error if return value != 0
let @a='^yt;iif (A != 0)@qerror: p:w '

" w - block with perror
let @w='o{J perror(""); exit(1); }kkf"a\nhi'

" s - if check with perror block | error if return value != 0
let @s='^yt;iif (A != 0)@werror: p:w '

" x - if check with perror block | error if return value == -1
let @x='@skk$hciw-1F!r='
