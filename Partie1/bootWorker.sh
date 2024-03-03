#!/bin/bash

export K3S_TOKEN_FILE="/vagrant/token_file"
export K3S_URL="https://192.168.56.110:6443"
export INSTALL_K3S_EXEC="agent -i 192.168.56.111"
curl -sfL https://get.k3s.io | sh -
echo "alias k='kubectl'" >> /home/vagrant/.bashrc
sudo modprobe dummy && sudo ip link add eth1 type dummy && sudo ip addr add 192.168.56.111/24 dev eth1 && sudo ip link set dev eth1 up && sudo ip link set dev eth1 multicast on