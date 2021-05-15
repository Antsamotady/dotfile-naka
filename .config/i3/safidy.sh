#! /usr/bin/env bash

  #######################
#   Ф Hasintsilavina Ф   #
  #######################

safidy=$(
  echo -e "Hibernate\nReboot\nShutdown\nSuspend\nSusbernate" | \
  rofi -dmenu -i -lines 6 -eh 1 -width 22 -padding 12 \
  -location 4 -bw 1 -columns 1 -scrollbar-width 0 -separator-style solid \
  -p "System: " -font "Nimbus Sans L Regular 12" \
  )

case $safidy in
  Reboot ) echo "Nisafidy Reboot ianao :)"
    systemctl reboot
  ;;
  Shutdown ) echo "Nisafidy Shutdown ianao :)"
    systemctl poweroff
  ;;
  Hibernate ) echo "Nisafidy Hibernate ianao :)"
    systemctl hibernate
  ;;
  Suspend ) echo "Nisafidy Veille ianao :)"
    systemctl suspend
  ;;
  Susbernate ) echo "Nisafidy Veille hibernée ianao :)"
    systemctl hybrid-sleep
  ;;
esac
