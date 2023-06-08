function! SendSelectionToPython() range
  let selection = getline(a:firstline, a:lastline)
  let cmd = "python3 ~/correct_text_oneshot.py "
  for line in selection
    let cmd .= shellescape(line) . " "
  endfor
  call system(cmd)
endfunction

xnoremap <silent> <,>s :<C-u>call SendSelectionToPython()<CR>
