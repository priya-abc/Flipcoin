#!/bin/bash
#Welcome message
echo "Flip coin simulation winnings of heads and tails are done in this program"
flip=$((RANDOM%2))
h=0
t=0
diff=0
flag=0
while (( $diff < 2 ))
do
flip=$((RANDOM%2))
   if (( $flip == 1 ))
   then
   ((h++))
   if(( $t == 21 ))
   then
       continue
fi
else
((t++))
    if (( $h >=21 | $t >=21))
    then
 diff=$(($h-$t))
          if (( $diff < 0 ))
          then
              diff=`expr $diff * -1`
              flag=1
              fi
       fi
