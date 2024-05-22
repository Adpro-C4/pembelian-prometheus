# Use the official Prometheus image as base image
FROM prom/prometheus:v2.44.0

# Copy the Prometheus configuration file
COPY ./prometheus/prometheus.yml /etc/prometheus/prometheus.yml

# Expose the Prometheus port
EXPOSE 9090

# Setelah ini, Anda dapat menambahkan instruksi CMD atau ENTRYPOINT,
# bergantung pada apa yang ingin Anda lakukan ketika container dijalankan.
# Misalnya, jika Anda hanya ingin menjalankan Prometheus:
ENTRYPOINT [ "prometheus", \
    "--config.file=/etc/prometheus/prometheus.yml", \
    "--storage.tsdb.path=/prometheus", \
    "--storage.tsdb.retention=365d", \
    "--web.console.libraries=/usr/share/prometheus/console_libraries", \
    "--web.console.templates=/usr/share/prometheus/consoles", \
    "--web.external-url=http://localhost:9090", \
    "--log.level=info", \
    "--log.format=logger:stderr" ] 

# Jika Anda ingin melakukan sesuatu yang berbeda, sesuaikan dengan kebutuhan Anda.
