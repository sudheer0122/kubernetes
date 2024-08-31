# List existing tokens
kubeadm token list

# To print a join command for a new worker node use
kubeadm token create --print-join-command

# If you are joining more control plane nodes
echo $(sudo kubeadm token create --print-join-command) --control-plane --certificate-key $(sudo kubeadm init phase upload-certs --upload-certs | grep -vw -e certificate -e Namespace)
