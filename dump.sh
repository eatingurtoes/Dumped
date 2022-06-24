echo "Okay, this is the big moment! Your blobs are about to be dumped and 
saved as blob.shsh!"
if [ -e ipsw.ipsw ]; then
echo ".ipsw located!"
else
echo ".ipsw file not detected! Please put the .ipsw of the version you 
want to dump blobs for in the main folder and name it ipsw.ipsw."
exit
fi
echo "Dumping blobs..."
./irecovery2 -f devicesupport/payload
sleep 1
./irecovery -c go blobs
sleep 1
./irecovery -g myblob.dump
sleep 1
./irecovery -c reboot
sleep 1
if [ -e myblob.dump ]; then
echo "Succesfully dumped blobs! Will convert to .xml format now..."
sleep 1
echo "If the script asks for your password, please enter it."
sleep 1
sudo date 0101010112
sleep 2
./ticket myblob.dump myblob.plist ipsw.ipsw -z
sleep 2
./validate myblob.plist ipsw.ipsw -z
sleep 1
echo "If everything came out as valid, your dumped blobs work! Hooray! You 
will need to set your date back to current time."
cp myblob.plist shsh.shsh
else
echo "Failed to dump blobs, try again."
exit
fi
