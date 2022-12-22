[![k3s](https://img.shields.io/badge/k8s-v1.25.4+k3s1-orange?style=for-the-badge&logo=kubernetes)](https://k3s.io/)
[![flux](https://img.shields.io/badge/GitOps-Flux-blue?style=for-the-badge&logo=git)](https://fluxcd.io/)

![visitors](https://visitor-badge.glitch.me/badge?page_id=qman-being.kubernetes-homelab&left_color=green&right_color=blue)

# Kubernetes Homelab

This repo contains all my config for my On-Prem and Oracle based k3s clusters. The clusters are backed by [Flux](https://fluxcd.io/) for GitOps and secrets are encrypted with [SOPS](https://github.com/mozilla/sops) with [Age](https://github.com/FiloSottile/age) encryption.



## 📂 Repository structure

The Git repository contains the following directories:

```sh
📁 clusters
├─📁 on-prem-cluster
│  ├─📁 apps          
│  └─📁 flux-system
├─📁 oracle cluster
   ├─📁 apps     
   └─📁 flux-system
```
