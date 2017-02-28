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
  LDFLAGS="-Wl,-rpath=${HOME}/.pyenv/versions/2.7.12/lib:${HOME}/.pyenv/versions/3.6.0/lib" ./configure --enable-pythoninterp=dynamic --     enable-python3interp=dynamic --enable-multibyte --enable-fontset --with-features=huge --prefix=/opt/vim
```

pull test from gitpython
test
