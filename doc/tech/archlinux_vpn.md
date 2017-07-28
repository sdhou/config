pacman -Ss pptpclient
pptpsetup --create my_tunnel --server vpn.example.com --username alice --password foo --encrypt
pon my_tunnel
ip addr show
sudo ip route add 192.168.0.0/24 dev ppp0
sudo ip route add default dev ppp0
