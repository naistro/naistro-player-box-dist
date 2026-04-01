#!/bin/bash

# Create boot script
mkdir -p ~/.termux/boot
cat > ~/.termux/boot/start_naistro.sh << 'EOF'
#!/bin/bash

# Wait for internet connection (wait FOREVER)
while true; do
    if curl -s --max-time 2 https://clients3.google.com/generate_204 >/dev/null; then
        break
    fi
    sleep 1
done

sleep 20
am start -n com.termux/com.termux.app.TermuxActivity
termux-wake-lock
EOF

# Set permissions
chmod +x ~/.termux/boot/start_naistro.sh

cat > ~/.bashrc << 'EOF'
#!/bin/bash

# Wait for internet connection (wait FOREVER)
while true; do
    if curl -s --max-time 2 https://clients3.google.com/generate_204 >/dev/null; then
        break
    fi
    sleep 1
done

sleep 10
cd ~/naistro-player-box-dist
clear
python dist/naistro-player-box3.13.pyz
EOF

# Set permissions
chmod +x ~/.bashrc

echo "Setup complete! Reboot to test."
