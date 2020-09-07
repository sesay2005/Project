#!/bin/bash
#Date:may-4-2015
#Author:ABS
#Discription:Check customer age

echo "Please answer the question below"

echo "How old are you?"
read O

if
 [ $O -gt 85 ] ; then
echo "Did you need any assistance?"

exit 0

elif
 [ $O -ge 18 ] ; then

 echo "Welcome to the store, please visite aile 13 for our special offer"
else
 echo "You are not allowd to shop alon. Please report at the infomation desk"
fi

