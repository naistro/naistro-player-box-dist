#!/bin/bash

#
# run me once to install the Termux:Boot startup script

# 1) ensure the boot folder exists
mkdir -p ~/.termux/boot

# 2) write your startup script
cat > ~/.termux/boot/start.sh <<'EOF'
#!/bin/bash

# wait for 5 seconds for the system to settle
sleep 10

# go to your project folder
cd ~/naistro-player-box-dist

# clear the screen (optional)
clear

# launch your zipapp
python3 dist/naistro-player-box.pyz
EOF

# 3) make it executable
chmod +x ~/.termux/boot/start.sh

echo "✅ Termux:Boot start.sh installed. It will run once on next boot."