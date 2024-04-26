require 'rake'
require 'erb'

desc 'Install dot files and dependencies'
task install: %i[intro brew_packages zsh fonts misc vim outro]

task :intro do
  puts ''
  puts '=============================='
  puts 'Beginning installation of dotfiles and dependencies'
end

task :outro do
  puts ''
  puts 'Completed installation of dotfiles and dependencies'
  puts '=============================='
  puts ''
end

task :fonts do
  msg "Change terminal font to 'JetBrainsMono Nerd Font'"
  sh 'cp fonts/JetBrains*.ttf ~/Library/Fonts/.'
end

task :brew_packages do
  unless File.exist? '/opt/homebrew/bin/brew'
    msg 'Installing homebrew'
    sh '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
  end

  msg 'Update homebrew and formulae'
  sh 'brew update'

  ['ack', 'asdf', 'git', 'ctags', 'fasd', 'bat', 'fzf', 'powerlevel10k',
   'macvim --force --with-override-system-vim', 'zsh-completions'].each do |pkg|
    msg "Installing #{pkg}"
    begin
      sh "brew install #{pkg}"
    rescue StandardError
      puts "Looks like #{pkg} is already installed"
    end
  end
end

task :zsh do
  msg 'Installing zsh configuration'
  install_dotfiles('zsh*')
end

task :misc do
  %w[ackrc aprc editrc inputrc irbrc gemrc gitconfig.erb npmrc pryrc hushlogin rspec rp5rc].each do |f|
    msg "Installing #{f}"
    install_dotfiles(f)
  end
end

task :vim do
  msg 'Installing vim configuration'
  install_dotfiles('vim')
  sh 'rm -rf ~/.vim/bundle/vundle'
  sh 'git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle'
  install_dotfiles('vimrc')
  sh 'vim +BundleClean +qall'
  sh 'vim +BundleInstall +qall'
end

def msg(m)
  puts ''
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
  system %(rm -rf "$HOME/.#{file.sub('.erb', '')}")
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
    system %(ln -s "$PWD/#{file}" "$HOME/.#{file}")
  end
end
