#!/bin/bash

# Take three numbers as input
echo "Enter the first number:"
read num1

if ! [ "$num1" -eq "$num1" ] 2> /dev/null; then
  echo "invalid input: $num1"
  exit 1
fi

echo "Enter the second number:"
read num2
if ! [ "$num2" -eq "$num2" ] 2> /dev/null; then
  echo "invalid input: $num2"
  exit 1
fi

echo "Enter the third number:"
read num3
if ! [ "$num3" -eq "$num3" ] 2> /dev/null; then
  echo "invalid input: $num3"
  exit 1
fi

# Initialize largest and smallest with the first number
largest=$num1
smallest=$num1

# Check if num2 is larger or smaller
if [ $num2 -gt $largest ]; then
    largest=$num2
fi
if [ $num2 -lt $smallest ]; then
    smallest=$num2
fi

# Check if num3 is larger or smaller
if [ $num3 -gt $largest ]; then
    largest=$num3
fi
if [ $num3 -lt $smallest ]; then
    smallest=$num3
fi

# Output the results
echo "The largest number is: $largest"
echo "The smallest number is: $smallest"
