extract()
{
	mkdir $1 && tar xvzf $1.tar.gz -C $1 --strip-components 1
}

extract libevent
cd libevent
./configure --prefix=$HOME/local --disable-shared
make
make install
cd ..

extract ncurses
cd ncurses
./configure --prefix=$HOME/local
make
make install
cd ..

extract tmux
cd tmux
./configure CFLAGS="-I$HOME/local/include -I$HOME/local/include/ncurses" LDFLAGS="-L$HOME/local/lib -L$HOME/local/include/ncurses -L$HOME/local/include"
 CPPFLAGS="-I$HOME/local/include -I$HOME/local/include/ncurses" LDFLAGS="-static -L$HOME/local/include -L$HOME/local/include/ncurses -L$HOME/local/lib" make
cp tmux ~/local/bin
