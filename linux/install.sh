#!/bin/bash

# Extract the clash-linux-amd64-v1.18.0.gz file
tar -xzf clash.gz

# Move the extracted files to /opt/clash
mkdir -p /opt/clash

# Move the clash-linux-amd64 file to /opt/clash
mv clash /opt/clash

# mkdir in .config named clash
mkdir -p ~/.config/clash

# Move the clash-rule.yaml file to ~/.config/clash
mv clash-rule.yaml ~/.config/clash

# create a service file for clash
cat > ~/.config/systemd/user/clash.service <<EOF
[Unit]
Description=Clash Service
After=network.target

[Service]
ExecStart=/opt/clash/clash -f ~/.config/clash/clash-rule.yaml
Restart=on-failure

[Install]
WantedBy=default.target
EOF
