reff: https://matthewpalmer.net/kubernetes-app-developer/articles/install-kubernetes-ubuntu-tutorial.html

1. Update Ubuntu dependencies
sudo apt-get update
sudo apt-get install -y apt-transport-https

2. Install VirtualBox on Ubuntu
sudo apt-get install -y virtualbox virtualbox-ext-pack

3. Install kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/kubernetes.list 
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

4. Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


5.Start
minikube start --driver=virtualbox --no-vtx-check
kubectl api-versions

6. How to Enable Nested VT-X/AMD-V in Virtualbox
C:\>cd "Program Files\Oracle\VirtualBox"
C:\Program Files\Oracle\VirtualBox>VBoxManage modifyvm Ubuntu --nested-hw-virt on