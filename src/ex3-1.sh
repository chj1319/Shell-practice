#!/bin/bash

num1=$1
num2=$2

echo "NUM 1: $num1"
echo "NUM 2: $num2"

echo "$num1 + $num2 = $((num1 + num2))"
echo "$num1 - $num2 = $((num1 - num2))"
echo "$num1 * $num2 = $((num1 * num2))"
echo "$num1 / $num2 = $((num1 / num2))"
