# Bash-aliases-with-stuff-I-added
# comment out the parts of the script/aliases that you dont want!
## download by clicking "code" and then "download zip"
# this is for stuff running on the handheld emulators like the R36S

So basically it has several custom commands, mroms(mounts the EASYROMS partition) (also has a custom loopback FAT16 partition called cheese lol, can be mounted with mche or unmounted with uche, the run_first.sh file just creates the files for the necessary command (like the keyboard layout for instance, currently only US And GB in the alias structure, ) and it also moves the .bash_aliases to the users home folder (using mv ~/.bash_aliases) and then the run_first.sh script self destructs, since its already done it's job, bt is a command that outputs current battery percentage (with an audio cue that plays one high chirp for 0.1seconds(if battery is above 30%) and then 2 lower beep type sounds for when battery is below 30% and there is just a color thing i added for colored terminal, i think that's it,

Key changes between US and GB layouts
srba just runs "source .bashrc"
nba runs "nano ~/.bash_aliases"

### you must run the RUN_FIRST.sh file before you load the .bash_aliases, also put this file in your home directory, (like /home/ark or /root/) customise the aliases and stuff to your hearts content, and if you're in terminal, then just run 'sh */RUN_FIRST.sh' or run 'sh RUN_FIRST.sh' if in same dir

# Update: you dont need to move it now, the RUN_FIRST.sh file does it for you
