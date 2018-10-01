#! /bin/sh
# This is a recursive algorithm used to
# check the file directory memory size
## need to add recursive elements
## https://stackoverflow.com/questions/1333813/recursively-read-folders-and-executes-command-on-each-of-them
## there is a lot of problems with mem_report at the moment.

dir_mem(){
  #sums the total of the fifth colum of the current directory
  mem_sum=$(ls -l | awk -F ' ' '{mem_sum +=  $5} END {print mem_sum}')
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
memory=$mem_sum

echo "the recursive algorithm"
echo "------------------------"
echo "Number of Directories: $directories"
echo "Number of Files: $files"
echo "Total Memory: $memory kB"
