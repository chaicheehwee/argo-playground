
helm repo add gitea-charts https://dl.gitea.com/charts/


helm --kube-context ${K8S_CTX} upgrade --install gitea gitea-charts/gitea \
-f values-dev.yaml  \
-n gitea --create-namespace

