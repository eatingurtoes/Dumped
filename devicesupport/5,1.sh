echo "Device is an iPhone5,1, proceeding to script..."
bin/irecovery -f devicesupport/iPhone5,1/pwnediBSS
echo "You may have to unplug/replug device if it does not reconnect, allowing 5 seconds to do so..."
sleep 5
bin/irecovery -f devicesupport/iPhone5,1/pwnediBEC
echo "You may have to unplug/replug device if it does not reconnect, allowing 5 seconds to do so..."
sleep 5
echo "Device should now have a dimly lit screen and be recognized as recovery mode on your computer. If this is not the case, repeat the process and try again."
exit