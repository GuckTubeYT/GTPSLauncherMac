#!/bin/bash
 ######   ######## ########   ######  ##          ###    ##     ## ##    ##  ######  ##     ## ######## ########  
##    ##     ##    ##     ## ##    ## ##         ## ##   ##     ## ###   ## ##    ## ##     ## ##       ##     ## 
##           ##    ##     ## ##       ##        ##   ##  ##     ## ####  ## ##       ##     ## ##       ##     ## 
##   ####    ##    ########   ######  ##       ##     ## ##     ## ## ## ## ##       ######### ######   ########  
##    ##     ##    ##              ## ##       ######### ##     ## ##  #### ##       ##     ## ##       ##   ##   
##    ##     ##    ##        ##    ## ##       ##     ## ##     ## ##   ### ##    ## ##     ## ##       ##    ##  
 ######      ##    ##         ######  ######## ##     ##  #######  ##    ##  ######  ##     ## ######## ##     ## 


if [ "$EUID" -ne 0 ]
  then echo "ERROR: Please Run as Sudo/Root, Type 'sudo ./name.sh'"
  exit
fi
clear
echo ""
echo "##    ##    ###    ##     ## ######## "
echo "###   ##   ## ##   ###   ### ##       "
echo "####  ##  ##   ##  #### #### ##       "
echo "## ## ## ##     ## ## ### ## ######   "
echo "##  #### ######### ##     ## ##       "
echo "##   ### ##     ## ##     ## ##       "
echo "##    ## ##     ## ##     ## ######## "
echo ""
PS3="Please Select Number (1-3): "
select shuttle in "Turn On" "Turn Off" "Exit"
do
    case $shuttle in
                "Turn On")
                        echo ""
                        echo $(hostname -I | cut -d\  -f1) $(hostname) | sudo tee -a /etc/hosts
                        sudo echo "# GTPS Launcher for Mac/Linux by GuckTube YT" >> /etc/hosts
                        sudo echo "# GTPS Is Turn On" >> /etc/hosts
                        sudo echo "IPHOST growtopia1.com" >> /etc/hosts
                        sudo echo "IPHOST growtopia2.com" >> /etc/hosts
						                        echo "GTPS Is Turn On"                                                                                                  ;;
                "Turn Off")
                        echo ""
                        echo $(hostname -I | cut -d\  -f1) $(hostname) | sudo tee -a /etc/hosts
                        sudo echo "# GTPS Launcher for Mac/Linux by GuckTube YT" >> /etc/hosts
                        sudo echo "# GTPS Is Turn Off" >> /etc/hosts
                        echo "GTPS Is Turn Off"
                        ;;
                "Exit")
                        exit
                        ;;
                *)
                        echo "Error: Wrong Number (select 1 - 3)"
                        echo ""
                        echo "##    ##    ###    ##     ## ######## "
						echo "###   ##   ## ##   ###   ### ##       "
						echo "####  ##  ##   ##  #### #### ##       "
						echo "## ## ## ##     ## ## ### ## ######   "
						echo "##  #### ######### ##     ## ##       "
						echo "##   ### ##     ## ##     ## ##       "
						echo "##    ## ##     ## ##     ## ######## "
                        echo ""
                        ;;
        esac
done
