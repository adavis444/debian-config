## Link Chromebook folders to Linux home directory

createSymlinkFromMnt() {
	if [ -d $1 ] && [ ! -L $2 ]; then
		sudo ln -s $1 $2
	fi
}
