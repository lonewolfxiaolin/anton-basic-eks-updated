# anton-basic-eks-updated

- run this command before apply to get the helm repo:

- ```helm repo add aws-ebs-csi-driver https://kubernetes-sigs.github.io/aws-ebs-csi-driver/```

- ```helm repo update```

- If there is a syntax issue shown in vscode for 11b-storage-helm.tf, do terraform validate first. The linter may be out of date, but the syntax is valid


- ```https://github.com/aaron-dm-mcdonald/anton-basic-eks-updated/blob/main/prometheus-1/notes.md```


- echo "Grafana Dashboard: http://$(kubectl get svc monitoring-grafana -n observability -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'):80"


- echo "Prometheus Server: http://$(kubectl get svc monitoring-kube-prometheus-prometheus -n observability -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'):9090"


#######Delete commands if you are using Kube-prom-stack##############################

- helm uninstall monitoring -n observability

- kubectl delete namespace observability