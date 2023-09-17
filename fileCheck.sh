file="testFile"

touch $file

if test -e $file ; then
    echo "File Exists"
    if test -s $file ; then
        echo "File has data"
    else
        echo "File has no data"
    fi
else
    echo "File Not Exists"
fi