#!/bin/bash

serial_port=/dev/ttyUSB0
mode=$(ls -l $serial_port | awk '{print $1}')
if [ x"$mode" != x"crwxrwxrwx" ];then
    sudo chmod 777 $serial_port
fi
python grabserial -v -d $serial_port -b 921600 -w 8 -p N -e 30 -t -m "NOTICE:  fast_boot:0"