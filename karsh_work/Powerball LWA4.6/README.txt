INSTALLING PCAN DRIVER
----------------------

As of now, the PCAN driver needs to be reinstalled everytime the computer is restarted.  To do so, go to the ~/powerball/drivers/peak-linux-driver-7.5 directory and use "sudo make install" to install the driver.  To check for proper installation, use the following steps:

1. Load the driver using "sudo modprobe pcan" 
2. To look at the status of the driver use "cat /proc/pcan"
3. To check for proper communication, use "./test/receivetest -f=/dev/pcan0".  With this test loaded up, turning the PCAN device on/off should trigger some messages.  


