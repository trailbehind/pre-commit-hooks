#!/usr/bin/env bash

YELLOW='\033[1;33m'
RESET='\033[0m'

if [ "$(shasum Podfile | cut -d' ' -f1)" != "$(grep "PODFILE CHECKSUM" Podfile.lock | cut -d' ' -f3)" ]; then
  echo -e "${YELLOW}WARNING:${RESET} Checksum in Podfile.lock does not match the Podfile. You should run 'pod install'."
  exit 1
fi
