Installation 
============

git clone https://github.com/wil3/dot ~/dot  
cd ~/dot  
./bootstrap.sh  

May need to run the following if getting gnome-256 color errors

$ sudo apt-get install ncurses-term

and place this at the top of .vimrc

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
