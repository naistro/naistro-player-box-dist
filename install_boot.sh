#!/bin/bash

# Create boot script
mkdir -p ~/.termux/boot
cat > ~/.termux/boot/start_naistro.sh << 'EOF'
#!/bin/bash

# Wait for internet connection (max 60 seconds)
timeout=60
while [ $timeout -gt 0 ]; do
    if ping -c 1 -W 1 8.8.8.8 >/dev/null 2>&1; then
        break
    fi
    sleep 1
    timeout=$((timeout - 1))
done

am start -n com.termux/com.termux.app.TermuxActivity
termux-wake-lock
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

cd ~/naistro-player-box-dist
clear
python dist/naistro-player-box.pyz
EOF

# Set permissions
chmod +x ~/.bashrc

echo "Setup complete! Reboot to test."