array=(11 12)
for num in {10..0} ; do
        if [ $(($num%2)) -eq 0 ]; then
                array+=($num)
        fi
done
# @ means all of them
echo ${array[@]}
for elem in ${array[@]}; do
        echo "$elem"
done
