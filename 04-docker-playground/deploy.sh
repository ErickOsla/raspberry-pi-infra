#!/bin/bash
cd /home/pi/raspberry-pi-infra
git pull origin main
docker compose -f 01-fullstack-app/docker-compose.yml down
docker compose -f 01-fullstack-app/docker-compose.yml up -d --build