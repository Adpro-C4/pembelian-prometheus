# Use the official Prometheus image
FROM prom/prometheus:v2.44.0

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose the Prometheus port
EXPOSE 9090

# You don't need to specify a network driver in Dockerfile, it will use the default bridge network
