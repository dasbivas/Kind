curl -LO https://dl.k8s.io/release/v1.22.5/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
wget https://go.dev/dl/go1.17.linux-amd64.tar.gz
tar -xvzf go1.17.linux-amd64.tar.gz
echo $HOME
mv go $HOME/
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
sudo apt-get install docker.io -y
sudo systemctl start docker 
go install sigs.k8s.io/kind@v0.17.0 && kind create cluster
