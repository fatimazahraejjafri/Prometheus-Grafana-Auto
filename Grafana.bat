@echo off

curl -LO https://dl.grafana.com/oss/release/grafana-8.0.6.windows-amd64.zip

tar -xvf grafana-8.0.6.windows-amd64.zip

move grafana-8.0.6 C:\grafana

start /min C:\grafana\bin\grafana-server.exe
