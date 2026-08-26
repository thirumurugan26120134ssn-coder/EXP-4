#!/bin/bash

REPORT="reports/health_report.txt"

echo "===== SYSTEM HEALTH REPORT =====" > "$REPORT"

echo "" >> "$REPORT"

echo "Date: $(date)" >> "$REPORT"

echo "" >> "$REPORT"

echo "===== DISK USAGE =====" >> "$REPORT"
df -h >> "$REPORT"

echo "" >> "$REPORT"

echo "===== MEMORY USAGE =====" >> "$REPORT"
free -h >> "$REPORT"

echo "" >> "$REPORT"

echo "===== CPU LOAD =====" >> "$REPORT"
uptime >> "$REPORT"

echo "Report generated successfully."
