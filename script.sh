#!/bin/bash

# Create main directories
mkdir -p backend/{services,shared,gateway,tests,scripts,docs}

# Create service directories and their subdirectories
for service in auth products orders inventory; do
    mkdir -p backend/services/$service/{api/v1,core,models,schemas,tests}
    touch backend/services/$service/main.py
done

# Create shared directories
mkdir -p backend/shared/{config,middleware,utils,database}

# Create gateway directories
mkdir -p backend/gateway/{routes,middleware}
touch backend/gateway/main.py

# Create test directories
mkdir -p backend/tests/{integration,e2e}

# Create docker-compose file
touch backend/docker-compose.yml

# Create database management files
touch backend/shared/database/{database.py,models.py,config.py}

