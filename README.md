# Homelab
Documentation of my Home Lab Setup

# Home Lab Setup Documentation

## Introduction
Welcome to the documentation for my home lab setup. This repository contains detailed information about the hardware, software, and network configuration used in my home lab. This setup is designed to provide a robust environment for learning, experimentation, development, and be as close to enterprise level as possible. I have stuck to a naming convention based on *Dune* by Frank Herbert.

[[_TOC_]]

## Hardware Setup

### Servers

#### Server 1: Proxmox node 1 (Arrakis)
- **Specifications**:
  - **Motherboard**: 12 x AMD Ryzen 5 5600 6-Core Processor CPU
  - **GPU**: Sapphire Radeon HD6770
  - **RAM**: 2x 16GB - 3200Mhz - CL16 - 1.35v G.SKILL Trident Z RGB 32GB DDR4
  - **Cooling**: 4x 80mm chassis fans
  - **Storage**: Crucial BX500 240GB 2.5" Internal SSD
- **Role**: This server will act as the main node for the Proxmox cluster

#### Server 2: Proxmox node 2 (Caladan)
- **Specifications**:
  - **Motherboard**: 4 x Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz
  - **GPU**: Integrated
  - **RAM**: 2x 4GB - 1100Mhz 8 GB DDR3
  - **Cooling**: CPU cooler
  - **Storage**: Crucial BX500 240GB 2.5" Internal SSD
- **Role**: This server will act as an auxiliary node for the Proxmox cluster

### Network Devices
- **Router**:
  - **Model**: pfSense (Virtualized)
  - **Configuration**: [Details]
- **Switch**:
  - **Model**: TP Link tl-sg1016de
- **NAS**: [Model and Configuration]

## Network Configuration

### IP Addressing
- **Schema**:
  - **Management Network (10.0.0.0/24)**: For Proxmox hosts, iDRAC/IPMI, switches, etc. (**254** usable addresses)
  - **Network (10.0.9.0/24)**: For smart home devices (**254** usable addresses)
  - **Storage Network (10.0.1.0/24)**: Dedicated to Ceph and other storage traffic (**254** usable addresses)
  - **Home Automation Network (10.0.10.0/24)**: Dedicated to home automation services (**254** usable addresses)
  - **VM Network (10.0.2.0/23)**: For general VM usage (**510** usable addresses)
  - **Client Network (192.168.0.0/23)**: For personal devices (computers, phones, etc.) (**510** usable addresses)
  - **Container/Kubernetes Network (10.0.3.0/22)**: Larger subnet for container networking (**1022** usable addresses)
  - **Guest Network (192.168.2.0/24)**: Isolated network for guests (**254** usable addresses)
  - **DMZ (10.0.8.0/24)**: For publicly accessible services (**254** usable addresses)
  - **VPN Network (172.0.0.0/24)**: For VPN clients (**254**usable addresses)

- **Static vs. Dynamic**: [Details]

### DNS and DHCP
- **DNS Server**: [Configuration]
- **DHCP Server**: [Configuration]

### Network Diagram
!Network Diagram

## Software Installation

### Operating Systems
- **Client OS**: Windows 11

### Virtualization
- **Hypervisor**: Proxmox
- **Virtual Machines**: [Details]

## Security Measures

### Firewalls
- **Configuration**: [Details]
- **Rules**: [Details]

### Access Control
- **User Accounts**: [Details]
- **Authentication**: [Details]

## Monitoring and Maintenance

### Monitoring Tools
- **Software**: [Details]
- **Alerts**: [Details]

### Regular Maintenance
- **Updates**: [Details]
- **Backups**: [Details]

## Conclusion
This documentation provides a comprehensive overview of my home lab setup. It serves as a reference for the configuration and management of the lab environment. Feel free to explore the repository and reach out if you have any questions.
