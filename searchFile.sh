echo "Enter your File Name to be searched:"
read filename

if [ -e `pwd`/$filename ] ; then
	echo "File Found"
	echo `pwd`/$filename
else
	echo "File Not Found"
fi
