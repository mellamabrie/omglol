#!/bin/bash
# For this big festival, a group on campus had a webcam showing the parking lot where the festival was held.
# I wrote this script to take a snapshot every 15 minutes of the whole event.
# This script ran on a Web server that hosted example.tld.
# Each snap shot was put in to a directory on that site.
# I later used the scripts in the gifmaker directory to make a GIF of the whole festival.

DATE=`date +%Y`-`date +%B`-`date +%d`-`date +%H`-`date +%M`-`date +%N`
cd /home/mellamabrie/example.tld/festival/ ; /usr/bin/wget http://festival.activitiesboard.org/image.jpg
/bin/mv /home/mellamabrie/example.tld/festival/image.jpg /home/mellamabrie/example.tld/festival/festival.`echo $DATE`.jpg
