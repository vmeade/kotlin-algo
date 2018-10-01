#! /bin/sh
# This is a simple demonstration of the
# insertion sort
echo "the insertion sort array"
echo "------------------------"
num_array=()
for (( i = 0; i < 10; i++ )); do
  num_array[$i]=$RANDOM
done

echo "unsorted:"
for i in ${num_array[@]}; do
  printf "$i "
done
echo \

# for the length of the array
for (( i = 0; i < 10; i++ )); do
  #set the key equal to the index value current iteration
  key=${num_array[$i]}
  #set the index to the current iteration value
  index=$i
  #while the value of the key is less then the previous index
  while (( $key < ${num_array[$index - 1]} )); do
    #immediately break if first value is 0 to avoid -1 array error
    if (($index == 0)); then
      break
    fi
    #set the current index value to the preceeding value
    num_array[$index]=${num_array[$index-1]}
    # and set the preceeding value to the key
    num_array[$index - 1]=$key
    #decrement the index to continue searching down the line
    ((index--))
  done
done


echo "sorted:"
for i in ${num_array[@]}; do
  printf "$i "
done
echo \
