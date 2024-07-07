#!/bin/bash
#use
#´xfconf-query -c xfce4-keyboard-shortcuts -lv´ to list all active shortcuts
#´xfconf-query -c xfce4-keyboard-shortcuts -p /commands/custom -l -v´ list all custom shortcuts
#Remove custom shortcut with:
#xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Alt>F2' -r -R
#Whisker menu super key
#/commands/custom/Super_L                  xfce4-popup-whiskermenu
#Example:

#xfconf-query -c <CHANNEL> -p <PROPERTY> -n -t <TYPE> -s <VALUE>
#list channels with `xfconf-query -l`

# List all of the properties and values of a channel, for shorcuts replace <CHANNEL> to xfce4-keyboard-shortcuts
#xfconf-query -c <CHANNEL> -lv

xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/commands/custom/Super_L' -s 'xfce4-popup-whiskermenu'



#Tile window default shortcuts:
#/xfwm4/default/<Super>KP_Down              tile_down_key
#/xfwm4/default/<Super>KP_End               tile_down_left_key
#/xfwm4/default/<Super>KP_Home              tile_up_left_key
#/xfwm4/default/<Super>KP_Left              tile_left_key
#/xfwm4/default/<Super>KP_Next              tile_down_right_key
#/xfwm4/default/<Super>KP_Page_Up           tile_up_right_key
#/xfwm4/default/<Super>KP_Right             tile_right_key
#/xfwm4/default/<Super>KP_Up                tile_up_key

#Custom:
#Change super key to alt key because there is a conflict with the current super key shortcut which has been already setted for the xfce4-whisker-popup. Makes it unpossible to use the default tile shortcuts
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Page_Up' -s 'tile_up_right_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Home' -s 'tile_up_left_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Page_Down' -s 'tile_down_right_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_End' -s 'tile_down_left_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Left' -s 'tile_left_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Right' -s 'tile_right_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Down' -s 'tile_down_key'
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/xfwm4/custom/<Alt>KP_Up' -s 'tile_up_key'

USER=$(whoami)
xfconf-query -c xfce4-keyboard-shortcuts -n -t 'string' -p '/commands/custom/<Primary><Alt>t' -s "/home/$USER/dotfiles/scripts/terminal.sh"

echo "Need to install xdotool"
sudo apt install xdotool -y
