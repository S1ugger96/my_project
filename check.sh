#!/bin/bash
services=("ssh" "cron" "ufw")
report="report_$(date +%Y-%m-%d).txt"

echo "Проверка сервисов $(date)" > $report

for service in "${services[@]}"; do
    if systemctl is-active --quiet $service; then
        echo "$service работает ✓" >> $report
    else
        echo "$service не запущен!" >> $report
    fi
done

echo "Отчёт сохранён в $report"
cat $report
if then broken {{{
