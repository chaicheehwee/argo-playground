export ARGO_WORKFLOWS_VERSION=v3.7.2

# wget https://github.com/argoproj/argo-workflows/releases/download/${ARGO_WORKFLOWS_VERSION}/namespace-install.yaml
kubectl --context ${K8S_CTX} create ns argo

# kubectl --context ${K8S_CTX} apply -n argo -f "https://github.com/argoproj/argo-workflows/releases/download/${ARGO_WORKFLOWS_VERSION}/install.yaml"


kubectl --context ${K8S_CTX} apply -n argo -f namespace-install.yaml
# kubectl --context ${K8S_CTX} delete -n argo -f "https://github.com/argoproj/argo-workflows/releases/download/${ARGO_WORKFLOWS_VERSION}/namespace-install.yaml"


# kubectl --context ${K8S_CTX} patch deployment \
# argo-server \
# -n argo \
# --type='json' \
# -p='[{"op":
# "replace",
# "path":
# "/spec/template/spec/containers/0/args",
# "value":
# [
# "server",
# "--namespaced",
# "--auth-mode=server"
# ]}]'

kubectl --context ${K8S_CTX} patch service \
argo-server \
-n argo \
--type='json' \
-p='[{"op":
"replace",
"path":
"/spec/type",
"value": "NodePort"
},
{"op":
"add",
"path":
"/spec/ports/0/nodePort",
"value": 32647
}
]'

# kubectl --context ${K8S_CTX} apply -n argo -f "https://github.com/argoproj/argo-workflows/releases/download/${ARGO_WORKFLOWS_VERSION}/quick-start-minimal.yaml"

