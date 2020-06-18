#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input No.1? " firstnum # Read command is used to have 3 numbers from the user
read -p "Input No.2? " secondnum
read -p "Input No.3? " thirdnum
sum=$((firstnum + secondnum + thirdnum)) #doing addition of three numbers in this command
product=$((firstnum * secondnum * thirdnum)) #product command is used to do the multiplication of that three numbers

#giving summary
cat <<EOF
The sum of $firstnum , $secondnum and $thirdnum numbers are $sum .
The product of $firstnum , $secondnum and $thirdnum numbers are $product .
EOF
