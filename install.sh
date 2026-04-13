#!/usr/bin/env bash

COLOR_RESET=$(tput sgr0)
COLOR_RED=$(tput setaf 1)
COLOR_GREEN=$(tput setaf 2)
COLOR_YELLOW=$(tput setaf 3)
COLOR_BLUE=$(tput setaf 4)
COLOR_PURPLE=$(tput setaf 5)
COLOR_CYAN=$(tput setaf 6)

printf "Welcome to the custom ${COLOR_CYAN}Arch Linux${COLOR_RESET} installation script from ${COLOR_CYAN}Noir${COLOR_RESET} user.\n\n"

printf "${COLOR_RED}WARNING! This script may not work correctly on your system.${COLOR_RESET}\n"
printf "${COLOR_YELLOW}When running this script, ${COLOR_RED}you must understand that it does not guarantee the correct installation of Arch Linux on your machine.${COLOR_RESET}\n"
printf "${COLOR_YELLOW}It can also ${COLOR_RED}disrupt your disk layout, as well as erase data from it during execution${COLOR_YELLOW}, in this case you will have to install another system on your machine.${COLOR_RESET}\n"
printf "${COLOR_YELLOW}Be careful and make sure you are confident before running this script.${COLOR_RESET}\n\n"

printf "${COLOR_GREEN}Good luck!${COLOR_RESET}\n\n"

while true; do
  read -rp "${COLOR_YELLOW}Are you sure you want to continue running the installation script? (y/n): ${COLOR_RESET}" answer
  printf "\n"

  answer=${answer,,}

  if [[ "$answer" == "y" ]]; then
    printf "${COLOR_GREEN}Running the installation script...${COLOR_RESET}\n\n"
    break
  elif [[ "$answer" == "n" ]]; then
    printf "${COLOR_GREEN}Stopping the installation script....${COLOR_RESET}\n\n"
    exit 0
  else
    printf "${COLOR_YELLOW}Please enter the correct answer (y/n).${COLOR_RESET}\n"
  fi
done

printf "Updating live image packages...\n"

PACMAN_UPDATE_LOG_FILE="/tmp/pacman_update.log"

if pacman -Syu --noconfirm > "$PACMAN_UPDATE_LOG_FILE" 2>&1; then
  printf "${COLOR_GREEN}System updated successfully.${COLOR_RESET}\n"
else
  printf "${COLOR_RED}System update failed.${COLOR_RESET}\n"
  printf "${COLOR_YELLOW}Check log file to specify the error: $PACMAN_UPDATE_LOG_FILE${COLOR_RESET}\n"
fi

