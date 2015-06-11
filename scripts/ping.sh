#!/bin/bash
# just a useful script that i call with vagrant sometimes to check connectivity

OS=$(uname)

if [[ $OS == "Linux" ]]
then

  for i in syslog el5 el6 el7 sol10
  do
    ping -i 1 -c 1 $i 1>/dev/null 2>&1

    if [[ $? -eq 0 ]]
    then
      echo "can successfully ping $i"
    else
      echo "cannot ping $i"
    fi
  done

elif [[ $OS == "SunOS" ]]
then
  echo "i am solaris"

  for i in syslog el5 el6 el7 sol10
  do
    ping -I 1 $i 1 1 1>/dev/null 2>&1

    if [[ $? -eq 0 ]]
    then
      echo "can successfully ping $i"
    else
      echo "cannot ping $i"
    fi
  done
else
  echo "i am an unsupported platform"
  exit 1
fi

