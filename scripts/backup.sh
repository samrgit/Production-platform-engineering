#!/bin/bash

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR=backups/$TIMESTAMP

mkdir -p "$BACKUP_DIR"

echo "Backing up Grafana..."

docker run --rm \
-v production-platform_grafana-storage:/volume \
-v $(pwd)/$BACKUP_DIR:/backup \
alpine \
tar czf /backup/grafana.tar.gz -C /volume .

echo "Backing up Prometheus..."

docker run --rm \
-v production-platform_prometheus-data:/volume \
-v $(pwd)/$BACKUP_DIR:/backup \
alpine \
tar czf /backup/prometheus.tar.gz -C /volume .

echo "Backup completed."

echo "Saved to $BACKUP_DIR"