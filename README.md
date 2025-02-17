# BattleBit Remastered Server Setup Guide

Welcome to the BattleBit Remastered Server Setup Guide. This guide provides step-by-step instructions on how to set up and update your game server using SteamCMD.

## Table of Contents
- [Requirements](#requirements)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contact](#contact)

---

## Requirements

Before you begin, ensure you have the following prerequisites:

- Python 3
- Windows 10/11
   - Window Server 2016/2019/2022
- A Steam account with ownership of the full BattleBit Remastered game
- Download the latest **Release**

---

## Usage

Follow these steps to set up and update your server:

1. **Set Environment Variables**:

   Before proceeding, configure the required environment variables by editing the `.env` file provided. Update the values to match your setup. Here are the key variables to set:

   - `USERNAMER`: Your Steam username
   - `PASSWORD`: Your Steam password
   - `APPID`: Server App ID (e.g., `671860`)
   - `BETAPASSWORD`: Password for beta access (if applicable)
   - `BRANCH`: The Branch That the Script will install
   - `SERVER`: Installation path for the server files

   > **Note:** Use a second Steam account that owns the game for running the server.

2. **Run the Script**:

   Execute the script to automate the server download and update process. The script will create a `SteamCMD` folder, download and extract SteamCMD, and initiate the update using the provided environment variables.

3. **Launch the Server**:

   Once the download and update are complete, use the appropriate batch file to start the server:
   - `server+api.bat`: Run the server with the API enabled.
   - `server+noapi.bat`: Run the server without the API.

   Ensure you've correctly configured the server-related variables in the `.env` file before running the script.

---

## Configuration

Adjust the server configuration to your preferences by editing the `.env` file:

- `SERVER_PATH`: Path to your server executable **[DONT USE THE EAC EXE]**
- `SERVER_NAME`: Name for your server
- `SERVER_PORT`: Port number for the server
- `SERVER_HZ`: Server tick rate (Hz)
- `SERVER_ANTICHEAT`: Anti-cheat system to use
- `SERVER_MAX_PING`: Maximum allowed player ping
- `SERVER_VOXEL_MODE`: Enable voxel mode (true/false)
- `SERVER_API_ENDPOINT`: API endpoint for the server
- `SERVER_FIXED_SIZE`: Server size
- `SERVER_FIRST_GAMEMODE`: Initial game mode
- `SERVER_FIRST_MAP`: Initial map

---

## Docker container Usage

To build:
``` bash
docker build -t test-windows:latest .
```


To run:

``` bash
docker run -e USERNAMER="username" `
-e PASSWORD="TestPassword" `
-e APPID="671860" `
-e BETAPASSWORD="Passwd" `
-e BRANCH="Beta" `
-e SERVER="c:\BBR\server" `
-e SERVER_PATH="c:\BBR\server\BattleBit.exe" `
-e SERVER_NAME="This is a Name" `
-e SERVER_PORT=80 `
-e SERVER_HZ=120 `
-e SERVER_ANTICHEAT=EAC `
-e SERVER_MAX_PING=500 `
-e SERVER_VOXEL_MODE=false `
-e SERVER_API_ENDPOINT=192.168.0.50:29294 `
-e SERVER_FIXED_SIZE=tiny `
-e SERVER_FIRST_GAMEMODE=TDM `
-e SERVER_FIRST_MAP=Azagor `
test-windows:latest
```

## Contact

If you encounter any issues during the setup process, please reach out to `jellisy` on the [Support Discord](https://discord.gg/vAP7Ru5EQb). They are available to assist and address any concerns.
