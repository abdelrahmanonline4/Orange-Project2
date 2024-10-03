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


echo "Namespace $NAMESPACE created successfully."

for file in "${files[@]}"; do
    if [[ "$file" == *.yml ]]; then
        echo "Applying $file..."
        kubectl apply -f "$file"
    fi
done

echo "All YML files have been applied."
