#!/bin/bash

BACKUP=$1

if [ -z "$BACKUP" ]; then
    echo "Usage:"
    echo "./restore.sh backups/<folder>"
    exit 1
fi

echo "Stopping containers..."

docker compose down

echo "Restoring Grafana..."

docker run --rm \
-v production-platform_grafana-storage:/volume \
-v $(pwd)/$BACKUP:/backup \
alpine \
sh -c "cd /volume && tar xzf /backup/grafana.tar.gz"

echo "Restoring Prometheus..."

docker run --rm \
-v production-platform_prometheus-data:/volume \
-v $(pwd)/$BACKUP:/backup \
alpine \
sh -c "cd /volume && tar xzf /backup/prometheus.tar.gz"

docker compose up -d

echo "Restore completed."