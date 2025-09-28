ARGO_TOKEN="Bearer $(kubectl -n argo get secret operator.service-account-token -o=jsonpath='{.data.token}' | base64 --decode)"
echo $ARGO_TOKEN