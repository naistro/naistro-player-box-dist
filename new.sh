#!/bin/bash
# ~/.termux/boot/start_naistro.sh

# Wait for internet
for i in {1..300}; do ping -c1 8.8.8.8 && break; sleep 1; done

# Wait additional time
sleep 20

# Keep trying to launch every 5 seconds for 30 seconds
for i in {1..6}; do
    am start -n com.termux/com.termux.app.TermuxActivity 2>/dev/null && break
    sleep 5
done