require 'rake'
require 'erb'

desc "Install dot files and dependencies"
task :install => [:brew_packages] do

end

task :brew_packages do

  if not File.exists? "/usr/local/bin/brew"
    puts "+++ Installing homebrew"
    sh "ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
  end

  %w(ack git ctags macvim zsh-completions).each do |pkg|
    puts "+++ Installing #{pkg}"
    sh "brew install #{pkg}"
  end

end
  # Install package dependencies 
  

  #


# 
#   replace_all = false
#   Dir['*'].each do |file|
#     next if %w[Rakefile README.md LICENSE].include? file
#     
#     if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
#       if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
#         puts "identical ~/.#{file.sub('.erb', '')}"
#       elsif replace_all
#         replace_file(file)
#       else
#         print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
#         case $stdin.gets.chomp  
#         when 'a'
#           replace_all = true
#           replace_file(file)
#         when 'y'
#           replace_file(file)
#         when 'q'
#           exit
#         else
#           puts "skipping ~/.#{file.sub('.erb', '')}"
#         end
#       end
#     else
#       link_file(file)
#     end
#   end
#   
# end
# 
# def replace_file(file)
#   system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}
#   link_file(file)
# end
# 
# def link_file(file)
#   if file =~ /.erb$/
#     puts "generating ~/.#{file.sub('.erb', '')}"
#     File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
#       new_file.write ERB.new(File.read(file)).result(binding)
#     end
#   else
#     puts "linking ~/.#{file}"
#     system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
#   end
# end
