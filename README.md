# Home Security Lab

## Overview
I built a home cybersecurity lab by converting an old laptop into a Debian server and deploying a log monitoring pipeline using Docker.

The lab collects system logs, visualizes activity, and detects suspicious SSH login attempts.

---

## Architecture

[System Logs] → Promtail → Loki → Grafana

---

## Technologies Used
- Debian 12 (headless server)
- Docker & Docker Compose
- Grafana
- Loki
- Promtail
- systemd journal

---

## Features
- SSH log monitoring
- Detection of failed login attempts
- Identification of attacking IP addresses
- Visualization of authentication activity

---

## Future Features
- Analysis of Brute force SSH login attempts
- integration of Suricata

## Setup

### 1. Install Docker
```bash
sudo apt install docker.io docker-compose
