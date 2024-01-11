#!/bin/bash

hyprDir="$HOME/.config/hypr/configs"
hyprScrpts="$HOME/.config/hypr/scripts"

menu(){
  printf "1. view Env-variables\n"
  printf "2. view Rules\n"
  printf "3. view Execs (startup)\n"
  printf "4. view KeyBinds\n"
  printf "5. view Monitors\n"
  printf "6. view Laptop-Keybinds\n"
  printf "7. view Hyprland-Settings\n"
  printf "8. view Quick Edit Script\n"
}

main() {
    choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-compact.rasi | cut -d. -f1)
    case $choice in
        1)
            emacsclient -c "$hyprDir/ENVariables.conf" -a ''
            ;;
        2)
            emacsclient -c "$hyprDir/WindowRules.conf" -a ''
            ;;
        3)
            emacsclient -c "$hyprDir/Execs.conf" -a ''
            ;;
        4)
            emacsclient -c "$hyprDir/Keybinds.conf" -a ''
            ;;
        5)
            emacsclient -c "$hyprDir/Monitors.conf" -a ''
            ;;
        6)
            emacsclient -c "$hyprDir/Laptops.conf" -a ''
            ;;
        7)
            emacsclient -c "$hyprDir/Settings.conf" -a ''
            ;;
        8)
            emacsclient -c "$hyprScrpts/QuickEdit.sh" -a ''
            ;;
        *)
            ;;
    esac
}

main
