#!/bin/bash

echo "================================"
echo " Running Health Monitor Tests"
echo "================================"

REPORT="reports/health_report.txt"

# Test 1: Check whether report exists
if [ -f "$REPORT" ]; then
    echo "PASS: Health report exists"
else
    echo "FAIL: Health report does not exist"
    exit 1
fi

# Test 2: Check disk information
if grep -q "DISK USAGE" "$REPORT"; then
    echo "PASS: Disk information exists"
else
    echo "FAIL: Disk information missing"
    exit 1
fi

# Test 3: Check memory information
if grep -q "MEMORY USAGE" "$REPORT"; then
    echo "PASS: Memory information exists"
else
    echo "FAIL: Memory information missing"
    exit 1
fi

# Test 4: Check CPU information
if grep -q "CPU LOAD" "$REPORT"; then
    echo "PASS: CPU information exists"
else
    echo "FAIL: CPU information missing"
    exit 1
fi

echo "================================"
echo " ALL TESTS PASSED"
echo "================================"

exit 0
