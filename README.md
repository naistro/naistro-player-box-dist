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

1. Install **Termux**  
2. Install **Termux:Boot**  
3. Install and grant permissions to **AirDroid Business** 
4. Grant permissions to **Termux** and **Termux:Boot** as well from the android settings page

---

## Installation Instructions

1. To remote access the Android box and configure it from your PC, you need **AirDroid Business** installed and permissions granted.  
2. Launch **Remote Control** from AirDroid Business on the respective device.  
3. Open **Termux** application.  
4. Run the following commands in sequence (when prompted choose the default):  

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

## Client Authorization Setup

*(Update the shared template with the `auth.yaml` to have the username and password for the client)*  

1. While still in Termux, run this command:  
```bash
nano config/auth.yaml
```  

2. Paste the content with the appropriate client credential updated.  
3. Hit `CTRL + X`, then `Y`, and then `Enter` to save.  
4. Repeat the above for `config.yaml`, but for `config.yaml` you don't need to update anything on the template.  

---

## Important Note

### Device Time Configuration

Ensure your device's time is correctly set to match your physical location.  
Incorrect time settings may cause issues with the application functionality.


## Restart Device
Restart the device and it should boot and automatically run the the naistro application after about 10-20 seconds
