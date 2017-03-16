# my_vimrc
This setting is for below list.
* coding a python program.
* write support to create table of reStructuredText format.

# note

Need to some extarnal modules for this settings

## Creating tmp dir for vim

```sh
  mkdir -p ~/.vim/tmp
```
## Downloading neobundle.vim

Download neobundle.vim via git

```sh
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

## Building vim with +python3 option

This setting needs vim that was made with +python3 option.

```sh
  CONFIGURE_OPTS="--enable-shared" pyenv install 2.7.12
  CONFIGURE_OPTS="--enable-shared" pyenv install 3.6.0
  pyenv global 2.7.12 3.6.0
```

```sh
  git clone https://github.com/vim/vim.git
  cd vim
  LDFLAGS="-Wl,-rpath=${HOME}/.pyenv/versions/2.7.12/lib:${HOME}/.pyenv/versions/3.6.0/lib" ./configure --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-multibyte --enable-fontset --with-features=huge --prefix=/opt/vim
```

## Add pyenv and rbenv

Installing pyenv and pyenv-virtualenv

```sh
  git clone https://github.com/yyuu/pyenv.git ~/.pyenv
  git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
  
  echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bash_profile
  echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.bash_profile
  echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
  echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
  
  sudo yum install -y zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel
```

Installing rbenv

```sh
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

Reload configuration
```sh
  source ~/.bash_profile
```
