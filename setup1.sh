# sudo raspi-config and expand file system

#connect to wifi
#sudo iwlist wlan 0scan

#sudo vim /etc/wpa_supplicant/wpa_supplicant.conf

#append 

#network={
#    ssid="SSID"
#    psk="pass"
#}

#sudo reboot

###################
# RUN THIS SCRIPT
###################

# update 
apt-get update -y && \

apt-get upgrade -y && \

apt-get dist-upgrade -y && \

apt-get clean -y

#reboot here

#curl -sSL https://get.docker.com | sh

#run env dockerfile
