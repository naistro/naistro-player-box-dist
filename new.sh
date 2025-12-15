#!/bin/bash
# Wait for internet
timeout=300
while [ $timeout -gt 0 ]; do
    if ping -c 1 -W 1 8.8.8.8 >/dev/null 2>&1; then
        break
    fi
    sleep 1
    timeout=$((timeout - 1))
done

sleep 20

# Schedule job for 15 seconds later (35 total from boot)
cmd jobscheduler schedule \
  -s $(($(date +%s%3N) + 15000)) \
  -p com.termux \
  -c com.termux.app.TermuxActivity \
  --persisted true