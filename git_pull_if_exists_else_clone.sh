gitPullIfExistsElseClone() {
	if [ -d $2 ]; then
		cd $2 >/dev/null
		git pull $1
		cd - >/dev/null
	else
		git clone $1 $2
	fi
}
