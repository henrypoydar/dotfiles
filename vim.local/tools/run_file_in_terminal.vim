" TODO: figure out how to cd to root
" Map to command R

function! RunInTerminal(file)
  if match(a:file, '_spec\.rb') != -1
    let l:command = 'bundle exec rspec'
  elseif match(a:file, '\.rb') != -1
    let l:command = 'ruby'
  endif

  if exists("l:command")
    let l:run_script = "!osascript ~/.vim.local/tools/run_command.applescript" 
    silent execute ":up"
    silent execute l:run_script . " '" . l:command . " " . a:file . "' 'Ruby Tests'"
    silent execute ":redraw!"
  else
    echo "This file does not appear to be a ruby file " . a:file 
  end
endfunction

function! RunRubyFileInTerminal()
  call RunInTerminal(expand("%") . ":" . line("."))
endfunction 

command! RunRubyFileInTerminal call RunRubyFileInTerminal()

