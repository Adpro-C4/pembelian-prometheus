# Use the official Prometheus image as base image
FROM prom/prometheus:v2.44.0

# Copy the Prometheus configuration file
COPY ./prometheus/prometheus.yml /etc/prometheus/prometheus.yml

# Expose the Prometheus port
EXPOSE 9090

# Setelah ini, Anda dapat menambahkan instruksi CMD atau ENTRYPOINT,
# bergantung pada apa yang ingin Anda lakukan ketika container dijalankan.
# Misalnya, jika Anda hanya ingin menjalankan Prometheus:
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]

# Jika Anda ingin melakukan sesuatu yang berbeda, sesuaikan dengan kebutuhan Anda.
