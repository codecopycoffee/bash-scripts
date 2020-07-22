#!/bin/bash

# When you run the file, pass in the amount of time as the first
# argument, followed by a space,followed by the increment of time 
# as the second argument. For example:
# bash ~/timer.sh 10 s sets a timer for 10 seconds
# bash ~/timer.sh 5 m sets a timer for 5 minutes
# and so on.

timer () {

  # Seconds
  if [[ $2 == 's' ]]; then
    for ((i=$1; i>0; i--)); do
      sleep 1 &
      wait
    done
    echo "Ding ding! $1 seconds are up."

  # Minutes
  elif [[ $2 == 'm' ]]; then
    min=$(($1*60))
    for ((i=$min; i>0; i--)); do
      sleep 1 &
      wait
    done
    echo "Ding ding! $1 minutes are up."

  # Hours
  elif [[ $2 == 'h' ]]; then
    hr=$(($1*3600))
    for ((i=$hr; i>0; i--)); do
      sleep 1 &
      wait
    done
    echo "Ding ding! $1 hours are up."
  fi

}

timer $1 $2
}
