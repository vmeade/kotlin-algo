#! /bin/sh
# This is a simple demonstration of the
# binary search algorithm for the shell
# Variable declarations
min=0
max=$((${#numbers[@]}-1)) #this is the length of the array -1
target=64
numbers=()
echo "Target number is: $target"
echo ""
echo "An array of"
echo "---------------"
for i in {0..100}
  do
    numbers[$i]=$((2*$i)) #formula for adding nums into the array
    echo $i : ${numbers[$i]}
  done
echo "---------------"
#max declaration after array construction
max=$((${#numbers[@]}-1)) #this is the length of the array -1
echo "Calling the binary search algorithm ..."
binary-search () {
  guess=$(( $(($max + $min)) / 2)) # guess is the average of min and max
  echo $guess #shows the algorithmic process
  if (($max < $min)); then
    echo "Sorry the target does not exist in the array"
    return -1
  elif ((${numbers[$guess]} == $target)); then
    echo "$target is in the array at position $guess!"
    return $guess
  elif ((${numbers[$guess]} < $target)); then
    min=$(($guess + 1))
    binary-search
  else
    max=$(($guess - 1))
    binary-search
  fi
  }

  binary-search




#   Pseudo-code from
#   https://www.khanacademy.org/computing/computer-science/algorithms/binary-search/a/implementing-binary-search-of-an-array
# 1 Let min = 0 and max = n-1.
# 2 If max < min, then stop: target is not present in array. Return -1.
# 3 Compute guess as the average of max and min, rounded down (so that it is an integer).
# 4 If array[guess] equals target, then stop. You found it! Return guess.
# 5 If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
# 6 Otherwise, the guess was too high. Set max = guess - 1.
# 7 Go back to step 2.
