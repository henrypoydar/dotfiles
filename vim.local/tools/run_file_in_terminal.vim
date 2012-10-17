function! RunInTerminal(file)
  if match(a:file, '_spec\.rb') != -1
    let l:command = 'bundle exec rspec'
  elseif match(a:file, '\.feature') != -1
    let l:command = 'bundle exec cucumber'
  elseif match(a:file, '\.rb') != -1
    let l:command = 'ruby'
  endif

  if exists("l:command")
    let g:last_run_in_terminal = a:file
    let l:run_script = "!osascript ~/.vim.local/tools/run_command.applescript" 
    silent execute ":up"
    silent execute l:run_script . " '" . l:command . " " . a:file . "' " . g:vim_terminal . " &"
    silent execute ":redraw!"
  else
    echo "Couldn't figure out how to run " . a:file 
  end
endfunction

function! RunFileInTerminal()
  if exists("g:vim_terminal")
    call RunInTerminal(expand("%")) 
  else
    echo "You need to set g:vim_terminal to a valid TTY (e.g. /dev/ttys000)"
  end
endfunction

function! RunFileAtLineInTerminal()
  if exists("g:vim_terminal")
    call RunInTerminal(expand("%") . ":" . line("."))
  else
    echo "You need to set g:vim_terminal to a valid TTY (e.g. /dev/ttys000)"
  endif
endfunction

function! ReRunLastFileCommand()
  if exists("g:vim_terminal") && exists("g:last_run_in_terminal")
    call RunInTerminal(g:last_run_in_terminal)
  endif
endfunction

command! RunFileInTerminal call RunFileInTerminal()
command! RunFileAtLineInTerminal call RunFileAtLineInTerminal()
command! ReRunLastFileCommand call ReRunLastFileCommand()

