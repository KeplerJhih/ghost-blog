apt update && 
git config --global http.sslverify false 
apt install -y git 
apt install -y rsync 
apt install -y tzdata 
apt install -y jq 
apt install -y build-essential 
timedatectl set-timezone Asia/Taipei
#docker install 
mkdir -p /etc/docker
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh &&
curl -L "https://github.com/docker/compose/releases/download/v2.15.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
chmod +x /usr/local/bin/docker-compose
#create 
mkdir -p /data/apps
mkdir -p /data/htdocs
mkdir -p /data/var/logs
mkdir -p /data/var/backup
mkdir -p /data/src
mkdir -p /data/exec
mkdir -p /data/dev