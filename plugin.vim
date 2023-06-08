 let cmd = "python ~/correct_text_oneshot.py "
  for line in selection
    let cmd .= shellescape(line) . " "
  endfor
  let output = system(cmd)
  echo output
endfunction

xnoremap <silent> <leader>a :<C-u>call SendSelectionToPython()<CR>
