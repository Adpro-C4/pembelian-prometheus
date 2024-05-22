# Use the official Prometheus image as base image
FROM prom/prometheus:v2.44.0

# Copy the Prometheus configuration file
COPY ./prometheus/prometheus.yml /etc/prometheus/prometheus.yml

# Expose the Prometheus port (optional, the actual port will be provided by Railway)
EXPOSE 9090

# Set the entrypoint to ensure Prometheus always runs with the specified config
ENTRYPOINT [ "sh", "-c", "prometheus \
    --config.file=/etc/prometheus/prometheus.yml \
    --storage.tsdb.path=/prometheus \
    --storage.tsdb.retention=365d \
    --web.console.libraries=/usr/share/prometheus/console_libraries \
    --web.console.templates=/usr/share/prometheus/consoles \
    --web.external-url=http://0.0.0.0:9090 \
    --log.level=info \
    --log.format=logger:stderr" ]

