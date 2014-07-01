task :default => :install

desc "Start over [clean, install]"
task :reinstall => [:clean, :install]

desc "Delete files and directories"
task :clean do
  sh "rm ~/.vimrc"
  sh "rm ~/.gvimrc"
  sh "rm -rf ~/.vim"
end

desc "Backup your vim files"
task :backup do
  sh "mv ~/.vimrc ~/.vimrc.bak"
  sh "mv ~/.gvimrc ~/.gvimrc.bak"
  sh "mv ~/.vim ~/.vim.bak"
end

desc "Setup and Install Plugins"
task :install do
  
  sh "mkdir -p ~/.vim/bundle"
  
  %w( vimrc gvimrc ).each do |file|
    dest = File.expand_path("~/.#{file}")
    unless File.exists?(dest)
      ln_s(File.expand_path("../.#{file}",__FILE__), dest)
    end
  end
  
  sh "git clone http://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle"
  sh "vim +PluginInstall +qall"
  
end

