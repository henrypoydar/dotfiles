" Author:  hpoydar <hpoydar@gmail.com>
" License: The MIT License
"
" Run your rake-invoked ruby specs or tests in the 
" background, in the terminal window from which the
" vim session was invoked. Displays the results
" via growl.
"
" Map function in .vimrc like so:
"
"   map <leader>r :call BgRunSpec()<cr>
"
" Tested only with MacVim, assumes growl and growlnotify
" are installed

function! BgRunSpec()
ruby << EOF
  spec_file = VIM::Buffer.current.name
  command = "clear; echo 'Running specs/tests for #{File.basename(spec_file)}'; ~/.vim/bin/bgrubyspec #{spec_file} &"
  print "Running specs/tests in the background for #{File.basename(spec_file)}"
  system(command)
EOF
endfunction
