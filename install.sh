#!/usr/bin/env bash

COLOR_RESET=$(tput sgr0)
COLOR_RED=$(tput setaf 1)
COLOR_GREEN=$(tput setaf 2)
COLOR_YELLOW=$(tput setaf 3)
COLOR_BLUE=$(tput setaf 4)
COLOR_PURPLE=$(tput setaf 5)
COLOR_CYAN=$(tput setaf 6)

echo "Welcome to the custom ${COLOR_CYAN}Arch Linux${COLOR_RESET} installation script from ${COLOR_CYAN}Noir${COLOR_RESET} user.\n"

echo "${RED_COLOR}WARNING! This script may not work correctly on your system.${COLOR_RESET}\n"
echo "${COLOR_YELLOW}When running this script, ${COLOR_RED}you must understand that it does not guarantee the correct installation of Arch Linux on your machine.${COLOR_RESET}\n"
echo "${COLOR_YELLOW}It can also ${COLOR_RED}disrupt your disk layout, as well as erase data from it during execution${COLOR_YELLOW}, in this case you will have to install another system on your machine.${COLOR_RESET}\n"
echo "${COLOR_YELLOW}Be careful and make sure you are confident before running this script.${COLOR_RESET}\n\n"
echo "${GREEN_COLOR}Good luck!${COLOR_RESET}"
