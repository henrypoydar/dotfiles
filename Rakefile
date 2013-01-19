require 'rake'
require 'erb'

desc "Install dot files and dependencies"
task :install => [:intro, :brew_packages, :zsh, :vim, :misc, :outro]

task :intro do
  puts ""
  puts "=============================="
  puts "Beginning installation of dotfiles and dependencies"
end

task :outro do
  puts ""
  puts "Completed installation of dotfiles and dependencies"
  puts "=============================="
  puts ""
end

task :brew_packages do

  if not File.exists? "/usr/local/bin/brew"
    msg "Installing homebrew"
    sh "ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
  end

  msg "Update homebrew and formulae"
  sh "brew update"

  %w(ack git ctags fasd macvim zsh-completions).each do |pkg|
    msg "Installing #{pkg}"
    begin
      sh "brew install #{pkg}"
    rescue => e
      puts "Looks like #{pkg} is already installed"
    end
  end

end

task :zsh do
  msg "Installing zsh configuration"
  install_dotfiles('zsh*')
end

task :misc do
  %w(ackrc gemrc gitconfig.erb).each do |f|
    msg "Installing #{f}"
    install_dotfiles(f)
  end
end

task :vim do
  msg "Installing vim configuration"
  install_dotfiles('vim')
end

def msg(m)
  puts ""
  puts "+++ #{m}"
end

def install_dotfiles(dir_pattern)
  replace_all = false
  Dir[dir_pattern].each do |file|
    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp  
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
