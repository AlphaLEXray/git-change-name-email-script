#!/bin/bash
echo "This is script is an easy way to change your Git username and/or email. Just enter your details when asked to and the script will do the rest."
echo
read -p 'Git-Username: ' uservar #enter username
read -p 'Git-Email: ' emailvar #enter email
echo
echo Your name is $uservar and your email is $emailvar
read -p 'Is this correct? Please type yes or no: ' ynvar
if [ $ynvar == "yes" ]
then
	echo Thank you for confirming. You have set your name as $uservar and your email as $emailvar.
	echo
	git config --global user.name "$uservar" #set git user
	git config --global user.email "$emailvar" #set git email
	echo 'Username: ' && git config --get user.name
	echo 'Email: ' && git config --get user.email
elif [ $ynvar == "no" ]
then
	echo
	echo Please execute the script again.
	exit
else
	echo
	echo Input not recognised. Please execute the script again.
	exit
fi
