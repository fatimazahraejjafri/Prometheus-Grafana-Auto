@echo off

curl -LO https://github.com/prometheus/prometheus/releases/download/v2.34.0/prometheus-2.34.0.windows-amd64.zip

tar -xvf prometheus-2.34.0.windows-amd64.zip

move prometheus-2.34.0.windows-amd64 C:\prometheus

echo. >> C:\prometheus\prometheus.yml
echo global: >> C:\prometheus\prometheus.yml
echo   scrape_interval: 15s >> C:\prometheus\prometheus.yml
echo scrape_configs: >> C:\prometheus\prometheus.yml
echo   - job_name: 'node' >> C:\prometheus\prometheus.yml
echo     static_configs: >> C:\prometheus\prometheus.yml
echo       - targets: ['localhost:9100'] >> C:\prometheus\prometheus.yml

start /min C:\prometheus\prometheus.exe
