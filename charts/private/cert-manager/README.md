# cert-manager

This guide provides a quick reference for manually deploying the `ClusterIssuer` and `Ingress` resources.

## Prerequisites

Before you begin, ensure you have the following:

* **cert-manager** installed in your cluster.

* An **Ingress Controller** (e.g., NGINX Ingress Controller) installed and configured.

* The **DNS records** for your domain (`your.domain.com`) pointing to your Ingress Controller's IP address.

* Your `clusterissuer.yaml` and `ingress.yaml` files are ready.

## Step 1: Apply the ClusterIssuer

Use the following command to create your `ClusterIssuer` resource, which will register an account with Let's Encrypt.

```bash
$ kubectl apply -f clusterissuer.yaml
```

**Verification:**
To check if the `ClusterIssuer` is ready, run this command. The `READY` status should eventually show `True`.

```bash
$ kubectl get clusterissuer lets-encrypt-prod -o wide
```

## Step 2: Apply the Ingress Resource

Once the `ClusterIssuer` is ready, apply your `Ingress` resource. cert-manager will automatically detect the annotation and begin the process of issuing a TLS certificate for your domain.

```bash
$ kubectl apply -f ingress.yaml
```

**Verification:**
Check the status of the automatically created `Certificate` and the resulting `Secret` with these commands. The `READY` status should become `True` once the certificate is issued.

## Check the status of the Certificate resource.

```bash
$ kubectl get certificate -n your-app-namespace
```

## Check the status of the Certificate resource.

```bash
$ kubectl get secret your-app-tls-secret -n your-app-namespace
```