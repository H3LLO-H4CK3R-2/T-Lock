#!/data/data/com.termux/files/usr/bin/bash

echo "_______________________________ " |lolcat
echo "|  Coded by H3LL0-H4CK3R       |" |lolcat
echo "|  Thanks for using my tool    |" |lolcat
echo "|______________________________|" |lolcat

sleep 3

echo " program started "


pkg install python
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/
clear

#TODO: hide input
read -p "Enter new password: " passone;
read -p "Repeat password: " passtwo;

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
	echo 'Login installed'

elif [ $passone != $passtwo ];
then
	echo 'Password dont match'
fi
