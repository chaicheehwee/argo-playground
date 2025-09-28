# argo submit --serviceaccount workflow-runner --watch httpbin.yaml -n default

argo submit --serviceaccount runner --watch --from workflowtemplate/add-pet -n argo