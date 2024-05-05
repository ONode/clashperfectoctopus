#!/usr/bin/env bash

network_name="clsh_octopus_network"
docker network inspect "$network_name" >/dev/null 2>&1 || docker network create "$network_name"


if [ -d "/home/clashperfectoctopus" ]; then
  cd /home/clashperfectoctopus
  git pull https://github.com/ONode/clashperfectoctopus.git
else
  echo "Directory does not exist."
  cd /home
  git clone https://github.com/ONode/clashperfectoctopus
  cd clashperfectoctopus
fi

bash clash_up.sh
