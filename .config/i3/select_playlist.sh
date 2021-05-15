#! /usr/bin/env bash

  #######################
#   Ф Hasintsilavina Ф   #
  #######################


chk=`grep WIN2 /etc/mtab -c`
# Check if WIN2 is mounted cause all songs are located there
if [ $chk -eq 0 ]; then
  nvlc --play-and-exit ~/Music/System_sound/Sorry_Missing_list_ttsMP3.com_VoiceText_2020-9-18_11_57_23.mp3 2>/dev/null 
  echo "Mbola mila sokafana ny SOBIKA"
  exit 0
fi

rootpath="/home/hasintsilavina/Music"
ls $rootpath/*.xspf | \
  sed -e "s-${rootpath}--g" -e "s-/--g" -e "s/.xspf//g" > list.$$

safidy=$(
  cat list.$$ | \
  rofi -dmenu -i -lines 12 -eh 1 -width 22 -padding 8 \
  -location 4 -bw 1 -columns 1 -scrollbar-width 2 -separator-style solid \
  -p "PlayHira: " -font "Nimbus Sans L Regular 12" \
  )

name=${safidy}.xspf
full_paht_name=${rootpath}/${safidy}.xspf

/home/hasintsilavina/School/DEV/bash/VLC-RANDOM/rofi-dmenu_nvlc-random-playlist.sh $name

rm *.$$

echo FIN!

