helm --kube-context ${K8S_CTX} uninstall argo-cd -n argo-cd

kubectl --context ${K8S_CTX}  delete ns argo-cd