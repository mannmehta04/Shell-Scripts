arr=(1 2 3 4 5)

even(){
	for i in $* ; do
		if [ $(($i % 2)) -eq 0 ] ; then
			echo $i
		fi
	done
}

even ${arr[@]}