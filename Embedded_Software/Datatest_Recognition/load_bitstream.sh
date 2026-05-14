echo 0 > /sys/class/fpga_manager/fpga0/flags
cp Test_wrapper.bit /lib/firmware
echo Test_wrapper.bit > /sys/class/fpga_manager/fpga0/firmware
cat /sys/class/fpga_manager/fpga0/state