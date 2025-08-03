#!/bin/bash

#
# run me once to install the Termux:Boot startup script

# 1) ensure the boot folder exists
mkdir -p ~/.termux/boot

# 2) write your startup script
cat > ~/.termux/boot/start.sh <<'EOF'
#!/bin/bash

# Give Android time to finish booting
sleep 5

# Keep the device awake while we start up
termux-wake-lock

# Define your workdir and command
APP_DIR="~/naistro-player-box-dist"
CMD="cd \"$APP_DIR\" && python3 dist/naistro-player-box.pyz"

# Launch Termux UI and tell it to run your CMD, then exit the session when done
am start -n com.termux/com.termux.app.TermuxActivity \
   -e com.termux.RUN_COMMAND "$CMD" \
   --ez com.termux.RUN_COMMAND_EXIT true
EOF

# 3) make it executable
chmod +x ~/.termux/boot/start.sh

echo "✅ Termux:Boot start.sh installed. It will run once on next boot."