FROM prom/blackbox-exporter:v0.25.0

LABEL org.opencontainers.image.source="https://github.com/xruins/cloudrun-blackbox-exporter"

COPY config.yaml /etc/blackbox_exporter/config.yaml

ENTRYPOINT sh
CMD ["-c", "blackbox_exporter", "--web.listen-address=:8080", "--config.file=/etc/blackbox_exporter/config.yaml"]
