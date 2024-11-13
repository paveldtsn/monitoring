#!/bin/bash
#Install prometheus
groupadd --system prometheus
useradd -s /sbin/nologin --system -g prometheus prometheus
mkdir /etc/prometheus
mkdir /var/lib/prometheus
cd /tmp
wget https://github.com/prometheus/prometheus/releases/download/v2.55.0-rc.1/prometheus-2.55.0-rc.1.linux-amd64.tar.gz
tar -zxvf prometheus-2.55.0-rc.1.linux-amd64.tar.gz
cd rometheus-2.55.0-rc.1.linux-amd64
mv prometheus /usr/local/bin
mv promtool /usr/local/bin
mv consoles /etc/prometheus
mv console_libraries /etc/prometheus
