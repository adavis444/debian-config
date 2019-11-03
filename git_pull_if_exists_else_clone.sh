gitPullIfExistsElseClone() {
	if [ -d $2 ]; then
		cd $2
		git pull $1
		cd -
	else
		git clone $1 $2
	fi
}
