# argo submit --serviceaccount default --watch container-workflow.yaml -n argo


# Works after setting up permisisons in default name space
# argo submit --serviceaccount argo-exec --watch container-workflow.yaml -n default

argo submit --serviceaccount workflow-runner --watch container-workflow.yaml -n argo