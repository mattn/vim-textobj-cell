function! textobj#cell#select_a()
  let head_pos = [0]+searchpos('\(^\|\s\)\zs', 'bcnW')+[0]
  let tail_pos = [0]+searchpos('.\s\|$', 'cnW')+[0]
  echo head_pos tail_pos
  return ['v', head_pos, tail_pos]
endfunction

function! textobj#cell#select_i()
  let head_pos = [0]+searchpos('\(^\|\s\)\zs', 'bcnW')+[0]
  let tail_pos = [0]+searchpos('.\(\s\|$\)', 'cnW')+[0]
  let non_blank_char_exists_p = getline('.')[head_pos[2] - 1] !~# '\s'
  echo head_pos tail_pos
  return
  \ non_blank_char_exists_p
  \ ? ['v', head_pos, tail_pos]
  \ : 0
endfunction
