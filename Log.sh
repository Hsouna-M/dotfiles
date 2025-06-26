#!/bin/bash
echo "" >> /path/to/the/log/file
echo "$(xclip -o)" >> /path/to/the/log/file
echo "" >> /path/to/the/log/file
echo "---" >> /path/to/the/log/file
notify-send "LOG" "Log Updated Successfully"

