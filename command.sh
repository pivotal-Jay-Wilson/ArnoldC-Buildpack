esptool.py --port /dev/tty.usbserial-14340 --baud 115200 \
  write_flash --flash_freq 80m --flash_mode qio --flash_size 32m \
  0x0000 "boot_v1.6.bin" 0x1000 espruino_2v12_esp8266_4mb_combined_4096.bin \
  0x3FC000 esp_init_data_default.bin 0x3FE000 blank.bin


  screen /dev/tty.usbserial-14340  115200

   /path/to/esptool/esptool.py --port  /dev/tty.usbserial-14340 --baud 115200 erase_flash

esptool.py --port /dev/tty.usbserial-14340 --baud 115200 \
  write_flash --flash_freq 80m --flash_mode qio --flash_size 32m \
  0x0000 "boot_v1.6.bin" 0x1000 espruino_esp8266_user1.bin \
  0x3FC000 esp_init_data_default.bin 0x3FE000 blank.bin


  esptool.py --port /dev/tty.usbserial-14340 --baud 460800 write_flash \
  --flash_freq 80m --flash_mode qio --flash_size 4MB-c1 \
  0x0000 "boot_v1.6.bin" 0x1000 espruino_esp8266_user1.bin \
  0x3FC000  esp_init_data_default.bin 0x3FE000 blank.binscreen /dev/ttyUSB0 1152005

  wifi.connect("sorrynotsorry_2.4G", {password: "03012020"}, function(err){if(err)console.log(err);else console.log("connected!");})

  wifi.setDHCPHostname("esp826-1");

  GPIO2

  digitalWrite(2,1)