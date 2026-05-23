# Create /cheese directory if missing
sudo mkdir -p /cheese

# Create cheese.img if missing
if [ ! -f /cheese.img ]; then
    # Make a 5MB empty file
    sudo dd if=/dev/zero of=/cheese.img bs=1M count=5

    # Format it as FAT16
    sudo mkfs.vfat -F 16 /cheese.img
fi

sudo mkdir -p /keyboardmapthing

if [ ! -f /keyboardmapthing/us-gb.txt ]; then
    echo "us" | sudo tee /keyboardmapthing/us-gb.txt > /dev/null
fi

sudo chmod --recursive 777 /keyboardmapthing/

rm */RUN_FIRST.sh
