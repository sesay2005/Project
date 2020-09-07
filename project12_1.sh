#!/bin/bash
#Date:Sep-07-09-2020
#Author:ABS
#Discription:Check if installation was successful

echo "\n*****Check if installation was successful*****\n"

echo -e "\nCheck if group admin was created\n"

grep admin /etc/group >/dev/null2>&1

if [ $? -eq 0 ] ; then

  echo "Group admin was created"
else
  echo "Group admin was not created"
fi

echo -e "\nCheck if user abie was created\n"

grep abie /etc/passwd >/dev/null2>&1

if [ $? -eq 0 ] ; then

  echo "User abie was created"
else
  echo "User abie was not created"
fi

echo -e "\nCheck if group family was created\n"

grep family /etc/group >/dev/null2>&1

if [ $? -eq 0 ] ; then

  echo "Group family was created"
else
  echo "Group family was not created"
fi

echo -e "\nCheck if the user  and the group was created\n"

grep family /etc/group | awk -F":" '{ print $3}' >/dev/null2>&1

if
 [ $? -eq 0 ] ; then

 echo "Group family and user abie was created"
else
 echo "Group family and user abie was not created"
fi

echo -e "\nCheck if wget was install\n"

rpm -qa | grep wget >/dev/null2>&1

if
 [ $? -eq 0 ] ; then

 echo "wget was install"
else
 echo "wget was not install"
fi

echo -e "\nCheck if finger was install\n"

rpm -qa | grep finger >/dev/null2>&1

if
 [ $? -eq 0 ] ; then

 echo "finger was install"
else
 echo "finger was not install"
fi

echo -e "\nCheck if httpd was install\n"

rpm -qa | grep httpd >/dev/null2>&1

if
 [ $? -eq 0 ] ; then

 echo "httpd was install"
else
 echo "httpd was not install"
fi

