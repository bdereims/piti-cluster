ls
ping rpi02
ping rpi03
iperf3 -c 172.16.184.6
iperf3 -c 172.16.184.6
exit
more /etc/docker-installed 
systemctl start docker
systemctl enable docker
docker images
docker info
exit
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
ls
exit
http://cdimage.ubuntu.com/ubuntu-server/xenial/daily/current/xenial-server-amd64.iso
wget http://cdimage.ubuntu.com/ubuntu-server/xenial/daily/current/xenial-server-amd64.iso
ls
rm xenial-server-amd64.iso 
exit
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
cd ..
ls
exit
kubeadm init --pod-network-cidr=10.244.0.0/16
vi kubeinit.sh
reboot
docker images
docker ps -a
top
docker ps -a
ping localhost
ss -an | grep LIST
vi /etc/hostname 
vi /etc/hosts
ping localhost
more kubeinit.sh 
kubeadm init --pod-network-cidr=10.244.0.0/16 --skip-preflight-checks
docker images
more /etc/hostname
vi /etc/hostname 
docker pull armv7/alpine
ipa 
ip a
ip route
ping www.kernel.org
docker pull resin/rpi-raspbian
docker images
docker pull gcr.io/google_containers/kube-apiserver-arm:v1.8.2
qdocker images
docker images
docker pull gcr.io/google_containers/kube-controller-manager-arm:v1.8.2
docker pull gcr.io/google_containers/kube-scheduler-arm:v1.8.2
kubeadn -h
kubeadm -h
kubeadm reset
ls
more kubeinit.sh 
kubeadm init --pod-network-cidr=10.244.0.0/16
systemctl status kubelet
kubeadm reset
reboot
chmod +x kubeinit.sh 
./kubeinit.sh 
journalctl -xeu kubelet
kubeadm reset
swapodd
swapoff
swapoff
swapoff -a
top
ls
./kubeinit.sh 
kubeadm reset
exit
ss -an | grep LIST
ss -an | grep LIST
ss -an | grep LIST
ss -an | grep LIST
ss -an | grep LIST
docker ps -a
ss -an | grep LIST
ss -an 
ss -an | grep LIST
ss -an | grep LIST
ss -an | grep LIST
docker ps -a
ss -an | grep 10255
ss -an | grep 10255
ss -an | grep LIST
kubeadm reset
swapoff -a
ps -ef | grep kubel
systemctl restart kubelet
systemctl daemon-reload
systemctl restart kubelet
ps -ef | grep kubel
ls
more kubeinit.sh 
./kubeinit.sh 
ping 23.236.58.218
more kubeinit.sh 
docker images
--pod-network-cidr=10.244.0.0/16
kubeadm init --pod-network-cidr=10.244.0.0/16
ls
vi kubejoin.sh
ps -ef
docker ps -a
top
systemctl disable dphys-swapfile
more kubejoin.sh 
exit
more kubejoin.sh 
more kubejoin.sh 
exit
ls -al
more /etc/kubernetes/admin.conf 
p /etc/kubernetes/admin.conf $HOME/
cp /etc/kubernetes/admin.conf $HOME/
export KUBECONFIG=$HOME/admin.conf
kubectl get nodes
kubectl get pods --alln-namespaces
kubectl get pods --all-namespaces
curl -sSL https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml | sed "s/amd64/arm/g" | kubectl create -f -
kubectl get pods --all-namespaces
vi flannel.sh
ls
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
top
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
top
top
kubectl get pods --all-namespaces
ssh rpi01
exit
more kubejoin.sh 
exit
chmod -x /etc/init.d/dphys-swapfile
systemctl disable dphys-swapfile
systemctl status dphys-swapfile
top
ls
ls -al
vi env.sh
. ./env.sh
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
top
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
reboot
ls
. ./env.sh
kubectl get pods --all-namespaces
more env.sh 
more admin.conf 
docker ps -a
docker ps -a
docker ps -a
kubectl get pods --all-namespaces
ls
more flannel.sh 
curl -sSL https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml | sed "s/amd64/arm/g" | kubectl delete -f -
bg
kubectl get pods --all-namespaces
ls
more flannel.sh 
curl -sSL https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml | sed "s/amd64/arm/g" | kubectl create -f -
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
kubectl log kube-flannel-ds-jdm5s
kubectl logs kube-flannel-ds-jdm5s
kubectl get pods --all-namespaces
kubectl logs kube-flannel-ds-jdm5s -n kube-system
kubectl get pods --all-namespaces -owide
kubectl logs kube-flannel-ds-jdm5s -n kube-system
kubectl logs kube-flannel-ds-cfg2s  -n kube-system
vi /etc/sysctl.conf 
sysctl -p 
exit
kubectl get pods --all-namespaces -owide
. ./env.sh 
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
kuvetl -n kube0system logs kube-flannel-ds-jdm5s
kubectl -n kube0system logs kube-flannel-ds-jdm5s
kubectl -n kube-system logs kube-flannel-ds-jdm5s
vi /etc/sysctl.conf 
sysctl -p
sysctl -p
kubectl -n kube-system logs kube-flannel-ds-jdm5s
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
top
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
ssh-keygen -t rsa -b 4096
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
reboot
ls
. ./env.sh 
kubectl get pods --all-namespace
kubectl get pods --all-namespaces
kubectl logs kube-flannel-ds-jdnt2 -n kube-system
cd .ssh/
ls
scp id_rsa pi@rpi02:.
scp id_rsa pi@rpi03:.
cd ..
ls
ssh pi@rpi02
scp .ssh/id_rsa.pub  pi@rpi03:.
scp .ssh/id_rsa.pub  pi@rpi02:.
ssh pi@rpi02
ssh rpi02
ssh pi@rpi03
ssh rpi03
ssh rpi02
ssh rpi03
docker ps -a
docker ps -a
reboot
ls
. ./env.sh 
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces -owide
ping 10.244.1.3
top
ssh rpi02
ls
kubectl config
mkdir .kube
cd .kube/
ls
more ../env.sh 
cp ../admin.conf config
ls -al
exit
kubectl get pods --all-namespaces -owide
ls
mkdir apps
cd apps/
ls
vi nginx.yaml
kubectl apple -f nginx.yaml 
kubectl apply -f nginx.yaml 
vi nginx.yaml 
vi nginx.yaml 
kubectl apply -f nginx.yaml 
vi nginx.yaml 
kubectl apply -f nginx.yaml 
vi nginx.yaml 
kubectl apply -f nginx.yaml 
vi nginx.yaml 
kubectl apply -f nginx.yaml 
vi nginx.yaml 
kubectl apply -f nginx.yaml 
kubectl get pods --all-namespaces
kubectl get services --all-namespaces
kubectl get services --all-namespaces -owide
ping 10.96.0.1
kubectl get services --all-namespaces -owide
kubectl get pods --all-namespaces -owide
docker images
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
kubectl get pods --all-namespaces -owide
vi nginx.yaml 
kubectl get pods --all-namespaces -owide
ping 10.244.2.2
wget 10.244.2.2
mroe index.html 
more index.html 
rm nginx.yaml 
ls
rm index.html 
vi nginx.yaml
vi nginx.yaml 
kubectl get services --all-namespaces -owide
kubectl get deployments --all-namespaces -owide
kubectl get deployments -owiede
kubectl get deployments -owide
vi service-nginx.yaml
kubectl -f apply service-nginx.yaml 
kubectl apply -f service-nginx.yaml 
vi service-nginx.yaml
kubectl apply -f service-nginx.yaml 
vi service-nginx.yaml
vi service-nginx.yaml
kubectl apply -f service-nginx.yaml 
vi service-nginx.yaml
kubectl apply -f service-nginx.yaml 
kubectl get svc -owide
kubectl describe svc nginx
kubectl get pods -owide
kubectl describe svc nginx-5ffb96749-9pbr
kubectl describe pod nginx-5ffb96749-9pbrd
ssh rpi03
ls
kubectl delete -f service-nginx.yaml 
vi service-nginx.yaml 
kubectl get svc -owide
kubectl apply -f service-nginx.yaml 
kubectl get svc -owide
ping 10.109.110.101
kubecl describe svc nginx
kubectl describe svc nginx
ping 10.244.2.2
ip a
ssh rpi03
ls
cd ..
ls
scp -R * pi@cluster-gw:.
scp -r * pi@cluster-gw:.
exit
scp -r * pi@10.0.0.254:.
exit
ls
kubectl get pods --all-namespaces
ls
cd apps/
ls
ls --rolot=tty
ls --rclot=tty
ls --color=tty
more service-nginx.yaml 
cd ..
ls
kubectl get pods
kubectl apply -f https://raw.githubusercontent.com/containous/traefik/master/examples/k8s/traefik-rbac.yaml
vi traefik-rbac.yaml
mv traefik-rbac.yaml traefik-rbac.sh
ls
wget https://raw.githubusercontent.com/containous/traefik/master/examples/k8s/traefik-deployment.yaml
vi traefik-deployment.yaml 
more traefik-deployment.yaml 
kubectl apply -f traefik-deployment.yaml 
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces
docker images
kubectl get pods --all-namespaces
kubectl get svc --all-namespaces
kubectl describe svc traefik-ingress-service -n=kube-system
ping 10.244.1.4
vi ingress-nginx.yaml
kubectl apply -f ingress-nginx.yaml 
wget 10.244.1.4
wgethttp://10.244.1.4/
wget http://10.244.1.4//
wget http://10.244.1.4/
kubectl get pods --all-namespaces
exit
kubectl get pods --all-namespaces
kubectl get svc --all-namespaces
ping 10.109.110.101
ls
cd apps/
ls
more service-nginx.yaml 
ls
ls
cd ..
ls
more ingress-nginx.yaml 
cp ingress-nginx.yaml apps/.
ls
more traefik-deployment.yaml 
ls
cd apps/
ls
kubectl delete -f ingress-nginx.yaml 
vi ingress-nginx.yaml 
kubectl apply -f ingress-nginx.yaml 
ping cluster-pi.k8s
exit
kubectl describe svc nginx
exit
kubectl get ingress
kubectl get ingress -owide
kubectl describre ingress nginx
kubectl describe ingress nginx
kubectl get pods -n kub-system
kubectl get pods -n=kub-system
kubectl get pods --all-namesapces
kubectl get pods --all-namespaces
kubectl describe pod traefik-ingress-controller-7cf98d69cf-r8kpb
kubectl describe pod traefik-ingress-controller-7cf98d69cf-r8kpb -n=kube-system
exit
kubectl get pods --all-namespaces -owide
top
ssh rpi02
ssh rpi03
ls
more ingress-nginx.yaml 
cd ..
ls
cd 
cd apps/
ls
more ingress-nginx.yaml 
exit
ls
ss -an | grep LIST
ssh rpi02
ip a
ssh rpi03
ssh rpi02
reboot
kubectl get pods --all-namespaces -owide
exit
ls
kubectl get pods --all-namespaces
kubectl get ingress
kubectl
kubectl top
kubectl top node
kubectl top pod
kubectl get ingress -all-namespacess
kubectl get ingress
kubectl get services
kubectl describe ingress nginx
kubectl explain ingress nginx
kubectl explain -h
curl 10.244.1.4
ping 10.244.1.4
kubectl get pods --all-namespaces
kubectl describe pods traefik-ingress-controller-7cf98d69cf-r8kpb -n=kube-system
curl 10.244.1.6
curl 10.244.1.6/
curl -H "Host: cluster-pi.k8s" 10.244.1.6/
exit
ip route
ping 10.244.1.6
curl -H "Host: cluster-pi.k8s" 10.244.1.6/
ip route
ip a
ssh rpi02
exit
vi .bash_history 
exit
docker ps -a
ssh rpi02
ssh rpi03
exit
kubectl cluster-info
kubectl cluster-info dump
ls
git clone https://github.com/kubernetes/kubernetes.git
apt-get install git
apt-get autoremove
ls
apt-get install git
ping 8.8.8.8
ping www.kernel.org
apt-get install git
apt-get update
ls
cd apps/
ls
cd ..
ls
git clone https://github.com/bdereims/armhf-docker-mysql-phpmyadmin.git
apt-get install git
ping mirrordirector.raspbian.org
ip a
ip route
apt-get update
exit
ls
cd apps/
ls
cd ..
ls
scp -r . cluster-gw:~/cluster-gw/k8s/
scp -r . pi@cluster-gw:~/cluster-gw/k8s/
scp -r . pi@cluster-gw:.
exit
ping cluster-gw
vi /etc/hosts
more /etc/resolv
more /etc/resolv.conf
ping cluster-gw
exit
