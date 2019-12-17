#!/bin/sh
 
show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[36m"` #Blue
    number=`echo "\033[33m"` #yellow
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${menu}Elrond Node Runner menu v 0.1${normal}\n"
    printf "${menu}**${number} 1)${menu} Check Node Autoupdate Status ${normal}\n"
    printf "${menu}**${number} 2)${menu} Check Node Space Usage ${normal}\n"
    printf "${menu}**${number} 3)${menu} Force Node Autoupdate ${normal}\n"
	printf "${menu}**${number} 4)${menu} Check crontab job  ${normal}\n"
    printf "${menu}**${number} 6)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 7)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 8)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 9)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 10)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 11)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 12)${menu} Some other commands${normal}\n"
	printf "${menu}**${number} 13)${menu} Start the Nodes${normal}\n"
	printf "${menu}**${number} 14)${menu} Stop the Nodes${normal}\n"
	printf "${menu}**${number} 15)${menu} Manual Node Update${normal}\n"
	printf "${menu}**${number} 16)${menu} Check User${normal}\n"
	printf "${menu}**${number} 17)${menu} Edit variables.cfg${normal}\n"
	printf "${menu}**${number} 18)${menu} Zip Node *.PEM files and Move to VALIDATOR_KEYS folder${normal}\n"
	printf "${menu}**${number} 19)${menu} Install the node(s) as a service${normal}\n"
    printf "Please enter a menu option and enter or ${fgred}x to exit. ${normal}"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[01;31m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            option_picked "Option 1 Picked";
            printf "TExt 1";
			cd ~ && cat autoupdate.status
            show_menu;
        ;;
        2) clear;
            option_picked "Option 2 Picked";
            printf "Launchin termui for node 0";
			cd ~ && du -hs ./elrond-nodes
            show_menu;
        ;;
        3) clear;
            option_picked "Option 3 Picked";
            printf "sudo service apache2 restart";
            show_menu;
        ;;
        5) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		6) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		7) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		8) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		9) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		10) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		11) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		12) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		13) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		14) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		15) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		16) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		17) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		18) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
		19) clear;
            option_picked "Option 4 Picked";
            printf "ssh lmesser@ -p 2010";
            show_menu;
        ;;
        x)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Pick an option from the menu";
            show_menu;
        ;;
      esac
    fi
done
