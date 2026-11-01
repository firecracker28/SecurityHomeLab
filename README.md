# Home Security Lab

## Overview
I built a home cybersecurity lab by converting an old laptop into a Debian server and deploying a log monitoring pipeline using Docker.

The lab collects system logs, visualizes activity, and detects suspicious SSH login attempts.

---

## Architecture

[System Logs] → Victoria Logs → Vector → Grafana

### Rational for Architecture
The architecture for this log monitoring pipeline had to be lightweight due to resources constraints of the machine I am running the server on. I choose Victoria Logs and Vector because they are both lightweight and are made to be integrated with one another. I used Grafana because it makes it easy to set up and visualize the logs. I deployed everything with Docker to avoid single points of failure and so that the project is easily reproducible.

---

## Technologies Used
- Debian 12 (headless server)
- Docker & Docker Compose
- Grafana
- Vector
- Victoria Logs
- systemd journal
- Falco

---

## Features
- Logging and visualization for ssh logs and falco alert logs
- Simple docker container for investigating

---

## Current Investigation
- What are containers and how do they really work. See containers folder for report

