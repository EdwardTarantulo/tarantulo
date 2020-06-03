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
	printf "${menu}**${number} 4)${menu} Check crontab job ${normal}\n"
    printf "${menu}**${number} 5)${menu} Open Node 1 Termui Info${normal}\n"
	printf "${menu}**${number} 6)${menu} Open Node 2 Termui Info${normal}\n"
	printf "${menu}**${number} 7)${menu} Open Node 3 Termui Info${normal}\n"
	printf "${menu}**${number} 8)${menu} Open Node 4 Termui Info${normal}\n"
	printf "${menu}**${number} 9)${menu} Open Node 5 Termui Info${normal}\n"
	printf "${menu}**${number} 10)${menu} Open Node 6 Termui Info${normal}\n"
	printf "${menu}**${number} 11)${menu} Start the Nodes${normal}\n"
	printf "${menu}**${number} 12)${menu} Stop the Nodes${normal}\n"
	printf "${menu}**${number} 13)${menu} Manual Node Update${normal}\n"
	printf "${menu}**${number} 14)${menu} Check User${normal}\n"
	printf "${menu}**${number} 15)${menu} Edit variables.cfg${normal}\n"
	printf "${menu}**${number} 16)${menu} Zip Node *.PEM files and Move to VALIDATOR_KEYS folder${normal}\n"
	printf "${menu}**${number} 17)${menu} Install the node(s) as a service${normal}\n"
	printf "${menu}**${number} 18)${menu} Download Elrond Script${normal}\n"
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
            printf "\n";
			cd $HOME && cat autoupdate.status
            show_menu;
        ;;
        2) clear;
            option_picked "Option 2 Picked";
            printf "Disk usage: \n";
			cd $HOME && du -hs ./elrond-nodes
            show_menu;
        ;;
        3) clear;
            option_picked "Option 3 Picked";
            printf "Forcing Node Autoupdate ";
			me=$(whoami) && cd ~ && /bin/bash -c /home/$me/elrond-go-scripts-v2/auto-updater.sh
			printf "Last run: \n";
			cd $HOME && tail -4 ./autoupdate.status
            show_menu;
        ;;
		4) clear;
            option_picked "Option 4 Picked";
            printf "Crontab Job: \n";
			crontab -l
            show_menu;
        ;;
        5) clear;
            option_picked "Option 5 Picked";
            cd $HOME && ./elrond-utils/termui -address localhost:8080
            show_menu;
        ;;
		6) clear;
            option_picked "Option 6 Picked";
            cd $HOME && ./elrond-utils/termui -address localhost:8081
            show_menu;
        ;;
		7) clear;
            option_picked "Option 7 Picked";
            cd $HOME && ./elrond-utils/termui -address localhost:8082
            show_menu;
        ;;
		8) clear;
            option_picked "Option 8 Picked";
            cd $HOME && ./elrond-utils/termui -address localhost:8083
            show_menu;
        ;;
		9) clear;
            option_picked "Option 9 Picked";
            cd $HOME && ./elrond-utils/termui -address localhost:8084
            show_menu;
        ;;
		10) clear;
            option_picked "Option 10 Picked";
            cd $HOME && ./elrond-utils/termui -address localhost:8085
            show_menu;
        ;;
		11) clear;
            option_picked "Option 11 Picked";
			printf "Starting Nodes: \n";
			cd ~/elrond-go-scripts-v2 && ./script.sh start
            show_menu;
        ;;
		12) clear;
            option_picked "Option 12 Picked";
			printf "Stopping Nodes: \n";
            cd ~/elrond-go-scripts-v2 && ./script.sh stop
            show_menu;
        ;;
		13) clear;
            option_picked "Option 13 Picked";
            printf "Updating Nodes: \n";
			cd ~/elrond-go-scripts-v2 && ./script.sh upgrade
            show_menu;
        ;;
		14) clear;
            option_picked "Option 14 Picked";
            printf "Current user: \n";
			whoami
            show_menu;
        ;;
		15) clear;
            option_picked "Option 15 Picked";
            printf "Editing variables.cfg: \n";
			cd ~/elrond-go-scripts-v2/config && nano variables.cfg
            show_menu;
        ;;
		16) clear;
            option_picked "Option 16 Picked";
            printf "Zip Node *.PEM files and Move to VALIDATOR_KEYS folder: \n";
			cd ~ && mkdir -p ~/VALIDATOR_KEYS
			zip $HOME/VALIDATOR_KEYS/node-0.zip $HOME/elrond-nodes/node-0/config/*.pem 
			zip $HOME/VALIDATOR_KEYS/node-1.zip $HOME/elrond-nodes/node-1/config/*.pem 
			zip $HOME/VALIDATOR_KEYS/node-2.zip $HOME/elrond-nodes/node-2/config/*.pem 
			zip $HOME/VALIDATOR_KEYS/node-3.zip $HOME/elrond-nodes/node-3/config/*.pem 
			zip $HOME/VALIDATOR_KEYS/node-4.zip $HOME/elrond-nodes/node-4/config/*.pem 
			zip $HOME/VALIDATOR_KEYS/node-5.zip $HOME/elrond-nodes/node-5/config/*.pem 
			zip $HOME/VALIDATOR_KEYS/node-6.zip $HOME/elrond-nodes/node-6/config/*.pem 
            show_menu;
        ;;
		17) clear;
            option_picked "Option 17 Picked";
            printf "Installing nodes: \n";
			cd ~/elrond-go-scripts-v2 && ./script.sh install
            show_menu;
        ;;
		18) clear;
            option_picked "Option 18 Picked";
            printf "Downloading Elrond install script.: \n";
			cd ~ && git clone https://github.com/ElrondNetwork/elrond-go-scripts-v2
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
