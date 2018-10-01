#! /bin/sh
# This is a recursive algorithm used to
# check the file directory memory size
## need to add recursive elements
## https://stackoverflow.com/questions/1333813/recursively-read-folders-and-executes-command-on-each-of-them
## there is a lot of problems with mem_report at the moment.

dir_mem(){
  #sums the total of the fifth colum of the current directory
  mem_sum=$(ls -l | awk -F ' ' '{mem_sum +=  $5} END {print mem_sum}')
  gb=$(($mem_sum / 1000000000))
  mb=$(($mem_sum / 1000000))
  kb=$(($mem_sum - $(($gb * 1000000000)) - $(($mb * 1000000))))
}
#setting variable before recursive call
dir_num=0
dir_num(){
  dir_sum+=$(ls -ld */ | awk -F ' ' '{mem_sum ++  $9} END {print mem_sum}')
}

file_num=0
file_num(){
file_sum=$(ls | wc -l)
}

dir_num
dir_mem
file_num

directories=$dir_sum
files=$(($file_sum - $dir_sum))


echo "Mem-Test"
echo "------------------------"
echo "Number of Directories: $directories"
echo "Number of Files: $files"
echo "Total Branch Memory: $gb GB $mb MB $kb kB"
