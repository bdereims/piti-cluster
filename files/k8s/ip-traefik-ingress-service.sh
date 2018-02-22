kubectl -n kube-system describe service traefik-ingress-service | grep Endpoint | head -n 1 | sed -e 's/^.*10/10/' -e 's/:80.*$//'
