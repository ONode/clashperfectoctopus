#!/usr/bin/env bash
docker compose -f docker_proxy_compose.yml down
docker container prune -f
docker ps -a