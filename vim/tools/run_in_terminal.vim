function! RunInTerminal(file)
  if match(a:file, '_spec\.rb') != -1
<<<<<<< HEAD
=======
    "let l:command = 'bundle exec rspec --tty'
>>>>>>> origin/master
    let l:command = 'zeus rspec --tty'
  elseif match(a:file, '\.rb') != -1
    let l:command = 'ruby'
  endif

  if exists("l:command")
    let l:run_script = "!osascript ~/.vim/tools/run_terminal_command.applescript" 
    let l:run_dir = getcwd()
    silent execute ":up"
    silent execute l:run_script . " 'cd " . l:run_dir . " && " . l:command . " " . a:file . "' 'Ruby Tests'"
    silent execute ":redraw!"
  else
    echo "This file does not appear to be a ruby file "
  end
endfunction

function! RunRubyFileInTerminal()
  call RunInTerminal(expand("%") . ":" . line("."))
endfunction 

command! RunRubyFileInTerminal call RunRubyFileInTerminal()

