https://argo-workflows.readthedocs.io/en/latest/configure-artifact-repository/

https://github.com/minio/minio/issues/15285

```
helm repo add minio https://charts.min.io/ # official minio Helm charts
helm repo update
# --set service.type=LoadBalancer
helm upgrade --install argo-artifacts minio/minio \
--set service.type=NodePort,consoleService.type=NodePort \
--set environment.MINIO_BROWSER_REDIRECT_URL=http://minio.dev.me:32001 \
--set fullnameOverride=argo-artifacts --kube-context argo-gitea \
--set rootUser=admin,rootPassword=password,replicas=3,persistence.size=1Gi,resources.requests.memory=1Gi
```


```
helm uninstall argo-artifacts --kube-context argo-gitea
```

Get external IP
```
kubectl get service argo-artifacts

or

minikube service --url argo-artifacts
```

