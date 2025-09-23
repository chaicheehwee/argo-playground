helm --kube-context ${K8S_CTX} uninstall argo-workflows -n argo-workflows

kubectl --kube-context ${K8S_CTX} delete ns argo-workflows