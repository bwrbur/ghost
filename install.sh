sudo adduser b1
sudo usermod -aG sudo b1
su - b1
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo apt-get install mysql-server -y
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update -y
sudo apt-get install nodejs -y
sudo apt-get install build-essential -y
sudo npm install ghost-cli@latest -g
sudo mkdir -p /var/www/<user>
sudo chown <user>:<user> /var/www/<user>
sudo chmod 775 /var/www/<user>
cd /var/www/<user>
for cfip in `curl -sw '\n' https://www.cloudflare.com/ips-v{4,6}`; do ufw allow proto tcp from $cfip to any port 80; done
for cfip in `curl -sw '\n' https://www.cloudflare.com/ips-v{4,6}`; do ufw allow proto tcp from $cfip to any port 443; done
clear
ghost install
