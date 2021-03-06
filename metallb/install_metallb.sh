#Check for info https://www.reddit.com/r/homelab/comments/ipsc4r/howto_k8s_metallb_and_external_dns_access_for/


kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f 1.yml
kubectl apply -f 2.yml

