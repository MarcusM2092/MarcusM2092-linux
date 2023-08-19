#!/bin/bash
read -p "enter hash to crack: " hash
hashid $hash
echo "0 = MD5"
echo "900 = MD4"
echo "100 = SHA1"
echo "1400 = SHA-256"
echo "3200 = bcrypt $2*$"
echo "1000 = NTLM"
read -p "enter hash type: " type
hashcat -m $type -a 0 -d 1 -o cracked.txt $hash /media/marcus/hashcat_wordlist/weakpass_3p.txt /media/marcus/hashcat_wordlist/weakpass_3w.txt /media/marcus/hashcat_wordlist/weakpass_3.txt /media/marcus/hashcat_wordlist/cyclone.hashesorg.hashkiller.combined.txt /media/marcus/hashcat_wordlist/Top304Thousand-probable-v2.txt /media/marcus/hashcat_wordlist/2digit.txt /media/marcus/hashcat_wordlist/3digit.txt /media/marcus/hashcat_wordlist/4digit.txt /media/marcus/hashcat_wordlist/5digit.txt /media/marcus/hashcat_wordlist/6digit.txt /media/marcus/hashcat_wordlist/7digit.txt /media/marcus/hashcat_wordlist/8digit.txt -O
hashcat -m $type $hash --show
