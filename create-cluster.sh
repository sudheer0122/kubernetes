# Configure Kubernetes on Master Node
# PERFORM THIS ON CONTROL-PLANE OR MASTER NODES ONLY
sudo kubeadm init --control-plane-endpoint=master

# If you have only 1 CPU for master node, use this command
sudo kubeadm init --control-plane-endpoint=master --ignore-preflight-errors=NumCPU

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install Calico Pod Network Add-on
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml
