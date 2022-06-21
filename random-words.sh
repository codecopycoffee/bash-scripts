#!/bin/bash

read -p "Please enter the number of words you wish to generate (1-10): " num

if (($num < 1)) || (($num > 10))
then
   echo "Please enter a number from 1 to 10."
   exit 1
fi

# Save the path as a variable and count the words in the words file
words="/Users/gina/Documents/words.txt"
word_count=`cat $words | wc -l`

# Set up the arrays we're going to use
num_arr=()
word_arr=()

# Generate a random number for each word the user wants
for ((i = 0 ; i < $num ; i++)); do
    new_num=$(($RANDOM % $word_count + 1))
    num_arr+=($new_num)
done

for i in ${num_arr[@]}
do
    current_word=$(sed "${i}q;d" $words)
    word_arr+=($current_word)
done

echo ${word_arr[@]}


