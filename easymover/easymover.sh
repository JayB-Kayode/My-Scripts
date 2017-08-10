#! bin/bash
echo ----------------
echo welcome to easymover
echo ----------------
echo this script helps you move your files
echo ----------------
#swicthing to root privileges 
echo 'do you want/need to continue with root priveleges ? (y/n)'
echo ----------------
read pivi 
echo ----------------
if [[ $privi == "y" ]]; then
    echo enter your root password
    echo ----------------
    #sudo
    echo You now have root privileges 
    echo 'please be carefull with whatever action you do
     under root privileges'  
fi


