#!/bin/bash

#
# run me once to install the Termux:Boot startup script

# 1) ensure the boot folder exists
mkdir -p ~/.termux/boot

# 2) write your startup script
cat > ~/.termux/boot/start.sh <<'EOF'
#!/data/data/com.termux/files/usr/bin/sh

# wait for 5 seconds for the system to settle
sleep 5

# go to your project folder
cd ~/naistro-player-box

# clear the screen (optional)
clear

# launch your zipapp
python3 naistro-player-box.pyz
EOF

# 3) make it executable
chmod +x ~/.termux/boot/start.sh

echo "✅ Termux:Boot start.sh installed. It will run once on next boot."