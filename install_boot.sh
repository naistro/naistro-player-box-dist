#!/bin/bash

# Install dependencies
pkg update -y && pkg install -y python mpv termux-boot termux-api

# Create boot script
mkdir -p ~/.termux/boot
cat > ~/.termux/boot/start_naistro.sh << 'EOF'
#!/bin/bash
am start -n com.termux/com.termux.app.TermuxActivity
termux-wake-lock
sleep 5
cd ~/naistro-player-box-dist
clear
python3 dist/naistro-player-box.pyz
EOF

# Set permissions
chmod +x ~/.termux/boot/start_naistro.sh
termux-setup-storage

echo "Setup complete! Reboot to test."