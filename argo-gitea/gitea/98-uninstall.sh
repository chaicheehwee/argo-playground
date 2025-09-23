helm --kube-context ${K8S_CTX} uninstall gitea -n gitea

# Retain the namespace as I want to retain the data in the PV and I don't want to change the storage class's reclaim policy
# Therefore I need to keep the PVC
# kubectl delete ns gitea
