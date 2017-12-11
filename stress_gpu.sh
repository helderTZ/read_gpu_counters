#!/bin/bash

# function to kill all children processes of this bash
finish()
{
	kill `jobs -p` > /dev/null 2>&1
}

# makes it so when CTR+C is used (SIGINT received) 
# the function finish() is called
trap "finish" SIGINT SIGTERM

#WIDTH=1920
#HEIGHT=1080
LIST=`seq 1 9`	# creates a list of numbers [1:9]

# spawn windows
for i in $LIST;
do
	nohup glxgears > /dev/null 2>&1 &
done

# get window IDs
WINIDS=$( wmctrl -l | grep 'glxgears' | awk '{print $1}' )
echo "$WINIDS"

#for i in $WINIDS;
#do
#	echo "$i"
#	wmctrl -i -a "$i" -e '0,200,200,200,200'
#done

echo "Waiting for Ctr+C ..."
cat # wait forever