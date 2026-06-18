#!/bin/bash

echo "=== Darwin Failed SSH Login Detector ==="
echo ""

LOG_FILE="linux_auth.log"

FAILED=$(grep -c "Failed password" "$LOG_FILE")

echo "Failed SSH Login Attempts: $FAILED"
echo ""

if [ "$FAILED" -ge 3 ]; then
    echo "[HIGH ALERT] Possible SSH brute-force attack detected!"
else
    echo "[OK] SSH login activity appears normal."
fi

echo ""
echo "=== Failed Login Events ==="

grep "Failed password" "$LOG_FILE"

echo ""
echo "=== Source IP Addresses ==="

grep "Failed password" "$LOG_FILE" | awk '{print $(NF-3)}' | sort | uniq -c