#!/bin/bash

NAMESPACE="your-namespace"

namespace_file="namespace.yml"

files=(
    "backend-dep.yml"
    "backend_serv.yml"
    "db-dep.yml"
    "db-pv.yml"
    "db-pvc.yml"
    "db-sec.yml"
    "db-serv.yml"
    "nodeport.yml"
    "proxy-dep.yml"
)

echo "Applying $namespace_file..."
kubectl apply -f "$namespace_file"

while ! kubectl get namespaces | grep -q "$NAMESPACE"; do
    echo "Waiting for namespace $NAMESPACE to be created..."
    sleep 2
done

echo "Namespace $NAMESPACE created successfully."

for file in "${files[@]}"; do
    if [[ "$file" == *.yml ]]; then
        echo "Applying $file..."
        kubectl apply -f "$file"
    fi
done

echo "All YML files have been applied."
