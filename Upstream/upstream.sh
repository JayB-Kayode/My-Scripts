#! /bin/bash


#search for upstream pattern and check if it's already there 
echo Welcome to Upstream
echo .......... 
echo '....checking if upstream pattern already exist ....'
echo ..........
echo ..........
# -z check if a string/output is empty or not. -n is the oposit of -z
# if is not empty or not ...
if [[ -z $(grep upstream .git/config) ]] then
    echo ....no upstream found! you can add one!
    ## Add remote upstream from a git repository
    echo ..........
    echo Create a new  remote Upstream ? (y/n)
    read ans1
    if [[$ans1 == "y"]]; then
        echo Please Enter the remote url:
        read url
        echo ..........
        echo ..........
        echo .......... 
        echo you entered this url: 
        echo ..........
        echo ..........
        echo $url 
        echo 'do you wan to continue with this url ? (y/N)'
        read ans 

        if [[ $ans == "y" ]]; then
        echo ..........
        echo ..........
        echo ....creating new remote upstream ....
        git remote add upstream $url
        cat .git/config
        echo ..........
        echo ..........
        echo .....remote upstream successfully added !
        echo ..........
        echo ..........
        else 
            echo operation cancelled 
            exit
        fi

    else 
        echo operation cancelled 
        exit
    fi
else 
    echo '.....upstream found for this repository'
    echo ..........
    echo ..........
    echo ..........
    echo 'do you want to pull changes from main repository if there is ?(y/n)'
    read ans2
    #pulling new data from remote upstream
    if [[$ans2 == "y"]] then 
        echo ..... pulling data from upstream
        echo ..........
        echo ..........
        git pull upstream master
        echo ......data correctly pulled !
        exit
    fi

fi









