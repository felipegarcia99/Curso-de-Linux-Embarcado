#!/bin/sh

echo "Montando procfs"
mount -t proc /proc /proc

echo "Montando sysfs"
mount -t sysfs sysfs /sys

echo "Iniciando os loggers do sistema"
# syslogd
klogd

# echo "Configurando a interface loopback"
# ifconfig lo 127.0.0.1