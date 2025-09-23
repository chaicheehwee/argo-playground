helm repo add argo https://argoproj.github.io/argo-helm

ARGO_PWD_ENCRYPTED=$(htpasswd -nbBC 10 "" password | tr -d ':\n' | sed 's/$2y/$2a/')

helm --kube-context ${K8S_CTX} upgrade --install argo-cd argo/argo-cd \
-n argocd --create-namespace \
-f values-dev.yaml \
--set configs.secret.argocdServerAdminPassword=${ARGO_PWD_ENCRYPTED}
