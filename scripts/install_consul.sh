#!/usr/bin/env bash
set -x

apt-get update -y
apt-get install unzip socat jq dnsutils net-tools vim curl sshpass -y 

# Install consul
export CONSUL_VER="1.4.3"
mkdir -p /tmp/pkg/
curl -s https://releases.hashicorp.com/consul/${CONSUL_VER}/consul_${CONSUL_VER}_linux_amd64.zip -o /tmp/pkg/consul_${CONSUL_VER}_linux_amd64.zip
echo "Installing Consul version ${CONSUL_VER} ..."
pushd /tmp
unzip /tmp/pkg/consul_${CONSUL_VER}_linux_amd64.zip 
sudo chmod +x consul
sudo mv consul /usr/local/bin/consul


set +x