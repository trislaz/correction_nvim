function! SendSelectionToPython() range
  echo "using correction script"
  let selection = getline(a:firstline, a:lastline)
  let cmd = "python ~/correct_text_oneshot.py "
  for line in selection
    let cmd .= shellescape(line) . " "
  endfor
  let output = system(cmd)
  echo output
endfunction

xnoremap <silent> ,s :<C-u>call SendSelectionToPython()<CR>
