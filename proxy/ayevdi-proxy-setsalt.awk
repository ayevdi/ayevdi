# AYESEC:POST_SHS('18 lines')=9da1fc9afc1b85e1e81e78a53f97d4436d886182eec170ddd6c78ec71e64113d9ade4fd1bf969ed5bbe62baed9a575d2b5e3ccdc0383c27eb7a4b6bc71965afe
# AYESEC:STATUTORY_HEADER
if [ "${ayevdi_sourcefrom}" != "${HOME}/.ayevdi/ayevdi-sourcefrom" ]
then
  echo "AyeVDI by https://ayeai.xyz"
  echo "Copyright (C) 2019-2020 Abhishek Choudhary, Dr Srija Katta"
  echo ""
  echo "NO WARRANTY, and ZERO LIABILITY (Limited to INR 1/- only)"
  echo "Further usage of these software, artifacts or methods"
  echo "are subject to the 'latest' license agreement avaialble at"
  echo "https://raw.githubusercontent.com/ayeai/spl/master/LICENSE"
  echo ""
  echo "AyeVDI not activated. Please use the following command to"
  echo "activate AyeVDI"
  echo '  ayesh=$(tempfile) && wget https://bit.ly/ayevdi-sfrom-init -O${ayesh} -q && . ${ayesh}'
  echo ""
  exit
fi
# AYESEC:STATUTORY_HEADER_COMPLETED
# AYESEC:PREV_SHS('18 lines')=9da1fc9afc1b85e1e81e78a53f97d4436d886182eec170ddd6c78ec71e64113d9ade4fd1bf969ed5bbe62baed9a575d2b5e3ccdc0383c27eb7a4b6bc71965afe

# Copyright (C) 2019 Abhishek Choudhary
# Released under GNU GPL v2 license

BEGIN        {
               srand(seed); 
#              ready=0; 
#              over=0;
             }

# Presumption warning: This script presumes that there will be only one module block referenced
# TODO: Add more contextual parsing
/\/IfModule/ {
               for (i=10000; i<=65000; i++)
               {
                 r= 0x11ffff * (1+rand());
                 printf "\t <Location /ay%06x1n%06x>\n\t\tProxyPass http://127.0.0.1:%d/\n\t</Location>\n",
                   0xeedfba - i*179-r, 
                   0xfdebca - i*179+r, i;
               }
                 print $0;
                 next;
               }

/.*/         {
               print $0;
             }

#validate:
#| grep Location | cut -d'/' -f2 | cut -d'>' -f1 | grep -v Location | sed 's/ay/0x/g;s/1n/ 0x/g' | awk '{a=0xeedfba - strtonum($1); b=0xfdebca - strtonum($2); r=(b-a-1)/2; x=(a+r)/179; print $0, a,b,r,x}' | less
#pipe through above filter to recreate port numbers in rightmost column
