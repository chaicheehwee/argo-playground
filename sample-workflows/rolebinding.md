# Permissions, services accounts and roles

# https://argo-workflows.readthedocs.io/en/latest/service-accounts/


# https://argo-workflows.readthedocs.io/en/latest/workflow-rbac/

When no ServiceAccount is provided, Argo will use the default ServiceAccount from the namespace from which it is run, which will almost always have insufficient privileges by default.

You will see a similar error:
```
wait: Error (exit code 64): workflowtaskresults.argoproj.io is forbidden: 
User "system:serviceaccount:argo:default" cannot create resource "workflowtaskresults" 
in API group "argoproj.io" in the namespace "argo"
```


# To successfully deploy this Workflow we need to temporarily grant admin permissions to the default argo 
# ServiceAccount as follows:
# kubectl create rolebinding default-admin --clusterrole=admin --serviceaccount=argo:default -n argo

apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  creationTimestamp: null
  name: default-admin
  namespace: argo
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: admin
subjects:
- kind: ServiceAccount
  name: default
  namespace: argo