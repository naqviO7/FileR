#!/bin/bash

#START OF CODE

#colors coding 
cyan='\e[0;36m'
BlueF='\e[1;34m' 
lightgreen='\e[1;32m'
RESET="\033[00m"

clear 

#function to print banner
banner_function(){
    echo "$cyan"
    echo "
  __ _ _      ____  
 / _(_) | ___|  _ \ 
| |_| | |/ _ \ |_) |
|  _| | |  __/  _ < 
|_| |_|_|\___|_| \_\
        
              Version 1.0    
                   by naqviO7"
}


#folder to seach for files 
check_file(){
    echo "$BlueF"

    #taking input from user
    echo -e "Enter Name of FILE with PATH: \c"
    read -r file_name

    #checking for file existence
    if [ -e "$file_name" ]; then
        echo "$file_name Exists!"
    else
        echo "$file_name Does Not Exists!"
    fi
}



#function to check permissions for a file
check_permission(){
    echo "$RESET"

    #taking file naame from user
    echo -e "Enter Name of FIle with PATH: \c"
    read -r file_name

    if [ -r "$file_name" ]; then
        echo "$file_name has Read Permissions!"
    
    elif [ -w "$file_name" ]; then
        echo "$file_name has Write Permissions!"

    elif [ -x "$file_name" ]; then
        echo "$file_name has Executable Permissions!"
    
    fi
}



#function to check if file is empty or not
isEmptyFile(){
    echo "$cyan"

    #taking file name as input
    echo -e "Enter Name of FIle with PATH: \c"
    read -r file_name

    # ← put the command whos exit code you want to check here &>/dev/null
    if [ -s "$file_name" ]; then
        echo "$file_name is a Empty File!"
    
    else
        echo "$file_name is Not Empty!"
    
    fi
}



#menu function to display menu of code
main_menu(){
    echo "$lightgreen"
    echo " ____________________________________________"
    echo "|               M A I N M E N U              |"
    echo "|--------------------------------------------|"
    echo "| -> Press 1 to Check Existence of File!     |"
    echo "| -> Press 2 to Check Permissions of File!   |"
    echo "| -> Press 3 to Check Emptiness of File!     |"
    echo "| -> Press 0 to Quit                         |"    
    echo "|--------------------------------------------|"
}


#main function
main_function(){
    sleep 3
    banner_function

    sleep 3
    main_menu

    read -p "Choose Option: " opt
    if [ "$opt" = "1" ]; then 
        sleep 1
        echo "----------------Checking Existance of File----------------"
        sleep 2
        check_file

    
    elif [ "$opt" = "2" ]; then
        sleep 1
        echo "----------------Checking Permissions of File----------------"
        sleep 2
        check_permission
    
    elif [ "$opt" = "3" ]; then
        sleep 1
        echo "----------------Checking Emptiness of File----------------"
        sleep 2
        isEmptyFile
    
    elif [ "$opt" = "0" ]; then
        sleep 1
        echo "----------------Exitting----------------"
        sleep 2
        exit 0 #success
    else
        echo "----------------Invalid Option----------------"       
    fi           
}

#calling main function
main_function

#ENDOFCODE
