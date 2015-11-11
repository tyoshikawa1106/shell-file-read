#!/bin/sh
export BASE_PATH="/Users/tyoshikawa1106/pg/shellscript/FileRead"
export FAILE_PATH="$BASE_PATH/data/account.csv"

echo "-- FILE READ SHELL START --"

file_path="$FAILE_PATH"
echo $file_path

i=0
while read line
do
  if [ $i -ne 0 ]
  then
    echo $line
  fi
  i=`expr $i + 1`
done < $file_path

echo "-- FILE READ SHELL END --"