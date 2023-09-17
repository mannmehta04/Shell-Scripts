read var1
read var2

if [ $var1 -eq $var2 ] ; then
	echo "Both numbers are same"
else
	echo "Both numbers are different"
fi
