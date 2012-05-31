if exists('g:loaded_textobj_cell')
  finish
endif

call textobj#user#plugin('cell', {
\      '-': {
\        'select-a': 'ac', '*select-a-function*': 'textobj#cell#select_a',
\        'select-i': 'ic', '*select-i-function*': 'textobj#cell#select_i',
\      },
\    })

let g:loaded_textobj_cell = 1
