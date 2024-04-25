kubectl apply -f sa.yaml
kubectl apply -f pod.yaml
kubectl wait --for=condition=ready pod labeller
kubectl exec labeller -- kubectl label ns default test=test

echo "Note that didn't work"

echo "Apply rbac"

kubectl apply -f role.yaml
kubectl apply -f rolebinding.yaml

kubectl exec labeller -- kubectl label ns default test=test


