#reboot here

cd /etc/openvpn
curl https://nordvpn.com/api/files/zip > zip && unzip zip && rm zip
#tmux + sudo openvpn (filename)
