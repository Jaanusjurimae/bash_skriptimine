#!/bin/bash
#
#apache2 kontroll
#kas apache2 on juba installitud
apache=$(dpkg --status apache2 | grep -c "ok installed")
# kui pole, vastus  0
if [ $apache -eq 0 ]; then
	echo "Toimub apache paigaldus"
	apt install apache2 -y
	echo "Apache on installeeritud"
#Kui apache olemas  muutuja 1
elif [ $apache -eq 1 ]; then
	echo "apache2 on juba paigaldatud"
	#annan teada et juba installitud
	service apache2 start
	service apache2 status
#lõpp
fi
