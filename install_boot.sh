#!/bin/bash

# Create boot script
mkdir -p ~/.termux/boot
cat > ~/.termux/boot/start_naistro.sh << 'EOF'
#!/bin/bash
am start -n com.termux/com.termux.app.TermuxActivity
termux-wake-lock
EOF

# Set permissions
chmod +x ~/.termux/boot/start_naistro.sh

cat > ~/.bashrc << 'EOF'
#!/bin/bash
sleep 2
cd ~/naistro-player-box-dist
clear
python3 dist/naistro-player-box.pyz
EOF

echo "Setup complete! Reboot to test."