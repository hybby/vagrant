#!/bin/bash
# just a script i use to perform host specific actions via vagrant

i_am=$1

if [[ -z $i_am ]]
then
  echo "who am i?"
  exit 1
fi

echo "=> running configure.sh on $i_am"

# before host specific actions
# ----------------------------
echo "performing actions prior to host specific configuration on $i_am"

OS=$(uname) 

if [[ $OS == "Linux" ]]
then

  if [[ -f /etc/redhat-release ]]
  then
    RELEASE=$(egrep -wo '[5-7]\.[1-9][0-9]?' /etc/redhat-release)
    MAJOR_RELEASE=$(echo $RELEASE | awk -F. '{print $1}')
    MINOR_RELEASE=$(echo $RELEASE | awk -F. '{print $2}')

    echo "i am running redhat version \"$RELEASE\" (major version: $MAJOR_RELEASE, minor version: $MINOR_RELEASE)"
  fi

elif [[ $OS == "SunOS" ]]
then
  echo "i am solaris"

else
  echo "i am an unsupported platform"
  exit 1
fi


# host specific actions
# ---------------------
echo "hello, i'm going to run host specific actions for $i_am"

case $i_am in

  syslog) 
    
  ;;

  el5)     

  ;;

  el6)
    
  ;;

  el7)     
    
  ;;

  sol10)   
    
  ;;
    
esac

# after host specific actions  
# ---------------------------

echo "performing actions prior to host specific configuration on $i_am" 
