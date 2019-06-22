#!/bin/bash
#!/data/data/com.termux/files/usr/bin/bash
#Metasploit v 5


echo "Installing Metasploit v5 for Termux"
sleep 1

function chck ()
{
     case $( uname -o ) in
     GNU/Linux)
     echo "Just For Termux"
     exit;;
     Android)
     echo "Your Device is Android";;
     esac
     
}

chck
echo "Installing"
sleep 3
apt update && upt upgrade
apt install unstable-repo
pkg install metasploit -y

echo "Execute Command msfconsole for running Metasploit Framework"
