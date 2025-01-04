sudo kubectl create deployment vote --image=schoolofdevops/vote:v6 --dry-run=client -o yaml > vote-deployment.yaml
sudo kubectl create service nodeport vote --tcp=80:80 --node-port=30300 --dry-run=client -o yaml > vote-service.yaml

sudo kubectl create deployment redis --image=redis:alpine --dry-run=client -o yaml > redis-deployment.yaml
sudo kubectl create service clusterip redis --tcp=6379  --dry-run=client -o yaml > redis-service.yaml