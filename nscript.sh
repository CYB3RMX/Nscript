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
  echo -en $lg1"\a\n\n["$lr1"+"$lg1"]"$w1" QUIT ? [Y/N]\n"
  read quitz
  case $quitz in
  Y) echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n" ;;
  y) echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n" ;;
  N) clear
     cd;cd Nscript
     ./nscript.sh ;;
  n) clear
     cd;cd Nscript
     ./nscript.sh ;;
  esac
}
#------------INSTALLING FUNCTION-------------@
inst()
{
  chmod +x nscript.sh
  clear
  echo -en $lr1"           _      ______ _____ _______   _\a\n"
  echo -en "     /\   | |    |  ____|  __ \__   __| | | \n"
  echo -en "    /  \  | |    | |__  | |__) | | |    | | \n"
  echo -en "   / /\ \ | |    |  __| |  _  /  | |    | | \n"
  echo -en "  / ____ \| |____| |____| | \ \  | |    |_| \n"
  echo -en " /_/    \_\______|______|_|  \_\ |_|    (_)\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1"THIS PROGRAM NEEDS NMAP..\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1"IF YOU ALREADY HAVE SELECT (N)\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1"DO YOU WANT TO INSTALL ? [Y/N]\n"
  read ins
  case $ins in
  Y) apt-get install nmap
     yum install nmap
     pacman -S nmap ;;
  y) apt-get install nmap
     yum install nmap
     pacman -S nmap ;;
  N) clear ;;
  n) clear ;;
  esac
}
inst
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
 echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ENTER YOUR TARGET:\n"
 read target
 echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
 echo " "
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
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
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
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
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
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
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
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
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
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
  read force
}
case $nscripts in
1) ports
   case $portz in
   #------------FTP ATTACK OPTION-------------@
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep ftp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 21 --script $scriptx $target
      quit ;;
   #------------SSH ATTACK OPTION-------------@
   2) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep ssh
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 22 --script $scriptx $target
      quit ;;
   #------------TELNET ATTACK OPTION-------------@
   3) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep telnet
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 23 --script $scriptx $target
      quit ;;
   #------------SMTP ATTACK OPTION-------------@
   4) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep smtp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 25 --script $scriptx $target
      quit ;;
   #------------HTTP ATTACK OPTION-------------@
   5) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep http
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 80 --script $scriptx $target
      quit ;;
   #------------HTTPS ATTACK OPTION-------------@
   6) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep https
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 443 --script $scriptx $target
      quit ;;
   #------------SMB ATTACK OPTION-------------@
   7) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep smb
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 445 --script $scriptx $target
      quit ;;
   #------------RTSP ATTACK OPTION-------------@
   8) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep rtsp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 554 --script $scriptx $target
      quit ;;
   #------------SNMP ATTACK OPTION-------------@
   9) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep snmp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 161 --script $scriptx $target
      quit ;;
   x) cd;cd Nscript
      clear
      ./nscript.sh ;;
   esac ;;
#--------------------------@
2) routers
   case $routerz in
   #------------CISCO ATTACK OPTION-------------@
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep cisco
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT --script $scriptx $target
      quit ;;
   #------------DLINK ATTACK OPTION-------------@
   2) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep dlink
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT --script $scriptx $target
      quit ;;
   #------------TPLINK ATTACK OPTION-------------@
   3) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep tplink
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT --script $scriptx $target
      quit ;;
   x) cd;cd Nscript
      clear
      ./nscript.sh ;;
   esac ;;
3) sql
   case $sql_select in
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep sql
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 3306 --script $scriptx $target
      quit ;;
   x) cd;cd Nscript
      clear
      ./nscript.sh ;;
   esac ;;
4) ios_hack
   case $ios in
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep ios
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV --script $scriptx $target
      quit ;;
   x) cd;cd Nscript
      clear
      ./nscript.sh ;;
   esac ;;
5) brute_force
   case $force in
   1) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 21 --script ftp-brute.nse $target
      quit ;;
   2) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 22 --script ssh-brute.nse $target
      quit ;;
   3) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 23 --script telnet-brute.nse $target
      quit ;;
   4) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 25 --script smtp-brute.nse $target
      quit ;;
   5) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 161 --script snmp-brute.nse $target
      quit ;;
   6) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep http-brute
      ls | grep http-auth
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT:\n"
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 80 --script $scriptx $target
      quit ;;
   7) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 53 --script dns-brute.nse $target
      quit ;;
   8) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 3306 --script mysql-brute.nse $target
      quit ;;
   9) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -sT -p 5900 --script vnc-brute.nse $target
      quit ;;
   10) cd;cd ..;cd usr/share/nmap/scripts
       echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
       nmap -Pn -sV -sT -p 445 --script smb-brute.nse $target
       quit ;;
   x) cd;cd Nscript
      clear
      ./nscript.sh ;;
   esac ;;
x) quit ;;
esac
