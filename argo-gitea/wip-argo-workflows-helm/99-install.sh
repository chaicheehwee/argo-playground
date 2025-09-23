helm repo add argo https://argoproj.github.io/argo-helm

helm --kube-context ${K8S_CTX} upgrade --install argo-workflows argo/argo-workflows \
-n argo-workflows --create-namespace \
-f values-dev.yaml

