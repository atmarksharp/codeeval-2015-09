#!/bin/sh

if [ $# -gt 0 ]; then
  s="ruby $1.rb $1.txt"
  echo $s
  $s
else
  echo "set id as arg"
fi
