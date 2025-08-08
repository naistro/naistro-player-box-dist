#!/bin/bash

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

echo "Setup complete! Reboot to test."