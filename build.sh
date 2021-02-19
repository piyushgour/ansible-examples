#!/bin/bash
file_list=`find . -type f -iname "*.yml" -not -name ".*"`
echo "$file_list"
for file in $file_list
	do
	ansible-playbook $file --syntax-check
	if [ "$?" != "0" ]; then
	break
	fi
done
