#!/bin/bash

# Create boot script
mkdir -p ~/.termux/boot
cat > ~/.termux/boot/start_naistro.sh << 'EOF'
#!/bin/bash

for i in {1..300}; do ping -c1 8.8.8.8 && break; sleep 1; done

# Wait additional time
sleep 20

# Keep trying to launch every 5 seconds for 30 seconds
for i in {1..6}; do
    am start -n com.termux/com.termux.app.TermuxActivity 2>/dev/null && break
    sleep 5
done
EOF

# Set permissions
chmod +x ~/.termux/boot/start_naistro.sh

cat > ~/.bashrc << 'EOF'
#!/bin/bash

# Wait for internet connection (max 30 seconds)
timeout=30
while [ $timeout -gt 0 ]; do
    if ping -c 1 -W 1 8.8.8.8 >/dev/null 2>&1; then
        break
    fi
    sleep 1
    timeout=$((timeout - 1))
done

sleep 10
cd ~/naistro-player-box-dist
clear
python dist/naistro-player-box.pyz
EOF

# Set permissions
chmod +x ~/.bashrc

echo "Setup complete! Reboot to test."