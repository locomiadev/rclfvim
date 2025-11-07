pref="[rclfvim]"
__1=~/.vim/rclf/syntax
__2=~/.vim/rclf/ftdetect
if [ ! -d $__1 ]; then 
	mkdir -p $__1
else
	echo "$pref waring: directory 1 already exist"
fi
if [ ! -d $__2 ]; then
	mkdir -p $__2
else
	echo "$pref waring: directory 2 already exist"
fi
cp src/rclf.vim ~/.vim/syntax/rclf.vim
cp src/rclf2.vim ~/.vim/ftdetect/rclf.vim
cat <<EOF > ~/.vimrc
" added by rclfvim installer
syntax on
filetype plugin on
EOF
echo "$pref installed successfulllly"
