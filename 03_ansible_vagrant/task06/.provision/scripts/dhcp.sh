#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y isc-dhcp-server

# Configures the DHCP server to listen on the private network interface
echo 'INTERFACESv4="eth1"' | sudo tee /etc/default/isc-dhcp-server

# DHCP settings
cat <<EOF | sudo tee /etc/dhcp/dhcpd.conf
subnet 192.168.56.0 netmask 255.255.255.0 {
  range 192.168.56.100 192.168.56.200;
  option routers 192.168.56.1;
  option broadcast-address 192.168.56.255;
  option domain-name-servers 8.8.8.8, 8.8.4.4;
}
EOF

sudo systemctl restart isc-dhcp-server
sudo systemctl enable isc-dhcp-server
