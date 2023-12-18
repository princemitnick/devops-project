#!/usr/bin/env bash

var1=true


function  f0() {
    echo $USER
    echo $SHELL
}
function f1() {
    sum=0
  while true
  do
    read -p "enter a score : " score
    if [ "$score" == "q" ]
    then
      break
    fi
    sum=$(($sum + $score ))
    echo "$sum"
  done
}


function f2() {
  while true
  do
    date +"%H:%M:%S"
    sleep 1
    clear
  done
}


function f3() {
  file_name=$1
  is_shell_script=$2
  touch $file_name
  echo "file $file_name is created"
  if [ $is_shell_script = true ]
  then
    chmod u+x $file_name
  fi
}

function  f4() {
    sum=$(( $1 + $2 + $3))
    return $sum
}

func=0

while true
do
  read -p "Function 1 ou 2? ou autre touche pour quitter : " func
  if [ "$func" == 1 ];
  then
    f1
  elif [ "$func" == 0 ]; then
    f0
  elif [ "$func" == 2 ]; then
    f2
  elif [ "$func" == 3 ]; then
    f3 test.sh true
  elif [ "$func" == 4 ]; then
    result="$(f4 34 5 1)"
    echo "$?"
  else
    break
  fi
done

