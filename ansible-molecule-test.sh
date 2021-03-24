#!/bin/bash
current_dir=`pwd`
echo "$current_dir"
roles="role"
role_list=`ls $roles/`
echo "$role_list"
for role_dir in $role_list
    do
	cd $roles/$role_dir
    molecule test
	if [ "$?" != "0" ]; then
	break
	fi
done






