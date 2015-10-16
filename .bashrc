
#
# chruby
#
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
#chruby 1.8.7 # autoload ruby version in all shells

export HOMEBREW_FLAGS="-I/usr/local/include/boost -I/usr/local/include/boost/tr1 \
  -I/usr/local/include/boost/utility"
export HOMEBREW_LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/readline/lib \
  -L/usr/local/opt/gettext/lib -L/usr/local/opt/libffi/lib"
export HOMEBREW_CPPFLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/openssl/include \
  -I/usr/local/opt/gettext/include"

export LDFLAGS="-L/usr/local/lib $HOMEBREW_LDFLAGS"
export CFLAGS="-I/usr/local/include $HOMEBREW_FLAGS"
export CPPFLAGS="-I/usr/local/include $HOMEBREW_FLAGS $HOMEBREW_CPPFLAGS"
#export CC=gcc-4.9
#export CXX=g++-4.9

export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# And this is from:
# http://code.google.com/p/git-osx-installer/
export PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo "\[\033[22m\]\W \[\e[1;34m\]($(git branch | grep ^*|sed s/\*\ //))\[\e[1;37m\]"; else echo "\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;34m\]\$\[\e[m\]\[\e[1;37m\]"; fi) '
