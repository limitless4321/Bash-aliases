#!/bin/bash
sudo mv .bash_aliases ~/
# Create /cheese directory because why not 
sudo mkdir -p /cheese

# Create cheese.img because again, why not lol
if [ ! -f /cheese.img ]; then
    # Make a 5MB empty file
    sudo dd if=/dev/zero of=/cheese.img bs=1M count=5

    # Format it as FAT16 (5M)
    sudo mkfs.vfat -F 16 /cheese.img
    # first mount / unmount
    sleep 0.3
    sudo mount -o loop /cheese.img /cheese
    sleep 0.5
    sudo umount /cheese
fi

sudo mkdir -p /keyboardmapthing

if [ ! -f /keyboardmapthing/us-gb.txt ]; then
    echo "us" | sudo tee /keyboardmapthing/us-gb.txt > /dev/null
fi

sudo chmod --recursive 777 /keyboardmapthing/
source .bashrc
sleep 0.5
printf "\e[0;32mRun 'lscmd' to view available commands.$TERM_COLOR\n"
sleep 2
sudo rm RUN_FIRST.sh
