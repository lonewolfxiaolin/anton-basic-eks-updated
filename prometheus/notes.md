
# Prometheus Installation with Helm - YAML Steps



1) Add Prometheus Helm repo 
- step: Add Helm repo
- command: ```helm repo add prometheus-community https://prometheus-community.github.io/helm-charts```

2) Update Helm repo 
- step: Update Helm repo
 - command: ```helm repo update``` 

3) Create prometheus namespace 
- step: Create namespace
- command: ```kubectl create namespace prometheus``` 

or 

- manifest: ns.yaml 
```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: prometheus
  labels:
    name: prometheus
```

- command: kubectl apply -f ns.yaml

4) Install Prometheus into 'prometheus' namespace 
- step: Install Prometheus
 - command: ```helm install prometheus prometheus-community/prometheus --namespace prometheus ```

5) Verify the Prometheus pods are running 
- step: Check pods
  command: ```kubectl get pods -n prometheus``` 

6) Port forward Prometheus UI 
- step: Port forward to access UI
  command: ```kubectl port-forward -n prometheus deploy/prometheus-server 9090``` 

7) Open in browser 
- step: Access UI
- url: (UI)[http://localhost:9090]
- at localhost on port 9090

