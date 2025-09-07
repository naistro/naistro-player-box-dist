# Naistro Player Box

A distribution package for the **Naistro Player Box** system. This repository contains the necessary files and setup scripts to configure the media player environment.

---

## Prerequisites

Before proceeding, ensure your device meets the following requirements:

- Android device (for Termux installation)  
- Stable internet connection  
- Sufficient storage space  

---

## Initial Setup

### Install Required Applications

Download and install all necessary APKs from:  
[http://bit.ly/4mPKV2t](http://bit.ly/4mPKV2t)  

*(This includes Termux and other dependencies)*
1. Install termux
2. Install termux_boot
3. Install and grant permissions to airdroid business

---

## Installation Instructions

1. Open **Termux** application.
2. Run the following commands in sequence: (when prompted choose the default)

```bash
# Update and upgrade packages
pkg update
pkg upgrade

# Install required dependencies
pkg install python git mpv

# Clone this repository
git clone https://github.com/naistro/naistro-player-box-dist

# Navigate to the directory
cd naistro-player-box-dist

# Make setup script executable and run it
chmod +x setup.sh
./setup.sh

# Make boot installation script executable and run it
chmod +x install_boot.sh
./install_boot.sh
```

---

## Important Note

### Device Time Configuration

Ensure your device's time is correctly set to match your physical location.  
Incorrect time settings may cause issues with the application functionality.
