#!/usr/bin/env bash

printf 'Host: '
hostname

printf '\nUptime:\n'
uptime

printf '\nDisk usage:\n'
df -h /
