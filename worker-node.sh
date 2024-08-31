# Join worker node to kubernetes cluster
# On the master node copy these lines and paste here. Your master node may generate a different output. 
kubeadm join master:6443 --token uf71xc.3g7yt5vl9zwdqc1a \
        --discovery-token-ca-cert-hash sha256:9aaba87d3dd19be12234eda79075a76bb6ebb6cdab1e0442c9bba2b33b63fbd7


