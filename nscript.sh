#!/usr/bin/bash
#-*- encoding: utf-8 -*-

#------------COLOR ANT FONT AREA-------------@
lg1='\e[92m'
lg2='\e[102m'
lr1='\e[91m'
lr2='\e[101m'
lbl2='\e[104m'
def2='\e[49m'
black1='\e[30m'
lc1='\e[96m'
ly1='\e[93m'
ly2='\e[103m'
lm1='\e[95m'
w1='\e[0m'
defbl='\e[49m'
#------------GRAPHICS AREA-------------@
#------------QUIT PROGRAM FUNCTION-------------@
quit()
{
    echo -en $lg1"\a\n\n["$lr1"+"$lg1"]"$w1" QUIT [y/N]?: "
    read quitz
    case $quitz in
        Y) if [ -e .target.txt ];then
                rm -rf .target.txt
            fi
        echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n";;
        y) if [ -e .target.txt ];then
                rm -rf .target.txt
            fi
        echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n" ;;
        N) clear
        bash nscript.sh ;;
        n) clear
        bash nscript.sh ;;
    esac
}
#------------Dependency check-------------@
command -v nmap > /dev/null 2>&1 || { echo >&2 'This program needs nmap. Please install it to use this tool.' ; exit 1; }
#------------OPENING SCREEN-------------@
opening()
{
    clear
    echo -en $lr1"  _   _               _       _\a\n"
    echo -en " | \ | |             (_)     | | \n"
    echo -en " |  \| |___  ___ ____ _ ____ | |_\n"
    echo -en " |     / __|/ __|  __| |  _ \| __| \n"
    echo -en " | |\  \__ \ (__| |  | | |_) | |_\n"
    echo -en " |_| \_|___/\___|_|  |_|  __/ \__| \n"
    echo -en "                       | | \n"
    echo -en "                       |_| \n"
    echo -en $lbl2$black1"\nBY CYB3RMX_" $def2
    echo -en $def2"\n"
    echo -en $lg1"\n["$lr1"1"$lg1"]"$w1" SCRIPT ATTACK"
    echo -en $lg1"\n["$lr1"2"$lg1"]"$w1" ALIVE HOST SCAN"
    echo -en $lg1"\n\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
    read sell
    case $sell in
        1) scriptz ;;
        2) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ENTER SUBNET (example: 192.168.1.0/24): "
            read broad
            nmap -Pn -sV $broad
        quit ;;
    esac
}
scriptz()
{
    if [ -e .target.txt ];then
        target=$(cat .target.txt)
        echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => ${lc1}${target}\n"
    else
        echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ENTER YOUR TARGET: "
        read target
        echo $target > .target.txt
        echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => ${lc1}${target}\n"
    fi
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" SCRIPTS MENU\n\n"
    echo -en $lg1"["$lr1"1"$lg1"]"$w1" PORT ATTACKS\n"
    echo -en $lg1"["$lr1"2"$lg1"]"$w1" ROUTER ATTACKS\n"
    echo -en $lg1"["$lr1"3"$lg1"]"$w1" SQL DATA ATTACK\n"
    echo -en $lg1"["$lr1"4"$lg1"]"$w1" IOS HACKING\n"
    echo -en $lg1"["$lr1"5"$lg1"]"$w1" BRUTE FORCE\n"
    echo -en $lg1"["$lr1"x"$lg1"]"$w1" QUIT...\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
    read nscripts
}
opening
#------------PORT ATTACK OPTION-------------@
ports()
{
    clear
    echo -en $lr1" _____   ____  _____ _______ _____\a\n"
    echo -en "|  __ \ / __ \|  __ \__   __/ ____| \n"
    echo -en "| |__) | |  | | |__) | | | | (___\n"
    echo -en "|  ___/| |  | |  _  /  | |  \___ \ \n"
    echo -en "| |    | |__| | | \ \  | |  ____) | \n"
    echo -en "|_|     \____/|_|  \_\ |_| |_____/ \n\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
    echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" FTP HACKING\n"
    echo -en $lg1"["$lr1"2"$lg1"]"$w1" SSH HACKING\n"
    echo -en $lg1"["$lr1"3"$lg1"]"$w1" TELNET HACKING\n"
    echo -en $lg1"["$lr1"4"$lg1"]"$w1" SMTP HACKING\n"
    echo -en $lg1"["$lr1"5"$lg1"]"$w1" HTTP HACKING\n"
    echo -en $lg1"["$lr1"6"$lg1"]"$w1" HTTPS HACKING\n"
    echo -en $lg1"["$lr1"7"$lg1"]"$w1" SAMBA HACKING\n"
    echo -en $lg1"["$lr1"8"$lg1"]"$w1" RTSP HACKING\n"
    echo -en $lg1"["$lr1"9"$lg1"]"$w1" SNMP HACKING\n"
    echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
    read portz
}
#------------ROUTER ATTACK OPTION-------------@
routers()
{
    clear
    echo -en " _____   ____  _    _ _______ ______ _____   _____\a\n"
    echo -en "|  __ \ / __ \| |  | |__   __|  ____|  __ \ / ____| \n"
    echo -en "| |__) | |  | | |  | |  | |  | |__  | |__) | (___\n"
    echo -en "|  _  /| |  | | |  | |  | |  |  __| |  _  / \___ \ \n"
    echo -en "| | \ \| |__| | |__| |  | |  | |____| | \ \ ____) | \n"
    echo -en "|_|  \_ \____/ \____/   |_|  |______|_|  \_\_____/ \n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
    echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" CISCO\n"
    echo -en $lg1"["$lr1"2"$lg1"]"$w1" DLINK\n"
    echo -en $lg1"["$lr1"3"$lg1"]"$w1" TPLINK\n"
    echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
    read routerz
}
#------------SQL DATA ATTACK OPTION-------------@
sql()
{
    clear
    echo -en $lc1"  _____  ____  _\a\n"
    echo -en " / ____|/ __ \| | \n"
    echo -en "| (___ | |  | | | \n"
    echo -en " \___ \| |  | | | \n"
    echo -en " ____) | |__| | |____\n"
    echo -en "|_____/ \___\_\______| \n"
    echo -en $lg1"       _____       _______\n"
    echo -en "      |  __ \   /\|__   __|/\ \n"
    echo -en "      | |  | | /  \  | |  /  \ \n"
    echo -en "      | |  | |/ /\ \ | | / /\ \ \n"
    echo -en "      | |__| / ____ \| |/ ____ \ \n"
    echo -en "      |_____/_/    \_\_/_/    \_\ \n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
    echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" AVAILABLE SCRIPTS\n"
    echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
    read sql_select
}
ios_hack()
{
    clear
    echo -en $lg1"  _____ ____   _____\a\n"
    echo -en " |_   _/ __ \ / ____| \n"
    echo -en "   | || |  | | (___\n"
    echo -en "   | || |  | |\___ \ \n"
    echo -en "  _| || |__| |____) | \n"
    echo -en " |_____\____/|_____/ \n"
    echo -en $ly1"       _    _          _____ _  __\n"
    echo -en "      | |  | |   /\   / ____| |/ / \n"
    echo -en "      | |__| |  /  \ | |    |   / \n"
    echo -en "      |  __  | / /\ \| |    |  < \n"
    echo -en "      | |  | |/ ____ \ |____|   \ \n"
    echo -en "      |_|  |_/_/    \_\_____|_|\_\ \n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
    echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" AVAILABLE SCRIPTS\n"
    echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
    read ios
}
brute_force()
{
    clear
    echo -en $lm1"  ____  _____  _    _ _______ ______\a\n"
    echo -en " |  _ \|  __ \| |  | |__   __|  ____| \n"
    echo -en " | |_) | |__) | |  | |  | |  | |__\n"
    echo -en " |  _ <|  _  /| |  | |  | |  |  __| \n"
    echo -en " | |_) | | \ \| |__| |  | |  | |____\n"
    echo -en " |____/|_|  \_ \____/   |_|  |______| \n"
    echo -en $lr1"       ______ ____  _____   _____ ______\n"
    echo -en "      |  ____/ __ \|  __ \ / ____|  ____| \n"
    echo -en "      | |__ | |  | | |__) | |    | |__\n"
    echo -en "      |  __|| |  | |  _  /| |    |  __| \n"
    echo -en "      | |   | |__| | | \ \| |____| |____\n"
    echo -en "      |_|    \____/|_|  \_\______|______| \n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
    echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" FTP BRUTE\n"
    echo -en $lg1"["$lr1"2"$lg1"]"$w1" SSH BRUTE\n"
    echo -en $lg1"["$lr1"3"$lg1"]"$w1" TELNET BRUTE\n"
    echo -en $lg1"["$lr1"4"$lg1"]"$w1" SMTP BRUTE\n"
    echo -en $lg1"["$lr1"5"$lg1"]"$w1" SNMP BRUTE\n"
    echo -en $lg1"["$lr1"6"$lg1"]"$w1" HTTP BRUTE\n"
    echo -en $lg1"["$lr1"7"$lg1"]"$w1" DNS BRUTE\n"
    echo -en $lg1"["$lr1"8"$lg1"]"$w1" MYSQL BRUTE\n"
    echo -en $lg1"["$lr1"9"$lg1"]"$w1" VNC BRUTE\n"
    echo -en $lg1"["$lr1"10"$lg1"]"$w1" SMB BRUTE\n"
    echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
    echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
    read force
}
case $nscripts in
    1) ports
        case $portz in
            #------------FTP ATTACK OPTION-------------@
            1) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep ftp)
                echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 21 --script $scriptx $target
            quit ;;
            #------------SSH ATTACK OPTION-------------@
            2) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep ssh)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 22 --script $scriptx $target
            quit ;;
            #------------TELNET ATTACK OPTION-------------@
            3) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep telnet)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 23 --script $scriptx $target
            quit ;;
            #------------SMTP ATTACK OPTION-------------@
            4) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep smtp)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 25 --script $scriptx $target
            quit ;;
            #------------HTTP ATTACK OPTION-------------@
            5) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep http)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 80 --script $scriptx $target
            quit ;;
            #------------HTTPS ATTACK OPTION-------------@
            6) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep https)      
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 443 --script $scriptx $target
            quit ;;
            #------------SMB ATTACK OPTION-------------@
            7) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep smb)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 445 --script $scriptx $target
            quit ;;
            #------------RTSP ATTACK OPTION-------------@
            8) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep rtsp)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 554 --script $scriptx $target
            quit ;;
            #------------SNMP ATTACK OPTION-------------@
            9) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep snmp)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 161 --script $scriptx $target
            quit ;;
            x) clear
            bash nscript.sh ;;
    esac ;;
    #--------------------------@
    2) routers
        case $routerz in
            #------------CISCO ATTACK OPTION-------------@
            1) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep cisco)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV --script $scriptx $target
            quit ;;
            #------------DLINK ATTACK OPTION-------------@
            2) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep dlink)      
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV --script $scriptx $target
            quit ;;
            #------------TPLINK ATTACK OPTION-------------@
            3) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep tplink)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV --script $scriptx $target
            quit ;;
            x) clear
            bash nscript.sh ;;
    esac ;;
    3) sql
        case $sql_select in
            1) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep sql)      
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 3306 --script $scriptx $target
            quit ;;
            x) clear
            bash nscript.sh ;;
    esac ;;
    4) ios_hack
        case $ios in
            1) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep ios)
               echo $myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV --script $scriptx $target
            quit ;;
            x) clear
            bash nscript.sh ;;
    esac ;;
    5) brute_force
        case $force in
            1) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 21 --script ftp-brute $target
            quit ;;
            2) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 22 --script ssh-brute $target
            quit ;;
            3) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 23 --script telnet-brute $target
            quit ;;
            4) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 25 --script smtp-brute $target
            quit ;;
            5) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 161 --script snmp-brute $target
            quit ;;
            6) myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep http-brute)
               echo $myscr
               myscr=$(ls /data/data/com.termux/files/usr/share/nmap/scripts | grep http-auth)
               echo $ myscr
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
                read scriptx
                echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 80 --script $scriptx $target
            quit ;;
            7) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 53 --script dns-brute $target
            quit ;;
            8) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 3306 --script mysql-brute $target
            quit ;;
            9) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 5900 --script vnc-brute $target
            quit ;;
            10) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
                nmap -Pn -sV -p 445 --script smb-brute $target
            quit ;;
            x) clear
            bash nscript.sh ;;
    esac ;;
    x) if [ -e .target.txt ];then
                rm -rf .target.txt
            fi
        echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n"
        exit 0 ;;
esac
