#!/bin/bash
ip='www.google.com'
while(true)
do
	sleep 1
	data=$(ping -n 1 ${ip} | grep 'Reply' | cut -d ' ' -f 5&)
	sub_data=${data:5:-2} #substring so only int left
	time=$(date)
	if(($sub_data>=90))
	then
		echo -e "\e[38;5;1m"${data} "\e[0m"${time} >> /d/beatmil/ping_log.txt # red
		echo -e "\e[38;5;1m"${data} "\e[0m"${time} 
	elif(($sub_data>=50))
	then
		echo -e "\e[38;5;226m"${data} "\e[0m"${time} >> /d/beatmil/ping_log.txt # yellow
		echo -e "\e[38;5;226m"${data} "\e[0m"${time} 
	else
		echo -e ${data} ${time}"\e[0m" >> /d/beatmil/ping_log.txt #text color (always change back to white)
		echo -e ${data} ${time}"\e[0m" 
	fi
done
