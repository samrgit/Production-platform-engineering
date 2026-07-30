#!/bin/bash

echo "==============================="
echo "Platform Health Check"
echo "==============================="

docker compose ps

echo ""

echo "Checking Dashboard..."
curl -s http://localhost:8080/health

echo ""

echo "Checking Prometheus..."
curl -s http://localhost:9090/-/healthy

echo ""

echo "Checking Alertmanager..."
curl -s http://localhost:9093/-/healthy

echo ""

echo "Checking Grafana..."
curl -s http://localhost:3000/api/health

echo ""

echo "Health check completed."