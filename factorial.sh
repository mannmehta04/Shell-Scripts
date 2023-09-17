#read n

fact(){
	n=$1
	if [ $n -eq 1 ]; then
		echo 1
		return
	fi
	echo $(( $n * `fact $(($n - 1))` ))
	return
}

fact 5
