#! bin/bash
echo ----------------
echo welcome to easymover
echo ----------------
echo this script helps you move your files
echo ----------------
echo '[IMPORTANT]
  Please Run Me Inside the location of the file you want to move !
  when running under root privileges be careful !'

#




#swicthing to root privileges 
echo 'do you want/need to continue with root priveleges ? (y/n)'
echo ----------------
read privi 
echo ----------------
if [[ $privi == "y" ]]; then
    echo enter your password
    echo ----------------
    echo You now have root privileges
    echo 'please be carefull with whatever action you do
     under root privileges'
   sudo whoami 
else 

       
fi
echo "

"
