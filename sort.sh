arr=(2 3 6 8 1)

sort(){
    arr=($*)
    len=${#arr[@]}
    for (( i=0; i < len; i++ )); do
        for (( j=0; j < len - 1; j++ )); do
            if [ ${arr[$i]} -lt ${arr[$j]} ] ; then
                temp=${arr[$i]}
                arr[$i]=${arr[$j]}
                arr[$j]=$temp
            fi
        done
    done
    echo ${arr[@]}
}

sort ${arr[@]}