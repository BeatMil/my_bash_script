#!/bin/bash
if [ -z "$1" ]
then
    echo "cpp file needed";
else
    file_name=$(echo $1 | cut -d'.' -f 1);
    file_name_exe="$file_name.exe";
    g++ -g $1 -o $file_name_exe;
    ./$file_name_exe;
fi