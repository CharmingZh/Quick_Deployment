#!/bin/bash
echo "< 1. > sudo apt autoremove --purge"
sudo apt autoremove --purge

echo "< 2. > sudo du -sh /var/cache/apt"
sudo du -sh /var/cache/apt/

echo "< 3. > sudo apt clean"
sudo apt clean

echo "< 4. > dpkg --list | grep "^rc""
dpkg --list | grep "^rc"

echo "dpkg --list | grep "^rc" | cut -d " " -f 3"
dpkg --list | grep "^rc" | cut -d " " -f 3

echo "dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge"
dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs sudo dpkg --purge

