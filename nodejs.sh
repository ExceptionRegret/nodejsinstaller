#!/bin/bash


clear
echo "###################################################################"
echo "                                             ▄▄                    "
echo "                            ██               ▀▀                    "
echo "  ██▄████▄   ▄████▄    ▄███▄██   ▄████▄    ████     ▄▄█████▄       "
echo "  ██▀   ██  ██▀  ▀██  ██▀  ▀██  ██▄▄▄▄██     ██     ██▄▄▄▄ ▀       "
echo "  ██    ██  ██    ██  ██    ██  ██▀▀▀▀▀▀     ██      ▀▀▀▀██▄       "
echo "  ██    ██  ▀██▄▄██▀  ▀██▄▄███  ▀██▄▄▄▄█     ██     █▄▄▄▄▄██       "
echo "  ▀▀    ▀▀    ▀▀▀▀      ▀▀▀ ▀▀    ▀▀▀▀▀      ██      ▀▀▀▀▀▀        "
echo "                                          ████▀                    "
echo "                                                                   "
echo "                                                                   "  
echo "###################################################################"
sleep 2

PS2='Please Enter Your Choice: '
options=("Installer of Nodejs" "Quit")
select opt in "${options[@]}"
do
    case $opt in
      "Installer of Nodejs")
      sudo apt-get update
      sudo apt-get install wget
      wget https://nodejs.org/dist/v15.4.0/node-v15.4.0-linux-x64.tar.xz
      tar -xvf node-v15.4.0-linux-x64.tar.xz
      cd node-v15.4.0-linux-x64
      mv -f -u -i bin /usr/
      mv -f -u -i include /usr/
      mv -f -u -i share /usr/
      mv -f -u -i lib /usr/
      rm -f node-v15.4.0-linux-x64.tar.xz
      rm -r -f node-v15.4.0-linux-x64
      node -v
      npm -v
      ;;
     "Quit")
      break
      ;;
   esac
done
