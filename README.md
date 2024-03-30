[![k3s](https://img.shields.io/badge/k3s-orange?style=for-the-badge&logo=k3s)](https://k3s.io/)
[![flux](https://img.shields.io/badge/GitOps-Flux-blue?style=for-the-badge&logo=git)](https://fluxcd.io/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot)](https://github.com/renovatebot/renovate)

[![HitCount](https://hits.dwyl.com/qman-being/kubernetes-homelab.svg?style=for-the-badge&show=unique)](http://hits.dwyl.com/qman-being/kubernetes-homelab)

# Kubernetes Homelab

This repo contains all my config for my On-Prem and Oracle based k3s clusters. The clusters are backed by [Flux](https://fluxcd.io/) for GitOps and secrets are encrypted using [SOPS](https://github.com/mozilla/sops) with [Age](https://github.com/FiloSottile/age) encryption.



## 📂 Repository structure

The Git repository contains the following directories:

```sh
📁 ansible
📁 clusters
├─📁 on-prem-cluster
│ ├─📁 apps
│ ├─📁 core
│ └─📁 flux-system
├─📁 oracle cluster
│ ├─📁 apps
│ ├─📁 core
│ └─📁 flux-system
📁 pipelines
📁 terraform
```
## Getting started

### Ansible

The `site.yml` playbook will full configure a working k3s cluster within your environment. There are a few variables you will need to modify before hand such as the `inventory`

The `reset.yml` playbook will remove the k3s components from your machines

### Terraform 

I utilised Terraform with ESXI to build my k3s nodes. If you have standalone ESXI hosts like me you can make use of the Terraform modules to build your nodes replacing the relevant variables and such depending on the amount of hosts/nodes you have.

The following assumptions are made:

- You have an existing K8s cluster
- You have the Flux CLI installed (instructions [here](https://fluxcd.io/flux/get-started/))

### Flux

The quickest way to get up and running is to bootstrap your cluster with flux by doing the following:

```
flux bootstrap github \
  --owner=<repo owner name> \
  --repository=<repo name> \
  --branch=main \
  --path=./clusters/my-cluster \
  --personal
```
The above will bootstrap your cluster and synchronize it with the ./clusters/my-cluster path in the repo. You will notice in the repo that a new flux-system folder will appear. This is what Flux creates when it runs the bootstrap operation.

For simple setups you can place subfolders in the ./cluster/my-cluster path with your app manifests and Flux will automatically pick this up and deploy it to your cluster.

### SOPS

Visit the Mozilla SOPS [repo](https://github.com/mozilla/sops) to setup SOPS which you will use with Age encryption below

### Age

You can review the following [repo](https://github.com/FiloSottile/age) which will detail setting up Age encryption

## Configuring Flux with SOPS

Now that you have Flux, SOPS and Age setup we'll get into integrating this all together. First you will need to copy over your Age created key to your flux-system namespace:

```
cat age.agekey | kubectl create secret generic sops-age --namespace=flux-system --from-file=age.agekey=/dev/stdin
```

Once that's done you can edit the gotk-sync.yaml file in your ./clusters/my-cluster/flux-system/ repo path to look something like so:

```
apiVersion: source.toolkit.fluxcd.io/v1beta2
kind: GitRepository
metadata:
  name: flux-system
  namespace: flux-system
spec:
  interval: 1m0s
  ref:
    branch: main
  secretRef:
    name: flux-system
  url: ssh://git@github.com/myname/myrepo
---
apiVersion: kustomize.toolkit.fluxcd.io/v1beta2
kind: Kustomization
metadata:
  name: flux-system
  namespace: flux-system
spec:
  interval: 10m0s
  path: ./clusters/on-prem-cluster
  prune: true
  sourceRef:
    kind: GitRepository
    name: flux-system
  decryption:           ##
    provider: sops      ##  < -- add these 4 lines
    secretRef:          ##
      name: sops-age    ##
```
Once that change is made, Flux should reconcile these changes. You are now ready to encrypt secrets and add them into your repo and Flux will automatically decrypt them
