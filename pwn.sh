echo "Please connect your A6 device in DFU mode."
sleep 1
echo "Allowing user 20 seconds to enter DFU mode."
sleep 20
echo "Entering pwned DFU mode..."
bin/ipwnder_lite
sleep 1
echo "Your device should now be in pwned DFU mode! If the output says that 
it failed to enter pwned DFU mode, you should re-enter DFU mode and try 
again."
sleep 1
echo "Pwning complete! Exiting..."
