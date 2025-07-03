#!/bin/bash

secondBrain="$HOME/Documents/Obs/secondBrain"
noteFile="$secondBrain/$(ls "$secondBrain"| dmenu -l 20)"

while [ -d "$noteFile" ] 
do
noteFile="$noteFile/$(ls "$noteFile"| dmenu -l 20)"
done

#echo "" >> "$noteFile"
#echo "$(xclip -o)" >> "$noteFile"
#echo "" >>  "$noteFile"
#echo "---" >>  "$noteFile"


notify-send "Note Log" "$(echo $noteFile | awk -F'/' '{ print $NF }') updated Successfully"

