#!/bin/bash

sudo apt install python3-systemd i2c-tools python3-smbus
sudo mkdir /usr/local/lib/lcd_i2c
sudo cp lcd_i2c.py /usr/local/lib/lcd_i2c/lcd_i2c.py
sudo cp lcd_i2c.service /etc/systemd/system/lcd_i2c.service
sudo systemctl --system daemon-reload
sudo systemctl enable lcd_i2c.service
sudo systemctl start lcd_i2c.service
