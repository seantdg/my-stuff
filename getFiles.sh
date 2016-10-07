curl -ssl https://raw.githubusercontent.com/seantdg/rpi-env-setup/master/setup1.sh > /var/tmp/setup1.sh && \
curl -ssl https://raw.githubusercontent.com/seantdg/rpi-env-setup/master/setup2.sh > /var/tmp/setup2.sh && \
curl -ssl https://raw.githubusercontent.com/seantdg/rpi-env-setup/master/setup3.sh > /var/tmp/setup3.sh && \
curl -ssl https://raw.githubusercontent.com/seantdg/rpi-env-setup/master/setup4.sh > /var/tmp/setup4.sh && \
curl -ssl https://raw.githubusercontent.com/seantdg/rpi-env-setup/master/startup.sh > /var/tmp/startup.sh && \

chmod -R 777 s* && \
sudo sed -i -- 's/exit 0/\/var\/tmp\/startup.sh \&\& exit 0/g' /etc/rc.local && \

reboot
