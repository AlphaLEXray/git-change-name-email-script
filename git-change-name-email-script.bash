#!/bin/bash
echo This is script is an easy way to change your Git username and/or email. Just enter your details when asked to and the script will do the rest.
echo
read -p 'Git-Username: ' uservar
read -p 'Git-Email: ' emailvar
echo
echo Your name is $uservar and your email is $emailvar
read -p 'Is this corret? Please type yes or no: ' ynvar
if [$read == $no] #if input = no
then
	$quit #quits the script
else
	echo Thank you for confirming. You have set your name as $uservar and your email as $emailvar.
fi
echo
git config --global user.name "$uservar" #sets username
git config --global user.email "$emailvar" #sets email
echo 'Username: ' && git config --get user.name
echo 'Email: ' && git config --get user.email
