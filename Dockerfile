FROM prom/blackbox-exporter:v0.25.0

LABEL org.opencontainers.image.source="https://github.com/xruins/cloudrun-blackbox-exporter"

COPY config.yaml /etc/blackbox_exporter/config.yaml

CMD ["--config.file=/etc/blackbox_exporter/config.yaml", "--web.listen-address=:8080"]
