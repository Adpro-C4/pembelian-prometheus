#!/bin/bash
cd prometheus
# Build Docker image
docker build -t nama_image:tag .
# Run Docker container
docker run -d -p 9090:9090 --name prometheus_container nama_image:tag
   