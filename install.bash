reff: https://matthewpalmer.net/kubernetes-app-developer/articles/install-kubernetes-ubuntu-tutorial.html

1. Update Ubuntu dependencies
$ sudo apt-get update
$ sudo apt-get install -y apt-transport-https

2. Install VirtualBox on Ubuntu
$ sudo apt-get install -y virtualbox virtualbox-ext-pack

3. Install kubectl
$ curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
$ sudo touch /etc/apt/sources.list.d/kubernetes.list 
$ echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
$ sudo apt-get update
$ sudo apt-get install -y kubectl

4. Install minikube
$ curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64
$ chmod +x minikube && sudo mv minikube /usr/local/bin/


5.Start
$ minikube start
$ kubectl api-versions