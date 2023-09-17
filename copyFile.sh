
echo "Source: $1"
echo "Destination: $2"

#check if 2 arguments
if [ $# -ne 2 ]; then
	echo "Not Enough Arguments"
else
	#check if exists
	if [ -e $1 ] ; then		
		#check if readable
		if [ -r $1 ] ; then
			#check if destination file exists
			if [ -e $2 ] ; then
				#check if destination file is readable
				if [ -w $2 ] ; then
					#confirm overwritting of file
					echo "Do you want to overwrite [y/n] :"
					read status
					if [ $status = 'y' ]; then
						cp $1 $2
					else
						echo "File not overwritten"
					fi
				else
					echo "File not Writable"
				fi
			else
				echo "Destination File Not Exists"
			fi
		else
			echo "File Not Readable"
		fi
	else
		echo "File Not Found"
	fi	
fi
