# Inatall Argo Events
kubectl --context ${K8S_CTX} create namespace argo-events
kubectl --context ${K8S_CTX} apply -f https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install.yaml
# Install with a validating admission controller
kubectl --context ${K8S_CTX} apply -f https://raw.githubusercontent.com/argoproj/argo-events/stable/manifests/install-validating-webhook.yaml

# Create eventbus pods
kubectl --context ${K8S_CTX} apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml

# Create event-source for webhook
kubectl --context ${K8S_CTX} apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/event-sources/webhook.yaml
# kubectl --context ${K8S_CTX} apply -n argo-events -f sample-event-source/webhook.yaml

#Create a service account with RBAC settings to allow the sensor to trigger workflows, and allow workflows to function.
 # sensor rbac
kubectl --context ${K8S_CTX} apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/master/examples/rbac/sensor-rbac.yaml
 # workflow rbac
kubectl --context ${K8S_CTX} apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/master/examples/rbac/workflow-rbac.yaml

# Create the webhook sensor
# kubectl --context ${K8S_CTX} apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/sensors/webhook.yaml
kubectl --context ${K8S_CTX} apply -n argo-events -f sample-sensors/webhook.yaml
