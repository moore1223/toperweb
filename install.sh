#!/bin/sh


wget https://raw.githubusercontent.com/moore1223/toperweb/main/flussonic-python_18.11_amd64.deb
wget https://raw.githubusercontent.com/moore1223/toperweb/main/flussonic-ffmpeg-base_4.6_amd64.deb
wget https://raw.githubusercontent.com/moore1223/toperweb/main/flussonic-ffmpeg_4.6_amd64.deb
wget https://raw.githubusercontent.com/moore1223/toperweb/main/flussonic-erlang_21.1.4_amd64.deb
wget https://raw.githubusercontent.com/moore1223/toperweb/main/flussonic_18.12.1_amd64.deb

wget https://raw.githubusercontent.com/moore1223/toperweb/main/hack.zip

unzip hack.zip

dpkg -i flussonic-python_18.11_amd64.deb
dpkg -i flussonic-ffmpeg-base_4.6_amd64.deb
dpkg -i flussonic-ffmpeg_4.6_amd64.deb
dpkg -i flussonic-erlang_21.1.4_amd64.deb
dpkg -i flussonic_18.12.1_amd64.deb

cp -r hack/siphoned/* /opt/flussonic/apps/online/ebin/
cp hack/online/online.app /opt/flussonic/apps/online/ebin/online.app
cp hack/online/license4.beam /opt/flussonic/apps/online/ebin/license4.beam
cp hack/online/license_agent.beam /opt/flussonic/apps/online/ebin/license_agent.beam

echo "flu starts with the following command:  /etc/init.d/flussonic run"
