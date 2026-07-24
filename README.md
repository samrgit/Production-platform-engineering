# Production Platform Engineering

A Docker-based infrastructure monitoring platform that demonstrates the deployment, orchestration, and monitoring of containerized services using Docker Compose, Nginx, Prometheus, Grafana, Node Exporter, and cAdvisor.

The project provides a centralized monitoring dashboard for viewing infrastructure metrics, container statistics, and application health while following production-style deployment practices.

---

## Features

- Docker Compose based multi-container deployment
- Nginx web server hosting the monitoring dashboard
- Health endpoint for application monitoring
- Prometheus for metrics collection
- Grafana for infrastructure visualization
- Node Exporter for host-level metrics
- cAdvisor for Docker container monitoring
- GitHub Actions CI workflow
- Responsive monitoring dashboard
- Production-style project structure

---

## Tech Stack

- Docker
- Docker Compose
- Nginx
- Prometheus
- Grafana
- Node Exporter
- cAdvisor
- GitHub Actions
- HTML
- CSS

---

# Project Structure

```
production-platform-engineering/
│
├── app/
│   └── index.html
│
├── monitoring/
│   └── prometheus.yml
│
├── nginx/
│   ├── nginx.conf
│   └── default.conf
│
├── scripts/
│
├── screenshots/
│
├── architecture/
│   └── architecture-diagram.png
│
├── .github/
│   └── workflows/
│       └── docker-ci.yml
│
├── docker-compose.yml
├── README.md
└── LICENSE
```

---

# Architecture

![Architecture Diagram](architecture/architecture-diagram.png)

---

# Monitoring Components

### Nginx

- Hosts the landing dashboard
- Serves static content
- Exposes the `/health` endpoint

### Prometheus

- Collects metrics from exporters
- Stores time-series data
- Provides PromQL query interface

### Grafana

- Visualizes infrastructure metrics
- Displays dashboards
- Connects to Prometheus as a data source

### Node Exporter

Collects host machine metrics including:

- CPU Usage
- Memory Usage
- Disk Usage
- Network Statistics

### cAdvisor

Collects Docker container metrics including:

- CPU Usage
- Memory Usage
- Network Usage
- Filesystem Usage

---

# Services

| Service | Port |
|---------|------|
| Nginx | 8080 |
| Prometheus | 9090 |
| Grafana | 3000 |
| Node Exporter | 9100 |
| cAdvisor | 8081 |

---

# Getting Started

## Clone the Repository

```bash
git clone https://github.com/your-username/production-platform-engineering.git

cd production-platform-engineering
```

---

## Start the Application

```bash
docker compose up -d
```

---

## Verify Running Containers

```bash
docker compose ps
```

---

## Stop the Containers

```bash
docker compose down
```

---

# Access the Services

| Service | URL |
|---------|-----|
| Dashboard | http://localhost:8080 |
| Health Endpoint | http://localhost:8080/health |
| Prometheus | http://localhost:9090 |
| Grafana | http://localhost:3000 |

---

# Screenshots

## Dashboard

![Dashboard](screenshots/dashboard.png)

---

## Docker Compose

![Docker Compose](screenshots/docker-compose.png)

---

## Prometheus Targets

![Prometheus](screenshots/prometheus-targets.png)

---

## Node Exporter Dashboard

![Node Exporter](screenshots/grafana-node-exporter.png)

---

## cAdvisor Dashboard

![cAdvisor](screenshots/grafana-cadvisor.png)

---

## Health Endpoint

![Health](screenshots/health-endpoint.png)

---

# Continuous Integration

This project includes a GitHub Actions workflow that automatically validates the Docker Compose configuration whenever changes are pushed to the repository.

---

# Future Improvements

- Automatic service health monitoring
- HTTPS using SSL certificates
- Alertmanager integration
- Log aggregation
- Kubernetes deployment
- Terraform infrastructure provisioning

---

# Author

**Samsoorya Rajakumar**

Bachelor of Technology (Information Technology)

Xavier Institute of Engineering

---

# License

This project is developed for educational and internship demonstration purposes.