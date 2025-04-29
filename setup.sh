#!/usr/bin/env bash
# setup_project.sh - Shell script to create project structure and empty files

# Exit on any error
set -e

# Project root structure
mkdir -p infra/ansible/roles/{docker,kubernetes,monitoring,security}
mkdir -p app/etl app/ml app/k8s
mkdir -p monitoring/grafana elk
mkdir -p security

# Create empty main files
cat << 'EOF' > infra/ansible/playbook.yml
EOF
cat << 'EOF' > infra/ansible/inventory.ini
EOF
cat << 'EOF' > infra/ansible/roles/docker/tasks/main.yml
EOF
cat << 'EOF' > infra/ansible/roles/kubernetes/tasks/main.yml
EOF
cat << 'EOF' > infra/ansible/roles/monitoring/tasks/main.yml
EOF
cat << 'EOF' > infra/ansible/roles/security/tasks/main.yml
EOF
cat << 'EOF' > app/etl/extract.sh
#!/usr/bin/env bash
EOF
cat << 'EOF' > app/etl/transform.py
#!/usr/bin/env python3
EOF
cat << 'EOF' > app/etl/load.sh
#!/usr/bin/env bash
EOF
cat << 'EOF' > app/ml/Dockerfile
# Dockerfile for ML service
EOF
cat << 'EOF' > app/ml/train.py
#!/usr/bin/env python3
EOF
cat << 'EOF' > app/ml/serve.py
#!/usr/bin/env python3
EOF
cat << 'EOF' > app/k8s/etl-job.yaml
# ETL Kubernetes CronJob manifest
EOF
cat << 'EOF' > app/k8s/ml-deployment.yaml
# ML Service Deployment manifest
EOF
cat << 'EOF' > app/k8s/monitoring-stack.yaml
# Monitoring stack manifests
EOF
cat << 'EOF' > monitoring/prometheus.yml
# Prometheus scrape configuration
EOF
cat << 'EOF' > monitoring/grafana/dashboards.json
[]
EOF
cat << 'EOF' > monitoring/elk/elasticsearch.yml
# Elasticsearch configuration
EOF
cat << 'EOF' > monitoring/elk/logstash.conf
# Logstash pipeline configuration
EOF
cat << 'EOF' > monitoring/elk/kibana.yml
# Kibana configuration
EOF
cat << 'EOF' > security/sshd_config
# SSH daemon hardening configuration
EOF
cat << 'EOF' > security/ufw_rules.sh
#!/usr/bin/env bash
# UFW firewall rules script
EOF
cat << 'EOF' > security/users.yml
# Ansible user management
EOF
cat << 'EOF' > README.md
# Project Overview

This repository contains infrastructure and application code for a Data-Science-AI platform.
EOF

# Make scripts executable where necessary
chmod +x app/etl/extract.sh app/etl/load.sh security/ufw_rules.sh

# Done
 echo "Project structure initialized."

