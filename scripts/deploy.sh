#!/bin/bash

set -e

echo "===================================="
echo "Production Platform Deployment"
echo "===================================="

echo "[1/4] Validating Docker Compose..."
docker compose config --quiet

echo "[2/4] Pulling latest images..."
docker compose pull

echo "[3/4] Starting services..."
docker compose up -d

echo "[4/4] Checking running services..."
docker compose ps

echo ""
echo "Deployment completed successfully."