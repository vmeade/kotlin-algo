#! /bin/sh
# This is a simple demonstration of the
# selection sort algorithm for the shell
# It might be a slight variant because I'm not defining the
# min from the begining and then sorting. I'm not sure the
# effect on the run-time
less=32768
numbers=()
echo ""
echo "An unsorted array"
echo "---------------"
# generate random numbers and place them in an array
for i in {0..20}
  do
    numbers[$i]=$RANDOM
    echo $i : ${numbers[$i]}
  done
echo "---------------"
# for x in ${numbers[@]}; do
#   if (($x < $less)); then
#     less=$x
#   fi
# done
# echo "The smalllest number in the array is $less"
# # for the first step move less to the begining
# if
# echo "---------------"
# this algoritm generates two loops
# avoiding syntatical structures of array lengths
# I've favored simplicity by iterating the known length
# we begin with the first  element and search for less
selection-sort(){
  for i in {0..20};
    do
      for g in {0..20};
        do
          if ((${numbers[$i]} < ${numbers[$g]})); then
            temp=${numbers[$i]}
            numbers[$i]=${numbers[$g]}
            numbers[$g]=$temp
          fi
        done
      done
}

selection-sort

echo ""
echo "A sorted array"
echo "---------------"
for i in {0..20}
  do
    echo $i : ${numbers[$i]}
  done
echo "---------------"




#   Pseudo-code from
#   https://www.khanacademy.org/computing/computer-science/algorithms/sorting-algorithms/a/selection-sort-pseudocode
# 1     Find the smallest card. Swap it with the first card.
# 2     Find the second-smallest card. Swap it with the second card.
# 3     Find the third-smallest card. Swap it with the third card.
# 4     Repeat finding the next-smallest card, and swapping it into the correct position until the array is sorted.
